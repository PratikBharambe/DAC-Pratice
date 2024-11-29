package com.demo.test;

import java.util.List;
import java.util.Scanner;

import com.demo.beans.Product;
import com.demo.service.ProductService;
import com.demo.service.ProductServiceImpl;

public class TestCRUDOneToOne {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int choice = 0;
		
		ProductService productService = new ProductServiceImpl();

		do {

			System.out.println();
			System.out.println("1. Add New Product.");
			System.out.println("2. Display All Product.");
			System.out.println("3. Update Product.");
			System.out.println("4. Display By Id.");
			System.out.println("5. Delete By Id.");
			System.out.println("6. Display Sorted By Name.");
			System.out.println("7. Exit.");
			System.out.print("Enter your choice : ");
			choice = sc.nextInt();

			switch (choice) {

			// case 1 to add new employee
			case 1 -> {
				boolean status = productService.addNewEmployee();
				if(status)
					System.out.println("Product Added Succesfully.");
				else
					System.out.println("Error Occured.");
			}

			// case 2 to display all available product
			case 2 -> {
				List<Product> plist = productService.getAllProducts();
				plist.forEach(System.out::println);
			}

			// case 3 to update product details
			case 3 -> {
				boolean status = productService.updateProduct();
				if(status) {
					System.out.println("Product Updated Successfully");
				} else {
					System.out.println("Error Occured.");
				}
			}

			// case 4 to display product by id
			case 4 -> {
				Product p = productService.getProductById();
				System.out.println(p);
			}

			// case 5 to delete product By id 
			case 5 -> {
				boolean status = productService.deleteById();
				if(status) {
					System.out.println("Product deleted Successfully");
				} else {
					System.out.println("Error Occured.");
				}
			}

			// case 6 to display all elements sorted by name
			case 6 -> {
				List<Product> plist = productService.getAllProductsSortedByName();
				plist.forEach(System.out::println);
			}

			case 7 -> {
				
				System.out.println("Thanks for visting.");
				sc.close();
				productService.closeConnection();

			}

			default -> {
				System.out.println("Inalid choice !!!!");
			}

			}

		} while (choice != 7);

	}

}
