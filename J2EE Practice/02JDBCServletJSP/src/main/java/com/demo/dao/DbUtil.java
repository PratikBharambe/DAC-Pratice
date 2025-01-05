package com.demo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtil {

	public static Connection conn = null;

	public static Connection getConnection() {
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			String url = "jdbc:mysql://localhost:3306/javajdbc?useSSL=false";
			conn = DriverManager.getConnection(url, "root", "root");

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static void cloaseConnection() {
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
