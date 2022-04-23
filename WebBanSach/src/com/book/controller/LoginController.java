package com.book.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.model.User;
import com.book.service.UserService;
import com.book.service.impl.UserServiceImpl;
import com.book.util.Constant;

@WebServlet(urlPatterns = "/login")
public class LoginController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// KIỂM TRA PHIÊN TRƯỚC ĐÓ CÓ ĐĂNG NHẬP CHƯA
		HttpSession session = req.getSession(false); // Trả về phiên hiện tại, nếu ko có phiên thì thôi
		if (session != null && session.getAttribute("account") != null) { // Nếu tồn tại phiên làm việc, chuyển đến /waiting
			resp.sendRedirect(req.getContextPath()+ "/waiting");
			return;
		}
		
		// NẾU CÓ TÍCH REMEMBER ME, DUYỆT COOKIE ĐỂ TIẾN HÀNH VÀO THẲNG TRANG WAITING
		Cookie[] cookies = req.getCookies(); // Lấy ra toàn bộ cookie 
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("username")) { // Nếu gặp cookie có tên usernam
					session = req.getSession(true); // Tạo phiên đăng nhập cho lần đăng nhập này
					session.setAttribute("username", cookie.getValue()); // Bởi vì có lưu cookie đăng nhập nên lấy đc giá trị cookie đó gắn cho cookie
					resp.sendRedirect(req.getContextPath()+ "/waiting"); // Chuyển đến waiting
					return;
				}
			}
		}

		req.getRequestDispatcher("view/client/view/login.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		    String username = req.getParameter("username");
	        
	        String password = req.getParameter("password");
	        
	        boolean isRememberMe = false;
	        String remember = req.getParameter("remember");
	        
	        if("on".equals(remember)){
	            isRememberMe = true;
	        }
	        String alertMsg="";
	      
	        UserService service = new UserServiceImpl();
	        
	        User user = service.login(username, password);
	        
	        
	        if(user!=null){ // Nếu đăng nhập thành công
	            HttpSession session = req.getSession(true); // Khởi tạo session cho lần đăng nhập này 
	            session.setAttribute("account", user); // Gán giá trị user vào phiên hiện tại

	            if(isRememberMe){
	                saveRemeberMe(resp, username);
	            }
	           
	            resp.sendRedirect(req.getContextPath()+"/waiting");

	        }else{
	            alertMsg = "Tên đăng nhập hoặc mật khẩu không hợp lệ !!";
	            req.setAttribute("alert", alertMsg);
	            req.getRequestDispatcher("/view/client/view/login.jsp").forward(req, resp);
	        }
	    }
	    
	    private void saveRemeberMe(HttpServletResponse response, String username){
	        Cookie cookie = new Cookie(Constant.COOKIE_REMEMBER, username); // Khởi tạo cookie có tên username, giá trị là tài khoản đăng nhập
	        cookie.setMaxAge(30*60);
	        response.addCookie(cookie);
	    }
	}


