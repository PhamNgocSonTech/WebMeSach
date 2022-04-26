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
import com.book.model.Publisher;
import com.book.model.User;
import com.book.service.CategoryService;
import com.book.service.ProductService;
import com.book.service.PublisherService;
import com.book.service.UserService;
import com.book.service.impl.CategoryServiceImpl;
import com.book.service.impl.ProductServiceImpl;
import com.book.service.impl.PublisherServiceImp;
import com.book.service.impl.UserServiceImpl;
import com.book.tools.StringConvert;
import com.book.util.Constant;

@WebServlet(urlPatterns = { "/admin/product/edit" })
public class ProductEditController extends HttpServlet {
	ProductService productService = new ProductServiceImpl();
	CategoryService categoryService = new CategoryServiceImpl();
	PublisherService publisherService = new PublisherServiceImp();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		Product product = productService.get(Integer.parseInt(id));
		List<Category> categories = categoryService.getAll();
		List<Publisher> publishers = publisherService.getAll();

		req.setAttribute("categories", categories);
		req.setAttribute("publishers", publishers);

		req.setAttribute("product", product);


		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/view/edit-product.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Product product = new Product();
		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
		ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);
		String oldImg = null;
		String itemUTF8;


		try {
			List<FileItem> items = servletFileUpload.parseRequest(req);
			
			for (FileItem item : items) {
				itemUTF8 = StringConvert.itemGetString_UTF_8(item);
				if (item.getFieldName().equals("id")) {
					product.setId(Integer.parseInt(item.getString()));
				} else if (item.getFieldName().equals("old-img")) {
					oldImg = item.getString();
				} else if (item.getFieldName().equals("name")) {
					product.setName(itemUTF8);
				} else if (item.getFieldName().equals("author")) {
					product.setAuthor(itemUTF8);
				} else if (item.getFieldName().equals("publisher")) {
					product.setPublisher(publisherService.getPublisher(Integer.parseInt(item.getString())));
				} else if (item.getFieldName().equals("review")) {
					try {
						product.setEmbedCode(item.getString().trim().substring(17)); // Lấy code nhúng của youtube
					} catch (Exception e) {
						product.setEmbedCode(null);
					}
				} else if (item.getFieldName().equals("size")) {
					product.setSize(item.getString());
				} else if (item.getFieldName().equals("cate")) {
					product.setCategory(categoryService.get(Integer.parseInt(item.getString())));
				} else if (item.getFieldName().equals("des")) {
					product.setDes(itemUTF8);
				} else if (item.getFieldName().equals("price")) {
					product.setPrice(Long.parseLong(item.getString()));
				} else if (item.getFieldName().equals("image")) {
					if (item.getSize() > 0) {// neu co file d
						final String dir = Constant.Path.ABSOLUTE_PROJECT_LOCATION + "/view/client/static/img/book-img"; // Nhớ
																															// đổi
																															// đường
																															// dẫn
																															// của
																															// ABSOLUTE_PROJECT_LOCATION
						String originalFileName = item.getName(); // Tên của image cũ
						int index = originalFileName.lastIndexOf(".");
						String ext = originalFileName.substring(index + 1);
						String fileName = System.currentTimeMillis() + "." + ext; // Tên image mới
						File file = new File(dir + "/" + fileName);
						item.write(file);
						product.setImage(fileName);

//						 VỊ TRÍ LƯU ẢNH:  D:\\GitHub\\WebMeSach\\WebBanSach\\WebContent\\view\\client\\static\\img\\book-img
//						 TÊN ẢNH: fileName
					} else {
						product.setImage(null);
					}
				}
			}
			if (product.getImage() == null) {
				product.setImage(oldImg);
			}
			productService.edit(product);

			resp.sendRedirect(req.getContextPath() + "/admin/product/list");

		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
