package com.demo.test;

public class TestFactorial {

	public static int factorial(int n) {
		int facto = 1;
		for (int i = 2; i <= n; i++)
			facto *= i;
		return facto;
	}

	public static int factoUsingRecursion(int n) {
		if (n == 1)
			return 1;
		return n * factoUsingRecursion(n - 1);
	}

	public static void main(String[] args) {

		System.out.println("Addition without using recursion : " + factorial(5));
		System.out.println("Addition without using recursion : " + factoUsingRecursion(5));

	}
}