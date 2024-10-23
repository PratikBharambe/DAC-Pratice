package com.demo.test;

import com.demo.beans.Customer;
import com.demo.enums.Gender;

public class TestCustomer {

	public static void main(String[] args) {
		
		Customer c = new Customer(1, "Pratik", Gender.male);
		Gender g = Gender.female;
		System.out.println(c);
		
		System.out.println("Ordinal : " + g.ordinal());
		System.out.println(g.valueOf("male"));
		
		
	}
	
}
