
package com.book.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.dao.impl.UserDaoImpl;
import com.book.model.GooglePojo;
import com.book.model.User;
import com.book.util.Constant;
import com.book.util.GoogleUtils;

/**
 * Servlet implementation class LoginGoogleController
 */
@WebServlet("/login-google")
public class LoginGoogleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginGoogleController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("account") != null) {
			response.sendRedirect(request.getContextPath()+ "/waiting");
			return;
		}
		// Check cookie
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("username")) {
					session = request.getSession(true);
					session.setAttribute("username", cookie.getValue());
					response.sendRedirect(request.getContextPath()+ "/waiting");
					return;
				}
			}
		}
		String code = request.getParameter("code");
		if (code == null || code.isEmpty()) {
			RequestDispatcher dis = request.getServletContext().getRequestDispatcher("view/client/view/login.jsp");
			dis.forward(request, response);
			return;
		} else {
			
			String accessToken = GoogleUtils.getToken(code);
			GooglePojo googlePojo = GoogleUtils.getUserInfo(accessToken);
			UserDaoImpl userdao = new UserDaoImpl();
			User user = userdao.getEmail(googlePojo.getEmail());
			if(user == null) {
				 user = new User();
				 user.setName(userName(googlePojo.getEmail()));
				 user.setUsername(googlePojo.getEmail());
				 user.setEmail(googlePojo.getEmail());
				 user.setPassword("12456");
				 user.setAddress(googlePojo.getLink()); 
				 user.setRoleId(2);
				 UserDaoImpl userDaoImpl = new UserDaoImpl();
				 userDaoImpl.insert(user);
			}
			boolean isRememberMe = true;
			if(user!=null){
	            session = request.getSession(true);
	            session.setAttribute("account", user);

	            if(isRememberMe){
	                saveRemeberMe(response, user.getEmail());
	            }
	           
	            response.sendRedirect(request.getContextPath()+"/waiting");

	        }
			 
			 

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	private void saveRemeberMe(HttpServletResponse response, String username){
        Cookie cookie = new Cookie(Constant.COOKIE_REMEMBER, username);
        cookie.setMaxAge(30*60);
        response.addCookie(cookie);
    }
	private String userName(String Email) {
			int index = Email.indexOf("@");
			String userName = Email.substring(0, index);
		return userName;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
