package com.demo.test;

import java.util.Scanner;

import com.demo.hashing.MyHashingLinkedList;

public class MyHasingDemo {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		final int SIZE = 7;

		MyHashingLinkedList[] lst = new MyHashingLinkedList[SIZE];

		for (int i = 0; i < lst.length; i++) {
			lst[i] = new MyHashingLinkedList();
		}

		displayList(lst);

		int choice = 0;

		do {
			System.out.println("1. Add Data.");
			System.out.println("2. Search Data.");
			System.out.println("3. Delete");
			System.out.println("4. Exit");
			System.out.print("Enter your Choice : ");

			choice = sc.nextInt();

			switch (choice) {

			case 1 -> {
				System.out.print("Enter Data to insert : ");
				int data = sc.nextInt();
				addDataInHashtable(lst, data);
				displayList(lst);
			}

			case 2 -> {
				System.out.println("Enter data to search : ");
				int data = sc.nextInt();
				boolean flag = seacrhFromHahtable(lst, data);
				if (flag)
					System.out.println("Value found in list.");
				else
					System.out.println("Value is not present in list.");

			}

			case 3 -> {
				System.out.print("Enter data to delete : ");
				int data = sc.nextInt();
				deleteDataFromHashtable(lst, data);
				displayList(lst);
			}

			case 4 -> {
				System.out.println("Thanls for visiting ............");
				System.exit(0);
			}

			default -> {
				System.out.println("Invalid choice ........");
			}

			}
			
		} while (choice != 4);

	}

	private static void addDataInHashtable(MyHashingLinkedList[] lst, int data) {
		int bucket = data % lst.length;
		lst[bucket].addNode(data);
	}

	private static void deleteDataFromHashtable(MyHashingLinkedList[] lst, int data) {
		int bucket = data % lst.length;
		lst[bucket].deleteByValue(data);
	}

	private static boolean seacrhFromHahtable(MyHashingLinkedList[] lst, int data) {
		int bucket = data % lst.length;
		return lst[bucket].serachByValue(data);
	}

	public static void displayList(MyHashingLinkedList[] hashtable) {
		System.out.println("--------------------------------------");
		for (int i = 0; i < hashtable.length; i++) {
			System.out.print(i + " --> ");
			hashtable[i].displayData();
			System.out.println();
		}
		System.out.println("--------------------------------------");
	}

}
