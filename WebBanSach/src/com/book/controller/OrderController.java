package com.book.controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.sql.Date;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;
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
				cartItemService.insert(cartItem);
				
			}
			SendMail sm = new SendMail();
			sm.sendMail(cart.getBuyer().getEmail(), "Mesach.com - Cảm ơn bạn đã ủng hộ", 
					"<!DOCTYPE html>\n"
			                + "<html lang=\"en\">\n"
			                + "\n"
			                + "<head>\n"
			                + "</head>\n"
			                + "\n"
			                + "<body>\n"
			                + "    <h2 style=\"color: blue;\">Đơn hàng của bạn đang được xử lý</h2>\n"
			                + "    <h3 style=\"color: blue;\">Thông tin đơn hàng của bạn</h3>\n"
			                + "<table>\r\n"
			                + "             <tr>\r\n"
			                + "               <th>Tên sách</th>\r\n"
			                + "               <th>Số lượng</th>\r\n"
			                + "               <th>Giá tiền</th>\r\n"
			                + "               <th>Thành tiền</th>\r\n"
			                + "             </tr>\r\n" 
			                + getHTMLBookData(map)
			                + "</table> <br/>"
			                + "    <div>Quà tặng bạn: Mã giảm giá 30K khi thanh toán hóa đơn từ 200K: <b>UKSH23D13</b></div>\n"
			                + "    <div>Cảm ơn bạn đã tin tưởng và lựa chọn Mesach.com</div>\n"
			                + "    <div>Địa chỉ: 120 Võ Văn Tần, TP.HCM</div>\n"
			                + "    <h3 style=\"color: blue;\">Chúc bạn một ngày mới tốt lành ^^ </h3>\n"
			                + "\n"
			                + "</body>\n"
			                + "\n"
			                + "</html>");

		}
		session.removeAttribute("cart");
		resp.sendRedirect(req.getContextPath() + "/member/bill");

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
	public String getHTMLBookData(Map<Integer, CartItem> map) {
		Locale localeVN = new Locale("vi", "VN");
		NumberFormat currencyVN = NumberFormat.getCurrencyInstance(localeVN);
		double total = 0;
		String val = "";
        for (CartItem cartItem : map.values()) {
        	total += cartItem.getQuantity() * cartItem.getUnitPrice();
        val  += "<tr>\r\n"
             +  "<td>" + cartItem.getProduct().getName() +  "</td>\r\n"
	         +  "<td>" + cartItem.getQuantity() +  "</td>\r\n"
	         +  "<td>" + currencyVN.format(cartItem.getUnitPrice()) +  "</td>\r\n"
	         +  "<td>" + currencyVN.format(cartItem.getQuantity() * cartItem.getUnitPrice()) +  "</td>\r\n"
             +  "<tr>\r\n";
		}
        val += "<h4 style=\"color: red;\">Tổng cộng: " + currencyVN.format(total) + "</h4>\n";
        return val;
	}
}
