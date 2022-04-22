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

		HttpSession session = req.getSession(false);
		if (session != null && session.getAttribute("account") != null) {
			resp.sendRedirect(req.getContextPath()+ "/waiting1");
			return;
		}
		// Check cookie
		Cookie[] cookies = req.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("username")) {
					session = req.getSession(true);
					session.setAttribute("username", cookie.getValue());
					resp.sendRedirect(req.getContextPath()+ "/waiting");
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
	        
	        
	        if(user!=null){
	            HttpSession session = req.getSession(true);
	            session.setAttribute("account", user);

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
	        Cookie cookie = new Cookie(Constant.COOKIE_REMEMBER, username);
	        cookie.setMaxAge(30*60);
	        response.addCookie(cookie);
	    }
	}


