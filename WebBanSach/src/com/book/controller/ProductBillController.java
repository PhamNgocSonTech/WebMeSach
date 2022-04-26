package com.book.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.dao.CartItemDao;
import com.book.model.CartItem;
import com.book.model.User;
import com.book.service.CartItemService;
import com.book.service.impl.CartServiceItemImpl;

/**
 * Servlet implementation class ProductBillController
 */
@WebServlet("/member/bill")
public class ProductBillController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CartItemService cartItemDao = new CartServiceItemImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductBillController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		User user = (User) request.getSession().getAttribute("account");
		
		List<CartItem> cartItems = cartItemDao.getUserBill(user.getId());
		
		request.setAttribute("cartItems", cartItems);
		
		request.getRequestDispatcher("/view/client/view/product-bill.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
