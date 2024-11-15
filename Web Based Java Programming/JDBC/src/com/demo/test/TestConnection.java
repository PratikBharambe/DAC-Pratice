package com.demo.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestConnection {
	
	public static void main(String[] args) {
		
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			String url = "jdbc:mysql://192.168.10.127:3306/dac16";
			Connection conn = DriverManager.getConnection(url, "dac16", "welcome");
			if(conn != null) {
				System.out.println("Connection created");
			} else {
				System.out.println("Connection not created.");
			}
			
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
