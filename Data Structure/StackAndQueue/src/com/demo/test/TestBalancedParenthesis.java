package com.demo.test;

import com.demo.stack.MyStackChar;

public class TestBalancedParenthesis {

	public static void main(String[] args) {

		MyStackChar st = new MyStackChar(20);
		String str = "{{{[](){}}}}";
		// String str="{{{[](){}}}]}";

		boolean flag = isBalanced(st, str);

		if (flag)
			System.out.println("The string has balanced paranthesis.");
		else
			System.out.println("The string has not balanced paranthesis.");

	}

	private static boolean isBalanced(MyStackChar st, String str) {
		for (int i = 0; i < str.length(); i++) {
			char ch = str.charAt(i);
			if (ch == '{' || ch == '[' || ch == '(')
				st.push(ch);
			else {
				char chFromStack = st.pop();
				if ((ch == ')' && chFromStack != '(') || (ch == ']' && chFromStack != '[')
						|| (ch == '}' && chFromStack != '{')) {
					return false;
				}
			}
		}
		if (st.isEmpty())
			return true;
		else
			return false;
	}

}
