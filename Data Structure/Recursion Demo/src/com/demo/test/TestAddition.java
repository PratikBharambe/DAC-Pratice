package com.demo.test;

public class TestAddition {

	
	public static int addition(int n) {
		int sum = 0;
		for(int i = 1 ; i <= n ; i++)
			sum += i;
		return sum;
	}
	
	public static int addUsingRecursion(int n) {
		if(n == 1)
			return 1;
		return n + addUsingRecursion(n-1);
	}
	
	public static void main(String[] args) {
		
		System.out.println("Addition without using recursion : " + addition(10));
		System.out.println("Addition without using recursion : " + addUsingRecursion(10));
		
	}
	
}
