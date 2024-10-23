package com.demo.test;

import java.util.Scanner;

import com.demo.service.AccountService;
import com.demo.service.AccountServiceImpl;
import com.demo.service.LoginService;
import com.demo.service.LoginServiceImpl;

public class TestAccount {
	public static void main(String[] args) {
		
		AccountService aservice = new AccountServiceImpl();
		LoginService ls = new LoginServiceImpl();
		
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter Username : ");
		String user = sc.next();
		System.out.println("Enter Password : ");
		String pass = sc.next();
		String role = ls.autheticate(user,pass);
		int choice=0;
		if(role.equals("user")){
			do {
				System.out.println("1. Open new account.");
				System.out.println("2. Withdraw amount");
				System.out.println("3. Deposit amount");
				System.out.println("4. Transfer funds");
				System.out.println("5. Change pin");
				System.out.println("6. Check balance");
				System.out.println("7. Close account");
				System.out.println("8. Display all");
				System.out.println("9. Exit");
				choice = sc.nextInt();
				
				switch(choice) {
				
				case 1 -> {
					System.out.println("1. Current Account.");
					System.out.println("2. Saving Account.");
					System.out.println("Enter your choice : ");
					int ch = sc.nextInt();
					boolean status = aservice.addNewAccount(ch);
					if(status)
						System.out.println("Account opened successfully.");
					else
						System.out.println("Account not opened.");
				}
				
				case 9 -> {
					System.out.println("Thanks for visiting .................");
				}
				
				default ->{
					System.out.println("Invalid choice !!!");
				}
				}
				
			} while (choice!=9);
		} else if(role.equals("admin")){
			do {
				System.out.println("1. Display all.");
				System.out.println("2. Display in sorted order by id.");
				System.out.println("3. Display in sorted order by name.");
				System.out.println("4. Exit");
				choice = sc.nextInt();
			} while (choice!=9);
		}
	}
}