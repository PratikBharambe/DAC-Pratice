package com.demo.test;

import com.demo.enums.Coffee;

public class TestCoffee {

	public static void main(String[] args) {
		
		Coffee f = Coffee.small;
		System.out.println("Display Menu");
		switch(f) {
			
		case small -> {
			System.out.println("small coffee selected.");
		}
		
		case medium -> {
			System.out.println("Medium coffee selected.");
		}
		
		case large -> {
			System.out.println("Large coffee selected.");
		}
		
		}

	}

}
