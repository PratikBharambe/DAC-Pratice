package com.demo.test;

import java.util.Scanner;

import com.demo.service.ProductService;
import com.demo.service.ProductServiceImpl;

public class TestHibernate {
	
	public static void main(String[] args) {
		
		int choice = 0;
		Scanner sc = new Scanner(System.in);
		ProductService productService = new ProductServiceImpl();
		
		do {
			
			System.out.println("1. Add new product.");
			System.out.println("2. Display new product.");
			System.out.println("3. Update product details.");
			System.out.println("4. Delete product.");
			System.out.println("5. Exit.");
			System.out.print("Enter your choice : ");
			choice = sc.nextInt();
			
			switch(choice) {
			
			case 1 -> {
				boolean result = productService.addNewProduct();
				if(result)
					System.out.println("Product added successfully.");
				else
					System.out.println("Error in product insertion.");
			}
			
			case 2 -> {
				
			}
			
			case 3 -> {
				
			}
			
			case 4 -> {
				
			}
			
			case 5 -> {
				
			}
			
			default -> {
				System.out.println("invalid choice .............");
			}
			
			}
			
		} while (choice != 5);
		
		
	}

}
