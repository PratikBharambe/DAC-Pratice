package com.demo.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class TestPreparedStatement {

	public static void main(String[] args) {
		
		try {
			
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			String url = "jdbc:mysql://192.168.10.127:3306/dac16?useSSL=false";
			Connection conn = DriverManager.getConnection(url, "dac16", "welcome");
			
			if(conn != null) {
				
				PreparedStatement pst = conn.prepareStatement("select * from hobby");
				ResultSet rs = pst.executeQuery();
				
				while(rs.next()) {
					System.out.println("Hobby id : " + rs.getInt(1));
					System.out.println("Hobby Name : " + rs.getString(2));
					System.out.println("Wallet id : " + rs.getInt(3));
					System.out.println("----------------------------------------");
				}
				
				System.out.println("\n\n");
				
				Scanner sc = new Scanner(System.in);
				System.out.print("Enter Hobby id : ");
				int id = sc.nextInt();
				sc.nextLine();
				System.out.print("Enter hobby name : ");
				String hobbyName = sc.nextLine();
				System.out.print("Enter wallet id : ");
				int walletId = sc.nextInt();
				sc.close();
				
				PreparedStatement pst1 = conn.prepareStatement("insert into hobby values(?, ?, ?)");
				pst1.setInt(1, id);
				pst1.setString(2, hobbyName);
				pst1.setInt(3, walletId);
				
				int n = pst1.executeUpdate();

				if(n > 0) {
					System.out.println("Insertion Done.");
				} else {
					System.out.println("Error in insertion data.");
				}
				
				conn.close();
				
			} else {
				System.out.println("Error in Coneection creation with mysql database.");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
}
