package com.demo.test;

import com.demo.linkedlist.DoublyCircularLinkedList;

public class TestDoublyCircularLinkedList {

	public static void main(String[] args) {

		DoublyCircularLinkedList lst = new DoublyCircularLinkedList();

		lst.addNode(1);
		lst.addNode(2);
		lst.addNode(3);
		lst.addNode(4);
		lst.addNode(5);

		lst.displayData();

		System.out.println("-----------------------------------------");

		lst.addByPosition(10, 1);
		lst.displayData();

		lst.addByPosition(20, 3);
		lst.displayData();

		lst.addByPosition(30, 8);
		lst.displayData();

		lst.addByPosition(40, 12);
		lst.displayData();

		System.out.println("-----------------------------------------");

		// 10 -> 1 -> 20 -> 2 -> 3 -> 4 -> 5 -> 30 -> Head.

		lst.deletByPosition(1);
		lst.displayData();

		// 1 -> 20 -> 2 -> 3 -> 4 -> 5 -> 30 -> Head.

		lst.deletByPosition(3);
		lst.displayData();

		// 1 -> 20 -> 3 -> 4 -> 5 -> 30 -> Head.

		lst.deletByPosition(6);
		lst.displayData();

		// 1 -> 20 -> 3 -> 4 -> 5 -> Head.

		lst.deletByPosition(10);
		lst.displayData();

		System.out.println("-----------------------------------------");

		int pos = lst.searchByValue(5); // tested for 3, 10, 5
		if (pos != -1)
			System.out.println("The value is present at position : " + pos);
		else
			System.out.println("The value is not present in linked list");

		System.out.println("-----------------------------------------");

		int data = lst.searchByPosition(2); // tested for 2, 10, 5
		if (data != -1)
			System.out.println("The value present at position is : " + data);
		else
			System.out.println("The position is beyond the limit.");
		
	}

}
