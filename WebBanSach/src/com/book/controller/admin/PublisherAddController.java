
package com.book.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.model.Publisher;
import com.book.service.PublisherService;
import com.book.service.impl.PublisherServiceImp;

/**
 * Servlet implementation class publisherAddController
 */
@WebServlet("/admin/publisher/add")
public class PublisherAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private PublisherService pls  = new PublisherServiceImp();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PublisherAddController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect(request.getContextPath()+"/view/admin/view/create-publisher.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		 Publisher publisher = new Publisher();
		String publisher_name = request.getParameter("publisher_name");
		if(publisher_name == null || publisher_name.isEmpty()) {
			request.setAttribute("error", "vui lòng nhập tên nhà xuất bản !!!");
			RequestDispatcher dis = request.getRequestDispatcher("/view/admin/view/create-publisher.jsp");
		dis.forward(request, response);
		return;
		}else {
			publisher.setPublisher_name(publisher_name);
			pls.insert(publisher);
			
		}
		
		response.sendRedirect(request.getContextPath()+"/admin/publisher/list");
		
	}

}