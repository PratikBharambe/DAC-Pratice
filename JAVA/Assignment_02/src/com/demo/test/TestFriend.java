package com.demo.test;

import java.util.Scanner;

import com.demo.beans.Friend;
import com.demo.service.FriendService;
import com.demo.service.FriendServiceImpl;

public class TestFriend {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		FriendService sservice = new FriendServiceImpl();
		int choice = 0;
		do {
			System.out.println("1. Display All Friend");
			System.out.println("2. Search by id");
			System.out.println("3. Search by name");
			System.out.println("4. Display all friend with a particular hobby");
			System.out.println("5. Exit");
			System.out.println("Enter Your Choice : ");
			choice = sc.nextInt();

			switch (choice) {
			case 1 -> {
				Friend[] fArray = sservice.getAll();
				for (Friend fname : fArray) {
					if (fname != null)
						System.out.println(fname);
					else
						break;
				}
			}

			case 2 -> {
				System.out.println("Enter id to search :");
				int id = sc.nextInt();
				Friend f = sservice.getById(id);
				if (f != null)
					System.out.println(f);
				else
					System.out.println("not found");
			}

			case 3 -> {
				System.out.println("Enter first name to search");
				String nm = sc.next();
				Friend[] fArr = sservice.getByName(nm);
				for (Friend fname : fArr) {
					if (fname != null)
						System.out.println(fname);
					else
						break;
				}
			}
			
			case 4 -> {
				System.out.println("Enter hobby to search friends : ");
				String hobby = sc.next();
				Friend[] fArr = sservice.getByHobby(hobby);
				for (Friend fhob : fArr) {
					if (fhob != null)
						System.out.println(fhob);
					else
						break;
				}
			}
			
			case 5 -> {
				System.out.println("Thanks for visiting ..................");
			}
			
			default -> {
				System.out.println("Invalid choice !!!!!!!");
			}
			}
		} while (choice != 5);
	}
}
