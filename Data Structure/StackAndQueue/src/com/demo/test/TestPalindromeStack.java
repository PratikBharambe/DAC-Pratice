package com.demo.test;

import com.demo.stack.MyListCharStack;

public class TestPalindromeStack {

	public static void main(String[] args) {

		String str = "radar";
		MyListCharStack st = new MyListCharStack();

		boolean flag = isPalindrome(st, str);

		if (flag)
			System.out.println("The string is paindrome.");
		else
			System.out.println("The string is not palindrome.");

	}

	private static boolean isPalindrome(MyListCharStack st, String str) {

		for (int i = 0; i < str.length(); i++) {
			st.push(str.charAt(i));
		}
		String revString = "";
		while (!st.isEmpty()) {
			revString += st.pop();
		}
		return str.equals(revString);

	}

}
