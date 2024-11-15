package com.demo.test;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestCallableStatement {

	public static void main(String[] args) {
		
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			String url = "jdbc:mysql://192.168.10.127:3306/dac16?useSSL=false";
			Connection conn = DriverManager.getConnection(url, "dac16", "welcome");
			if(conn != null) {
				
				CallableStatement cst = conn.prepareCall("call pro1(?, ?, ?)");
				cst.setInt(1, 20);
				cst.setInt(2, 4);
				cst.registerOutParameter(3, java.sql.Types.INTEGER);
				
				cst.execute();
				
				int multi = cst.getInt(3);
				System.out.println("Multiplication is : " + multi);
				
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
