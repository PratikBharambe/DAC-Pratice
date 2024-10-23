package com.demo.test;

import java.util.Scanner;

public class TestExam {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int choice = 0;

		do {
			System.out.println("Which exam do you want to give?");
			System.out.println("0. Exit");
			System.out.println("1. Java");
			System.out.println("2. HTML");
			System.out.println("Enter Your Choice : ");
			choice = sc.nextInt();

			switch (choice) {
			case 0 -> {
				System.out.println("Thank you for visiting....");
				sc.close();
			}

			case 1 -> {

			}

			case 2 -> {

			}

			default -> System.out.println("Invalid Choice!");
			}
		} while (choice != 0);
	}

}
