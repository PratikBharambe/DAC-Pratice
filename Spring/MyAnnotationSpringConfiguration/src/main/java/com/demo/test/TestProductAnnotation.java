package com.demo.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.demo.beans.Catagory;
import com.demo.beans.Product;

public class TestProductAnnotation {

	public static void main(String[] args) {
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("springConfig.xml");
		Product p = (Product) ctx.getBean("product");
		Catagory c = (Catagory) ctx.getBean("catagory");
		System.out.println(p);
		System.out.println(c);
		((ClassPathXmlApplicationContext)ctx).close();
		
	}
	
}
