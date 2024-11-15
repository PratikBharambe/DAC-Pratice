package com.demo.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TestSqlInjection {

	public static void main(String[] args) {
		
		
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			String url = "jdbc:mysql://192.168.10.127:3306/dac16?useSSL=false";
			Connection conn = DriverManager.getConnection(url, "dac16", "welcome");
			if(conn != null) {
				
				Statement st = conn.createStatement();
			
				// String uname = "admin1";			
				// String password = "admin1";
				
				String uname = "yyy";			
				String password = "sdf' or '1' = '1";
				
				String query = String.format("select * from userinfo where uname = '%s' and password = '%s'", uname, password);
				System.out.println("Query is : " + query);
				
				ResultSet rs = st.executeQuery(query);
				
				while(rs.next()) {
					System.out.println("Username : " + rs.getString(1));
					System.out.println("Password : " + rs.getString(2));
					System.out.println("Id : " + rs.getInt(3));
					System.out.println("Salary : " + rs.getInt(4));
					System.out.println("--------------------------------------");
				}
				
				
				
			} else {
				System.out.println("Connection not created.");
			}
			
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
	
}
