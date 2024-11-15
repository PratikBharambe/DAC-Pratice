package com.demo.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class TestCreateStatement {

	public static void main(String[] args) {
		
		try {
			// step 01 to register driver
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			
			// step 02 to create connection with mysql server
			String url = "jdbc:mysql://192.168.10.127/dac16";
			Connection conn = DriverManager.getConnection(url, "dac16", "welcome");
			
			// if connection created then go to if or else
			if(conn != null) {
				// create Statement object to execute object
				Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery("select * from hobby");
				
				while(rs.next()) {
					System.out.println("Hobby id : " + rs.getInt(1));
					System.out.println("Hobby Name : " + rs.getString(2));
					System.out.println("Wallet id : " + rs.getInt(3));
					System.out.println("------------------------------------");
				}
				
				Scanner sc = new Scanner(System.in);
				System.out.print("Enter Hobby id : ");
				int id = sc.nextInt();
				sc.nextLine();
				System.out.print("Enter hobby name : ");
				String hobbyName = sc.nextLine();
				System.out.print("Enter wallet id : ");
				int waletId = sc.nextInt();
				sc.close();
				
				String query = String.format("insert into hobby values('%d', '%s', '%d')", id, hobbyName, waletId);
				System.out.println("Query to execute is : " + query);
				
				int n = st.executeUpdate(query);
				if(n > 0) {
					System.out.println("Data insertion done successfully.");
				} else {
					System.out.println("Error in data insertion.");
				}
				
			}else {
				System.out.println("Connection not created.");
			}
			
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
}
