package com.demo.test;

import java.util.List;
import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.demo.beans.Product;
import com.demo.service.ProductService;
import com.demo.service.ProductServiceImpl;

public class TestJdbcCrud {

	public static void main(String[] args) {

		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConfig.xml");
		Scanner sc = new Scanner(System.in);
		int choice = 0;

		ProductService productService = ctx.getBean(ProductServiceImpl.class);

		do {

			System.out.println("1. Add new product.");
			System.out.println("2. Delete product.");
			System.out.println("3. Modify product.");
			System.out.println("4. Display product by id.");
			System.out.println("5. Display all products.");
			System.out.println("6. Display product by price.");
			System.out.println("7. Exit.");
			System.out.print("Enter your choice : ");
			choice = sc.nextInt();

			switch (choice) {

			// case 1 to add new product
			case 1 -> {
				boolean status = productService.addNewProduct();
				if (status)
					System.out.println("Product Added Successfully.");
				else
					System.out.println("Error Occured.");
			}

			// case 2 to delete product
			case 2 -> {
				boolean status = productService.deleteProduct();
				if (status)
					System.out.println("Product deleted Successfully.");
				else
					System.out.println("Error Occured.");
			}

			// case 3 to modify product information
			case 3 -> {
				boolean status = productService.updateProduct();
				if (status)
					System.out.println("Product updated Successfully.");
				else
					System.out.println("Error Occured.");
			}

			// case 4 to display product by id
			case 4 -> {
				Product p = productService.getProductById();
				if (p != null)
					System.out.println(p);
				else
					System.out.println("Product is not available in database");
			}

			// case 5 to display all products
			case 5 -> {
				List<Product> plist = productService.getAllProducts();
				if (plist != null)
					plist.forEach(System.out::println);
				else
					System.out.println("Products are not available in database");
			}

			// case 6 to display products by id
			case 6 -> {
				List<Product> plist = productService.getProductsByPrice();
				if (plist != null)
					plist.forEach(System.out::println);
				else
					System.out.println("Products are not available in database");
			}

			// case 7 to terminate do while loop
			case 7 -> {
				System.out.println("Thanks for visiting.");
				sc.close();
				((ClassPathXmlApplicationContext) ctx).close();
			}

			// default case if invalid case is entered
			default -> {
				System.out.println("Invalid choice.");
			}

			}

		} while (choice != 7);
	}

}
