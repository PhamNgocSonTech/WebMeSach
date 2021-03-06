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
			sm.sendMail(cart.getBuyer().getEmail(), "Mesach.com - C???m ??n b???n ???? ???ng h???", 
					"<!DOCTYPE html>\n"
			                + "<html lang=\"en\">\n"
			                + "\n"
			                + "<head>\n"
			                + "</head>\n"
			                + "\n"
			                + "<body>\n"
			                + "    <h2 style=\"color: blue;\">????n h??ng c???a b???n ??ang ???????c x??? l??</h2>\n"
			                + "    <h3 style=\"color: blue;\">Th??ng tin ????n h??ng c???a b???n</h3>\n"
			                + "<table style = \"border: 1px solid #ccc\">\r\n"
			                + "             <tr>\r\n"
			                + "               <th>T??n s??ch</th>\r\n"
			                + "               <th>S??? l?????ng</th>\r\n"
			                + "               <th>Gi?? ti???n</th>\r\n"
			                + "               <th>Th??nh ti???n</th>\r\n"
			                + "             </tr>\r\n" 
			                + getHTMLBookData(map)
			                + "</table> <br/>"
			                + "    <div>Qu?? t???ng b???n: M?? gi???m gi?? 30K khi thanh to??n h??a ????n t??? 200K: <b>UKSH23D13</b></div>\n"
			                + "    <div>C???m ??n b???n ???? tin t?????ng v?? l???a ch???n Mesach.com</div>\n"
			                + "    <div>?????a ch???: 120 V?? V??n T???n, TP.HCM</div>\n"
			                + "    <h3 style=\"color: blue;\">Ch??c b???n m???t ng??y m???i t???t l??nh ^^ </h3>\n"
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
        
        val += "<h4 style=\"color: red;\">T???ng c???ng: " + currencyVN.format(total) + " (???? thanh to??n)" + "</h4>\n";
        return val;
	}
}
