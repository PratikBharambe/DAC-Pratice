package com.demo.test;

public class TestAssignment {
	
	public static boolean isPrime(int n) {
		for (int i = 2; i <= n / 2; i++) {
			if (n % i == 0)
				return false;
		}
		return true;
	}
	
	public static void printTable(int number) {
		for(int i = 1; i <= 10 ; i++)
			System.out.println(number + " * " + i + " = " + number*i);
	}
	
	public static void main(String[] args) {
		for (int i = 0; i < args.length; i++) {
			int data = Integer.parseInt(args[i]);
			System.out.println("\nThe number is : " + data);
			if (isPrime(data)) {
				printTable(data);
			} else {
				System.out.println("Division by 10 is : " + data / 10);
			}
		}
	}
}
