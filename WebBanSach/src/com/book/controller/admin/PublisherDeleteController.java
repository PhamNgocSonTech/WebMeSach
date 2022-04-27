
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
 * Servlet implementation class PublisherDeleteController
 */
@WebServlet("/admin/publisher/delete")
public class PublisherDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       PublisherService pls = new PublisherServiceImp();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PublisherDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		Publisher pl = pls.getPublisher(id);
		if(pl != null) {
			request.setAttribute("publisher", pl);
			RequestDispatcher dis = request.getRequestDispatcher("/view/admin/view/delete-publisher.jsp");
			dis.forward(request, response);
			return;
		}else {
			response.sendRedirect(request.getContextPath() + "/admin/publisher/list");
			return;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		if(id != null) {
			int idd = Integer.parseInt(id);
			pls.delete(idd);
			response.sendRedirect(request.getContextPath() + "/admin/publisher/list");
		}else {
			response.sendRedirect(request.getContextPath() + "/admin/publisher/list");
		}
		
	}

}