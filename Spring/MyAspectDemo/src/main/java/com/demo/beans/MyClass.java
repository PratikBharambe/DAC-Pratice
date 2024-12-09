package com.demo.beans;

import org.springframework.stereotype.Component;

@Component
public class MyClass {

	public void m1() {
		System.out.println("Inside method m1()");
	}

	public void m2() {
		System.out.println("Inside method m2()");
	}

	public void m3() {
		System.out.println("Inside method m3()");
	}
	
	public void getX(int a) {
		System.out.println("Inside method getX()");
	}

}
