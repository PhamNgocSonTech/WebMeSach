package com.book.controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.sql.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.model.Cart;
import com.book.model.CartItem;
import com.book.model.User;
import com.book.service.CartItemService;
import com.book.service.CartService;
import com.book.service.UserService;
import com.book.service.impl.CartServiceImpl;
import com.book.service.impl.CartServiceItemImpl;
import com.book.service.impl.UserServiceImpl;
import com.book.tools.SendMail;
import com.book.util.RandomUUID;

@WebServlet(urlPatterns = "/member/order")
public class OrderController extends HttpServlet {
	UserService userService = new UserServiceImpl();
	CartService cartService = new CartServiceImpl();
	CartItemService cartItemService = new CartServiceItemImpl();
	long time = System.currentTimeMillis();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Object obj = session.getAttribute("account");
		User buyer = (User) obj;
		Cart cart = new Cart();
		cart.setBuyer(buyer);
		cart.setBuyDate(new java.sql.Date(time));
		cart.setId(RandomUUID.getRandomID());
		cartService.insert(cart);

		Object objCart = session.getAttribute("cart");
		if (objCart != null) {
			// ep ve dung kieu cua no khi them vao o phan them vao gio hang controller
			Map<Integer, CartItem> map = (Map<Integer, CartItem>) objCart;

			for (CartItem cartItem : map.values()) {
				cartItem.setCart(cart);
				cartItem.setId(RandomUUID.getRandomID());
				SendMail sm = new SendMail();
				sm.sendMail(cart.getBuyer().getEmail(), "Mesach.com - Cảm ơn bạn đã ủng hộ", 
						"<!DOCTYPE html>\n"
				                + "<html lang=\"en\">\n"
				                + "\n"
				                + "<head>\n"
				                + "</head>\n"
				                + "\n"
				                + "<body>\n"
				                + "    <h3 style=\"color: blue;\">Đơn hàng của bạn đang được xử lý</h3>\n"
				                + "    <div>Qùa tặng bạn: Mã giảm giá 30K khi thanh toán hóa đơn từ 200K: UKSH23D13</div>\n"
				                + "    <div>Cảm ơn bạn đã tin tưởng và lựa chọn Mesach.com</div>\n"
				                + "    <div>Địa chỉ: 120 Võ Văn Tần, TP.HCM</div>\n"
				                + "    <h3 style=\"color: blue;\">Chúc bạn một ngày mới tốt lành ^^ </h3>\n"
				                + "\n"
				                + "</body>\n"
				                + "\n"
				                + "</html>");

				cartItemService.insert(cartItem);
				
			}

		}
		session.removeAttribute("cart");
		resp.sendRedirect(req.getContextPath() + "/");

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
