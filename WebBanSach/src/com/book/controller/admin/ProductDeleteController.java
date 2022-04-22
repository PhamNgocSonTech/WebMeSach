package com.book.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.book.model.Category;
import com.book.model.Product;
import com.book.model.User;
import com.book.service.CategoryService;
import com.book.service.ProductService;
import com.book.service.UserService;
import com.book.service.impl.CategoryServiceImpl;
import com.book.service.impl.ProductServiceImpl;
import com.book.service.impl.UserServiceImpl;

@WebServlet(urlPatterns = { "/admin/product/delete" })
public class ProductDeleteController extends HttpServlet {
	ProductService productService = new ProductServiceImpl();
	String id;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		id = req.getParameter("id");
		Product product = productService.get(Integer.parseInt(id));
		req.setAttribute("product", product);
		req.getRequestDispatcher("/view/admin/view/delete-product.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		productService.delete(Integer.parseInt(id));
		
		resp.sendRedirect(req.getContextPath() + "/admin/product/list");
	}

}
