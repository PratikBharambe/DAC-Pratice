package com.demo.test;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Exception3 {

	public static float division(int num1, int num2) {

		float ans;

		try {
			ans = num1 / num2;
			return ans;
		} catch (ArithmeticException e) {
			System.out.println(e.getMessage());
			throw e;
		}

	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		for (int i = 0; i < 3; i++) {
			try {
				System.out.println("Enter number 1 : ");
				int num = sc.nextInt();
				System.out.println("Enter number 2 : ");
				int num1 = sc.nextInt();
				float division = division(num, num1);
				System.out.println("The division is : " + division);
				
				try {
					String s = null;
					System.out.println(s);
					System.out.println(s.length());
				} catch (NullPointerException e) {
					System.out.println(e.getMessage());
				}
				
				break;
			} catch (InputMismatchException e) {
				System.out.println(e.getMessage());
				sc.nextLine();
			} catch (ArithmeticException e) {
				System.out.println(e.getMessage());
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}

		sc.close();
	}
}
