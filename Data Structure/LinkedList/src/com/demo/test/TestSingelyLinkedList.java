package com.demo.test;

import com.demo.service.SinglyLinkedListService;

public class TestSingelyLinkedList {

	public static void main(String[] args) {

		// Creating object of SinglyLinkedListService of access functionalities of
		// linked list
		SinglyLinkedListService lst = new SinglyLinkedListService();

		// Adding data to new nodes
		lst.addNode(5);
		lst.addNode(7);
		lst.addNode(3);
		lst.addNode(6);

		// Print linked list
		lst.displayLinkedList();

		// Adding data to give position and print linked list
		lst.addAtPosition(10, 1);
		lst.displayLinkedList();

		// Adding data to give position and print linked list
		lst.addAtPosition(20, 3);
		lst.displayLinkedList();

		// Adding data to give position and print linked list
		lst.addAtPosition(30, 6);
		lst.displayLinkedList();

		// Adding data to give position and print linked list
		lst.addAtPosition(40, 8);
		lst.displayLinkedList();

		// delete data with given value and print the linked list
		lst.deleteByValue(40);
		lst.displayLinkedList();

		// delete data with given value and print the linked list
		lst.deleteByValue(5);
		lst.displayLinkedList();

		// delete data with given value and print the linked list
		lst.deleteByValue(60);
		lst.displayLinkedList();

		// delete data with given position and print the linked list
		lst.deleteFromPosition(1);
		lst.displayLinkedList();

		// delete data with given position and print the linked list
		lst.deleteFromPosition(3);
		lst.displayLinkedList();

		// delete data with given position and print the linked list
		lst.deleteFromPosition(6);
		lst.displayLinkedList();
		
		// Checking whether the value is present in list or not
		int position = lst.searchByValue(50); // tested for values 7, 6, 20, & 50
		if(position != -1) {
			System.out.println("Postion of the value is : " + position);
		} else {
			System.out.println("Value is not present in linked list.");
		}

	}

}
