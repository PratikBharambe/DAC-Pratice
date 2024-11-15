package com.demo.test;

import java.util.Scanner;

import com.demo.beans.MyUser;
import com.demo.service.LoginService;
import com.demo.service.LoginServiceImpl;

public class TestCRUDJDBCDemo {
	
	public static void main(String[] args) {
		
		// Scanner object to accept input from user
		Scanner sc = new Scanner(System.in);
		
		// Accept username and password from user
		System.out.print("Enter username : ");
		String username = sc.next();
		System.out.print("Enter password : ");
		String password = sc.next();
		
		// object of login service to access there functionality
		LoginService loginService = new LoginServiceImpl();
		
		MyUser user = loginService.validateUser(username, password);
		
		if(user != null) {
			System.out.println(user);
		} else {
			System.out.println("User is not present.");
		}
		
		
		
		sc.close();
		
	}

}
