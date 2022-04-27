package com.book.controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.dao.PublisherDao;
import com.book.dao.impl.PublisherDaoImp;
import com.book.model.Publisher;
import com.book.service.PublisherService;
import com.book.service.impl.PublisherServiceImp;

/**
 * Servlet implementation class PublisherListController
 */
@WebServlet("/admin/publisher/list")
public class PublisherListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PublisherService p = new PublisherServiceImp();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PublisherListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Publisher> listPublisher = p.getAll();
		request.setAttribute("listpublisher", listPublisher);
		RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/view/admin/view/list-publisher.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);  
		
	}

}