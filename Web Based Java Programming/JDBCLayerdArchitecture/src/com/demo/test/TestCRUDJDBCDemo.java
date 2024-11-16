package com.demo.test;

import java.util.List;
import java.util.Scanner;

import com.demo.beans.MyUser;
import com.demo.beans.Product;
import com.demo.service.LoginService;
import com.demo.service.LoginServiceImpl;
import com.demo.service.ProductService;
import com.demo.service.ProductServiceImpl;

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

		// get the user if authenticate user if user is not present then it get null
		MyUser user = loginService.validateUser(username, password);

		// to store choice from user
		int choice = 0;

		// product service to access its functionality
		ProductService productService = new ProductServiceImpl();

		// if user is admin
		if (user != null && user.getRole().equals("admin")) {

			do {
				// choice menu for admin
				System.out.println("1. Add new product.");
				System.out.println("2. Delete product.");
				System.out.println("3. Update product.");
				System.out.println("4. Display all product.");
				System.out.println("5. Find product by id..");
				System.out.println("6. Display in sorted order by name.");
				System.out.println("7. Exit.");
				System.out.print("Enter your choice : ");
				choice = sc.nextInt();

				// switch case
				switch (choice) {

					// case 1 to add new product
					case 1 -> {
						boolean status = productService.addProduct();
						if (status)
							System.out.println("Insertion Done Succesfully.");
						else
							System.out.println("Error in inserting new product.");
					}
	
					// case 2 to delete product
					case 2 -> {
						System.out.print("Enter id of the product : ");
						int id = sc.nextInt();
						boolean status = productService.deletById(id);
						if (status)
							System.out.println("Deletion Done Succesfully.");
						else
							System.out.println("Id not found.");
					}
	
					// case 3 to update product
					case 3 -> {
						System.out.print("Enter id : ");
						int id = sc.nextInt();
						System.out.print("Enter new quantity : ");
						int quantity = sc.nextInt();
						System.out.print("Enter new price : ");
						double price = sc.nextDouble();
						boolean status = productService.updateById(id, quantity, price);
						if (status) {
							System.out.println("Updated successfully.");
						} else {
							System.out.println("Id not found.");
						}
					}
	
					// case 4 to display all products
					case 4 -> {
						List<Product> productList = productService.getAllProducts();
						if (productList != null) {
							productList.stream().forEach(System.out::println);
						} else {
							System.out.println("Products not found.");
						}
					}
	
					// case 5 to get a product by id
					case 5 -> {
						System.out.print("Enter id : ");
						int id = sc.nextInt();
						Product p = productService.getById(id);
						if (p != null) {
							System.out.println(p);
						} else {
							System.out.println("not found");
						}
					}
	
					// case 6 to get all product sorted by name
					case 6 -> {
						List<Product> productList = productService.getSortedByName();
						if (productList != null) {
							productList.stream().forEach(System.out::println);
						} else {
							System.out.println("not found");
						}
					}
	
					// case 7 to terminate the execution flow
					case 7 -> {
						System.out.println("Thank you for visiting....");
						productService.closeMyConnection();
					}
	
					default -> {
						System.out.println("Invalid choice.");
					}

				}
			} while (choice != 7);

		}

		// if user is user
		if (user != null && user.getRole().equals("user")) {

		}

		sc.close();

	}

}
