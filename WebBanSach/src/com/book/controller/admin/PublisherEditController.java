
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
 * Servlet implementation class PublisherEditController
 */
@WebServlet("/admin/publisher/edit")
public class PublisherEditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private PublisherService pls = new PublisherServiceImp();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PublisherEditController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int publisher_id =Integer.parseInt(request.getParameter("id"));
		Publisher pl = pls.getPublisher(publisher_id);
		if(pl != null) {
			request.setAttribute("publisher", pl);
			RequestDispatcher dis = request.getRequestDispatcher("/view/admin/view/edit-publisher.jsp");
			dis.forward(request, response);
		}else {
			response.sendRedirect(request.getContextPath()+"/admin/publisher/list");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String idS = request.getParameter("id");
		if(idS != null) {
		int id = Integer.parseInt(idS);
		String name = request.getParameter("name");
		Publisher publisherNew = new Publisher(id,name);
		pls.edit(publisherNew);
		response.sendRedirect(request.getContextPath() + "/admin/publisher/list");
	}
	}

}