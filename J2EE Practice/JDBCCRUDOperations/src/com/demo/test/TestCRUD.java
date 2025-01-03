package com.demo.test;

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

			}

			case 3 -> {

			}

			case 4 -> {

			}

			case 5 -> {
				sc.close();
				productService.closeConnection();
			}

			default -> {

			}

			}

		} while (choice != 5);

	}

}
