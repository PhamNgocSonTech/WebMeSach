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
import com.book.tools.SendMail;
import com.book.util.Constant;

@WebServlet(urlPatterns = "/register")
public class RegisterController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession(false);
		if (session != null && session.getAttribute("username") != null) {
			resp.sendRedirect(req.getContextPath() + "/admin");
			return;
		}
		// Check cookie
		Cookie[] cookies = req.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("username")) {
					session = req.getSession(true);
					session.setAttribute("username", cookie.getValue());
					resp.sendRedirect(req.getContextPath() + "/admin");
					return;
				}
			}
		}

		req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String name = req.getParameter("name");

		UserService service = new UserServiceImpl();
		String alertMsg = "";

		if (service.checkExistEmail(email)) {
			alertMsg = "Email đã tồn tại !";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
			return;
		} else if (service.checkExistUsername(username)) {
			alertMsg = "Tên người dùng đã tồn tại!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
			return;
		} else {
		
		User user = new User(email, username, password, "default-avt.png", 1, name, null);

		boolean isSuccess = service.register(user);

		if (isSuccess) {
			SendMail sm= new SendMail();
			sm.sendMail(email, "Mesach.com - Đăng ký tài khoản", "Tài khoản của bạn đã được đăng ký thành công, bạn có thể đăng nhập để sử dụng các tính năng của chúng tôi !!");
			alertMsg = "Đăng ký thành công, vui lòng đăng nhập lại";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher(Constant.Path.LOGIN).forward(req, resp);
		} else {
			alertMsg = "System error!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
		}
		}
	}

}
