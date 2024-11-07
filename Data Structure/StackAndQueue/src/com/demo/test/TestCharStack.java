package com.demo.test;

import java.util.Scanner;

import com.demo.stack.MyStackChar;

public class TestCharStack {

	public static void main(String[] args) {
		
		// stack object
		MyStackChar st = new MyStackChar(30);
		
		Scanner sc = new Scanner(System.in);
		
		// String to get it in reverse order
//		String str = "Namaskar mandali";
		System.out.print("Enter a String : ");
		String str = sc.nextLine();
		
		// for loop to insert every char of string to stack
		for (int i = 0; i < str.length(); i++) {
			st.push(str.charAt(i));
		}
		
		// while loop to print the stack in reverse order 
		// witch gives the string in reverse order
		while (!st.isEmpty()) {
			System.out.print(st.pop());
		}
		
		sc.close();
		
	}
	
}
