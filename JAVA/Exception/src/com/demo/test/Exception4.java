package com.demo.test;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Exception4 {
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		try {
			System.out.println("enetr number 1");
			int num = sc.nextInt();
			System.out.println("enetr number 2");
			int num1 = sc.nextInt();
			if (num1 != 0) {
				int ans = num / num1;
				System.out.println("Division : " + ans);
			} else {
				throw new ArithmeticException("Cannot divide by zero......");
			}

			System.out.println("in outer try block");

		} catch (ArithmeticException e) {
			System.out.println("cannot divide by zero");
			System.out.println(e.getMessage());
		} catch (InputMismatchException e) {
			System.out.println(e.getMessage());
		}
		System.out.println("continue main method");

	}
}
