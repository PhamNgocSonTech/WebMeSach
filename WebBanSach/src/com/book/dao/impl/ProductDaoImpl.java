package com.book.dao.impl;

import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.book.dao.ProductDao;
import com.book.dao.UserDao;
import com.book.jdbc.JDBCConnection;
import com.book.model.Category;
import com.book.model.Product;
import com.book.model.Publisher;
import com.book.model.User;
import com.book.service.CategoryService;
import com.book.service.PublisherService;
import com.book.service.impl.CategoryServiceImpl;
import com.book.service.impl.PublisherServiceImp;

public class ProductDaoImpl extends JDBCConnection implements ProductDao {
	CategoryService categortService = new CategoryServiceImpl();
	PublisherService publisherService = new PublisherServiceImp();

	@Override
	public void insert(Product product) {
		String sql = "INSERT INTO Product(name, price, image, cate_id, des, author, publisher_id, size, embedCode) VALUES (?,?,?,?,?,?,?,?,?)";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,product.getName()); 
			ps.setLong(2, product.getPrice());
			ps.setString(3, product.getImage());
			ps.setInt(4, product.getCategory().getId());
			ps.setString(5, product.getDes());
			ps.setString(6, product.getAuthor());
			ps.setInt(7, product.getPublisher().getPublisher_id());
			ps.setString(8, product.getSize());
			ps.setString(9, product.getEmbedCode());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Product product) {
		String sql = "UPDATE Product SET Product.name = ? , price = ?, image = ?,cate_id = ?, des = ?, author = ?, publisher_id = ?, size = ?, embedCode = ?  WHERE id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, product.getName());
			ps.setDouble(2, product.getPrice());
			ps.setString(3, product.getImage());
			ps.setInt(4, product.getCategory().getId());
			ps.setString(5, product.getDes());
			ps.setString(6, product.getAuthor());
			ps.setInt(7, product.getPublisher().getPublisher_id());
			ps.setString(8, product.getSize());
			ps.setString(9, product.getEmbedCode());
			ps.setInt(10, product.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM Product WHERE id=?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public Product get(int id) {
		String sql = "SELECT product.author, product.size, product.embedCode, Publisher.publisher_id, product.id, product.name AS p_name, product.price, product.image,product.des, category.cate_name AS c_name, category.cate_id AS c_id "
				+ "FROM product INNER JOIN category " + " ON product.cate_id = category.cate_id" + " INNER JOIN publisher " + " ON product.publisher_id = publisher.publisher_id" +" WHERE product.id=?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
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
				product.setAuthor(rs.getString("author"));
				product.setEmbedCode(rs.getString("embedCode"));
				product.setSize(rs.getString("size"));
				product.setPublisher(publisher);

				return product;

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Product> getAll() {
		
		//req.getServletContext().getRealPath("/book-img")

		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT product.author, product.size, product.embedCode, Publisher.publisher_name,Publisher.publisher_id ,product.id, product.name AS p_name, product.price, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id  "
				+ "FROM product INNER JOIN category " + "ON product.cate_id = category.cate_id" + " INNER JOIN publisher " + " ON product.publisher_id = publisher.publisher_id";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
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

	@Override
	public List<Product> search(String keyword) {
		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT * FROM user WHERE name LIKE ? ";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + keyword + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();

				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getLong("price"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("des"));

				Category category = new Category();
				category.setId(rs.getInt("c_id"));
				category.setName(rs.getString("c_name"));

				product.setCategory(category);

				productList.add(product);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return productList;
	}

	@Override
	public List<Product> seachByCategory(int cate_id) {
		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT product.author, product.size, product.embedCode, Publisher.publisher_name,Publisher.publisher_id , product.id, product.name AS p_name, product.price, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id 				"
				+ " FROM Product , Category, Publisher  where product.cate_id = category.cate_id and product.publisher_id = publisher.publisher_id and Category.cate_id=?";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, cate_id);
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

				product.setCategory(category);
				productList.add(product);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return productList;
	}

	@Override
	public List<Product> seachByName(String productName) {
		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT product.author, product.size, product.embedCode, Publisher.publisher_name, Publisher.publisher_id, product.id, product.name AS p_name, product.price, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id 				"
				+ " FROM Product , Category, Publisher   where product.cate_id = category.cate_id and product.publisher_id = publisher.publisher_id and Product.name like ? ";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,"%"+ productName +"%");
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

	@Override
	public List<Product> get_N_Books_Random(int n) {
		//req.getServletContext().getRealPath("/book-img")

		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT  TOP  (?)  product.author, product.size, product.embedCode, Publisher.publisher_name, Publisher.publisher_id ,product.id, product.name AS p_name, product.price, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id  "
				+ "FROM product INNER JOIN category " + "ON product.cate_id = category.cate_id" + " INNER JOIN publisher " + " ON product.publisher_id = publisher.publisher_id " + " ORDER BY NEWID() ";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, n);
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

	@Override
	public List<Product> get_N_Books_Random_ByCategory(int n, int id) {
		//req.getServletContext().getRealPath("/book-img")

		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT  TOP  (?)  product.author, product.size, product.embedCode, Publisher.publisher_name, Publisher.publisher_id ,product.id, product.name AS p_name, product.price, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id  "
				+ "FROM product INNER JOIN category " + "ON product.cate_id = category.cate_id" + " INNER JOIN publisher " + " ON product.publisher_id = publisher.publisher_id " + " WHERE Category.cate_id = ? " + " ORDER BY NEWID() ";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, n);
			ps.setInt(2, id);
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

}
