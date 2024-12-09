package com.demo.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.demo.beans.MyClass;

public class MyTestAspect {

	public static void main(String[] args) {
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConfig.xml");
		MyClass mc = ctx.getBean(MyClass.class);
		mc.m1();
		System.out.println();
		mc.m2();
		System.out.println();
		mc.m3();
		System.out.println();
		mc.getX(1);
		System.out.println();
		((ClassPathXmlApplicationContext)ctx).close();
	}
	
}
