package com.demo.test;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Scanner;

import com.demo.beans.Product;
import com.demo.services.ProductService;
import com.demo.services.ProductServiceImpl;

public class TestCRUD {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int choice = 0;
		
		ProductService productService = new ProductServiceImpl();

		do {
			System.out.println();
			System.out.println("1. Get all products.");
			System.out.println("2. Insert new product.");
			System.out.println("3. Update product details.");
			System.out.println("4. Delete product.");
			System.out.println("5. Exit.");
			System.out.print("Enter yoour choice : ");
			choice = sc.nextInt();

			switch (choice) {

			case 1 -> {
				List<Product> productList = productService.getAllProducts();
				productList.forEach(System.out::println);
			}

			case 2 -> {
				System.out.print("Enter product id : ");
				int id = sc.nextInt();
				sc.nextLine();
				System.out.print("Enter product name : ");
				String name = sc.nextLine();
				System.out.print("Enter product quantity : ");
				int qty = sc.nextInt();
				System.out.print("Enter product price : ");
				double price = sc.nextDouble();
				sc.nextLine();
				System.out.print("Enter date in format (dd/MM/yyyy) : ");
				String date = sc.nextLine();
				LocalDate expDate = LocalDate.parse(date, DateTimeFormatter.ofPattern("dd/MM/yyyy"));
				System.out.print("Enter product catagory id : ");
				int cid = sc.nextInt();
				Product p = new Product(id, name, qty, price, expDate, cid);
				boolean status = productService.addNewProduct(p);
				if(status)
					System.out.println("Product added successfully.");
				else
					System.out.println("Error in product insertion.");
			}

			case 3 -> {
				System.out.print("Enter product id : ");
				int id = sc.nextInt();
				System.out.print("Enter product quantity : ");
				int qty = sc.nextInt();
				System.out.print("Enter product price : ");
				double price = sc.nextDouble();
				boolean status = productService.updateProduct(id, qty, price);
				if(status)
					System.out.println("Product updated successfully.");
				else
					System.out.println("Error in product updation.");
			}

			case 4 -> {

			}

			case 5 -> {
				sc.close();
				productService.closeConnection();
				System.out.println("Thanks for visiting !!!!!!");
			}

			default -> {

			}

			}

		} while (choice != 5);

	}

}
