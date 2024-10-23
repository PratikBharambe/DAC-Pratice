package com.demo.test;

public class TestString2 {
	public static void main(String[] args) {
		String s1="test";
		s1.concat("abc");
		s1.replace("t","a");
		System.out.println(s1);
		StringBuilder sb=new StringBuilder("test");
		sb.append("Welcome");
		System.out.println(sb);
		s1="xxx,yyy,zzz-rrr";
		String[] arr=s1.split(",");
		String s3="aaa";
		String s2=s3.join(":", arr);
		System.out.println(s2);
		String s11="Happy Life";
	}
}
