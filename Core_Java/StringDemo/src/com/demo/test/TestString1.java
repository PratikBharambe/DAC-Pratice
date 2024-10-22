package com.demo.test;

public class TestString1 {

	public static void main(String[] args) {

		String s1 = "hello";
		String s2 = s1;
		String s3 = "hello";
		String s4 = new String("test");
		System.out.println("s1==s2: " + (s1 == s2));
		System.out.println("s1==s4: " + (s1 == s4));
		System.out.println("s1==s4: " + (s1.equals(s4)));

	}

}
