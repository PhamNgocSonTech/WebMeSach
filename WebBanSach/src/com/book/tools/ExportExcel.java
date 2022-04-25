package com.book.tools;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.tagext.TryCatchFinally;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.book.jdbc.JDBCConnection;
import com.book.model.Category;
import com.book.model.Product;
import com.book.model.Publisher;
import com.book.service.CategoryService;
import com.book.service.ProductService;
import com.book.service.PublisherService;
import com.book.service.impl.CategoryServiceImpl;
import com.book.service.impl.ProductServiceImpl;
import com.book.service.impl.PublisherServiceImp;
import com.book.util.Constant;

/**
 * Servlet implementation class ExportExcel
 */
@WebServlet(urlPatterns = { "/export-excel" })

public class ExportExcel extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	static CategoryService categortService = new CategoryServiceImpl();
	static PublisherService publisherService = new PublisherServiceImp();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExportExcel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/*  */
   
//  static List<Product> productList = new ArrayList<Product>();
    static List<Product> productList = getAllDataFromDB();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			XSSFWorkbook wb = new XSSFWorkbook();
			XSSFSheet sheet = wb.createSheet("ListBook");
			XSSFRow row = null;
			Cell cell = null;
			row = sheet.createRow(7);
			
			cell = row.createCell(0,CellType.STRING);
			cell.setCellValue("ID");
        
			cell = row.createCell(1,CellType.STRING);
			cell.setCellValue("Name");
        
			cell = row.createCell(2,CellType.STRING);
			cell.setCellValue("Price");
			
			cell = row.createCell(3,CellType.STRING);
			cell.setCellValue("Author");
        
			cell = row.createCell(4,CellType.STRING);
			cell.setCellValue("Category");
			
			cell = row.createCell(5,CellType.STRING);
			cell.setCellValue("Publisher");   
		
			
			cell = row.createCell(6,CellType.STRING);
			cell.setCellValue("Size");
        
			for (int i = 0; i < productList.size(); i++) {
        	
				row=sheet.createRow(8+i);
			
				cell = row.createCell(0,CellType.STRING);
				cell.setCellValue(productList.get(i).getId());
        
				cell = row.createCell(1,CellType.STRING);
				cell.setCellValue(productList.get(i).getName());
			
				cell = row.createCell(2,CellType.STRING);
				cell.setCellValue(productList.get(i).getPrice());
				
				cell = row.createCell(3,CellType.STRING);
				cell.setCellValue(productList.get(i).getAuthor());
				
				cell = row.createCell(4,CellType.STRING);
				cell.setCellValue(productList.get(i).getCategory().getName());
				
				cell = row.createCell(5,CellType.STRING);
				cell.setCellValue(productList.get(i).getPublisher().getPublisher_name());
				
				cell = row.createCell(6,CellType.STRING);
				cell.setCellValue(productList.get(i).getSize());
			}        
				//tạo file và đường dẫn
	        	File f = new File(Constant.Path.ABSOLUTE_PROJECT_LOCATION + "/‪listbook.xlsx");
	        try {
				FileOutputStream file = new FileOutputStream(f);
				wb.write(file);
				file.close();
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
	 
	} catch (Exception e) {
		System.out.println("ERROR: " + e);
	}
		System.out.println("Export Success To "+Constant.Path.ABSOLUTE_PROJECT_LOCATION + "/view/admin/‪listbook.xlsx");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin/view/index.jsp");
		dispatcher.forward(request, response);
		
	}

	
	public static List<Product> getAllDataFromDB()  {
		
		//req.getServletContext().getRealPath("/book-img")

		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT product.author, product.size, product.embedCode, Publisher.publisher_name,Publisher.publisher_id ,product.id, product.name AS p_name, product.price, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id  "
				+ "FROM product INNER JOIN category " + "ON product.cate_id = category.cate_id" + " INNER JOIN publisher " + " ON product.publisher_id = publisher.publisher_id";
		Connection connection = null;
//		List<Product> productList = new ArrayList<Product>();
			try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			String user= "sa";
			String pass ="sa123";
			String url = "jdbc:sqlserver://localhost:1433;databaseName=BookManagement";
			try {
				connection = DriverManager.getConnection(url, user, pass);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = categortService.get(rs.getInt("c_id"));
				Publisher publisher = publisherService.getPublisher(rs.getInt("publisher_id"));
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("p_name"));
				product.setPrice(rs.getLong("price"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("des"));
				product.setCategory(category);
				product.setPublisher(publisher);
				product.setAuthor(rs.getString("author"));
				product.setEmbedCode(rs.getString("embedCode"));
				product.setSize(rs.getString("size"));
				productList.add(product);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return productList;
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}


////	//Method Test
//	public static void main(String[] args) throws Exception {
//		try {
//			loadData();
//			XSSFWorkbook wb = new XSSFWorkbook();
//			XSSFSheet sheet = wb.createSheet("ListBook");
//			XSSFRow row = null;
//			Cell cell = null;
//			row = sheet.createRow(5);
//			
//			cell = row.createCell(0,CellType.STRING);
//			cell.setCellValue("ID");
//        
//			cell = row.createCell(1,CellType.STRING);
//			cell.setCellValue("Name");
//        
//			cell = row.createCell(2,CellType.STRING);
//			cell.setCellValue("Price");
//			
//			cell = row.createCell(3,CellType.STRING);
//			cell.setCellValue("Author");
//        
////			cell = row.createCell(4,CellType.STRING);
////			cell.setCellValue("Puslisher");
////
////			cell = row.createCell(5,CellType.STRING);
////			cell.setCellValue("Cate");
////        
//			cell = row.createCell(4,CellType.STRING);
//			cell.setCellValue("Size");
//        
//			
//			for (int i = 0; i < productList.size(); i++) {
//        	
//				row=sheet.createRow(6+i);
//			
//				cell = row.createCell(0,CellType.STRING);
//				cell.setCellValue(productList.get(i).getId());
//        
//				cell = row.createCell(1,CellType.STRING);
//				cell.setCellValue(productList.get(i).getName());
//			
//				cell = row.createCell(2,CellType.STRING);
//				cell.setCellValue(productList.get(i).getPrice());
//				
//				cell = row.createCell(3,CellType.STRING);
//				cell.setCellValue(productList.get(i).getAuthor());
//				
////				cell = row.createCell(4,CellType.STRING);
////				cell.setCellValue(productList.get(i).getPublisher().getPublisher_name());
////
////				cell = row.createCell(5,CellType.STRING);
////				cell.setCellValue(productList.get(i).getCategory().getName());
//				
//				cell = row.createCell(4,CellType.STRING);
//				cell.setCellValue(productList.get(i).getSize());
//				
//			}        
//	    //tạo file và đường dẫn
//	        	File f = new File(Constant.Path.ABSOLUTE_PROJECT_LOCATION + "/view/admin/‪listbook.xlsx");
//	        
//	        try {
//				FileOutputStream file = new FileOutputStream(f);
//				System.out.println(f.getAbsolutePath());
//				wb.write(file);
//				
//				file.close();
//				
//			} catch (Exception e) {
//				// TODO: handle exception
//				System.out.println(e.getMessage());
//			}
//	 
//	} catch (Exception e) {
//		System.out.println("ERROR: " + e);
//		// TODO: handle exception
//	}
//	System.out.println("Xuat file excel thanh cong");
////	RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin/view/index.jsp");
////	dispatcher.forward(request, response);
////		System.out.println("Xuat file excel thanh cong");
////		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin/view/list-product.jsp");
////		dispatcher.forward(request, response);
//	}
	
	
//public static void loadData() throws Exception {
//	Connection connection = null;
////	List<Product> productList = new ArrayList<Product>();
//	try {
//		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//		String user= "sa";
//		String pass ="sa123";
//		String url = "jdbc:sqlserver://localhost:1433;databaseName=BookManagement";
//		connection = DriverManager.getConnection(url, user, pass);
//		System.out.println("Ket noi den CSDL thanh cong");
//		
//		String sql = "select * from Product";
//		Statement st = connection.createStatement();
//		ResultSet rs = st.executeQuery(sql);
//		while (rs.next()) {
//			int id = rs.getInt("id");
//			String name = rs.getString(2);
//			long price = rs.getLong("price");
//			String author = rs.getString("author");
//			String size = rs.getString("size");
//			Product us = new Product(id, name, price, null, null, null, null, author, size);
//			productList.add(us);
//			
//		}
//		connection.close();
//	} catch (ClassNotFoundException e) {
//	
//		e.printStackTrace();
//	}
}




