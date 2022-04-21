package com.book.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.book.model.Publisher;

public class JDBCConnection {
	public static Connection getJDBCConnection() {
//		đây là lớp để connect DB
		/// test cái nồi github này nè nó khó vãi cả chưởng ra dcm nhà nó =))))))))))))))
		//thêm thư viện
		Connection connection = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String user = "sa";

			String pass = "789";

			String url = "jdbc:sqlserver://localhost:1433;databaseName=BookManagement";
			connection = DriverManager.getConnection(url, user, pass);
			System.out.println("Success Connect Database");
			
		} catch (ClassNotFoundException | SQLException ex) {
			ex.printStackTrace();
		}

		return connection;
	}
	
}
