package com.demo.test;

import java.util.Locale;
import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.MessageSource;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.ResourceBundleMessageSource;

public class TestLocalDemo {

	public static void main(String[] args) {

		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConfig.xml");

		Scanner sc = new Scanner(System.in);
		int choice = 0;

		do {

			System.out.println("1. USA English.");
			System.out.println("2. UK English.");
			System.out.println("3. Marathi.");
			System.out.println("4. Other.");
			System.out.println("5. Exit.");
			System.out.print("Enter your choice : ");
			choice = sc.nextInt();

			MessageSource ms = (MessageSource) ctx.getBean(ResourceBundleMessageSource.class);
			String message = null, welcome = null, data = null, currency = null;
			Locale locale = null;

			switch (choice) {

				case 1 -> {
					locale = Locale.US;
					System.out.println("Country : " + locale.getCountry());
					System.out.println("Language : " + locale.getLanguage());
				}
	
				case 2 -> {
					locale = Locale.UK;
					System.out.println("Country : " + locale.getCountry());
					System.out.println("Language : " + locale.getLanguage());
				}
	
				case 3 -> {
					locale = new Locale("marathi", "my");
					System.out.println("Country : " + locale.getCountry());
					System.out.println("Language : " + locale.getLanguage());
				}
	
				case 4 -> {
					locale = new Locale("aa", "test");
				}
	
				case 5 -> {
					System.out.println("Thanks for visiting.");
					sc.close();
					((ClassPathXmlApplicationContext) ctx).close();
					System.exit(0);
				}
	
				default -> {
					System.out.println("Invalid Choice.");
				}

			}
			
			message = ms.getMessage("msg.pay", null, locale);
			welcome = ms.getMessage("msg.welcome", new Object[] {"Pratik Bharambe"}, locale);
			data = ms.getMessage("msg.data", null, locale);
			currency = ms.getMessage("msg.currency", null, locale);
			
			System.out.println("Pay : " + message);
			System.out.println("Welcome : " + welcome);
			System.out.println("Data : " + data);
			System.out.println("Currency : " + currency);
			System.out.println();

		} while (choice != 5);

	}

}
