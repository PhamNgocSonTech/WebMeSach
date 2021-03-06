package com.book.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.book.dao.PublisherDao;
import com.book.jdbc.JDBCConnection;
import com.book.model.Category;
import com.book.model.Publisher;

public class PublisherDaoImp extends JDBCConnection implements PublisherDao{

	@Override
	public void insert(Publisher publisher) {
		// TODO Auto-generated method stub
		String sql = "insert into [Publisher](publisher_name) values (?)";
		Connection conn = super.getJDBCConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, publisher.getPublisher_name().toString());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Publisher publisher) {
		// TODO Auto-generated method stub
		String sql = "UPDATE [Publisher] set publisher_name = ? where publisher_id = ?";
		Connection conn = super.getJDBCConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, publisher.getPublisher_name());
			ps.setInt(2,publisher.getPublisher_id());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		String sql = "delete from [Publisher] where publisher_id = ?";
		Connection conn = super.getJDBCConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<Publisher> getAll() {
		List<Publisher> publishers = new ArrayList<Publisher>();
		String sql = "SELECT * FROM Publisher";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Publisher publisher = new Publisher();

				publisher.setPublisher_id(rs.getInt("publisher_id"));
				publisher.setPublisher_name(rs.getString("publisher_name"));

				publishers.add(publisher);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return publishers;
	}

	@Override
	public Publisher getPublisher(int id) {
		String sql = "SELECT * FROM publisher WHERE publisher_id = ? ";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Publisher publisher = new Publisher();

				publisher.setPublisher_id(rs.getInt("publisher_id"));
				publisher.setPublisher_name(rs.getString("publisher_name"));

				return publisher;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}


	

}
