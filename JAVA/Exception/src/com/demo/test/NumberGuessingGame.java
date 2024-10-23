package com.demo.test;

import java.util.InputMismatchException;
import java.util.Scanner;

import com.demo.exceptions.WrongNumberInputException;

public class NumberGuessingGame {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		int num = 23;
		System.out.println("Guess the number : ");
		while (true) {
			try {
				int num1 = sc.nextInt();
				if (num1 != num) {
					throw new WrongNumberInputException("OOPs! you lost one attempt");
				} else {
					System.out.println("You won!!" + num1);
					break;
				}

			} catch (InputMismatchException e) {
				System.out.println(e.getMessage());
			} catch (WrongNumberInputException e) {
				System.out.println(e.getMessage());
			}
		}
	}
}
