package com.demo.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.demo.beans.HelloWorld;
import com.demo.beans.Product;

public class TestHelloWorld {

	public static void main(String[] args) {
		
		@SuppressWarnings("resource")
		ApplicationContext ctx = new ClassPathXmlApplicationContext("springConfig.xml");
		System.out.println("Before getBean");
		HelloWorld hw = (HelloWorld) ctx.getBean("hwClass");
		System.out.println("After getBean");
		hw.sayHello();
		
		Product p = (Product) ctx.getBean("p");
		System.out.println(p);
		
	}

}
