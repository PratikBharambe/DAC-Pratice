package com.demo.service;

public class SinglySortedLinkedListService {
	// Class Node for the linked list
	class Node {
		// Fields in the node of linked list
		int data;
		Node next;

		// Constructor to initialize Node class Object
		Node(int data) {
			this.data = data;
			this.next = null;
		}
	}

	// Head node of linked list from where whole linked list is accessible
	Node head;

	// Constructor of SinglyLinkedListService class to initialize head of linked
	// list as null
	public SinglySortedLinkedListService() {
		head = null;
	}

	// Method to data into list in sorted manner
	public void addInSortedOrder(int data) {
		// Creating new Node to insert into the list
		Node newNode = new Node(data);
		// checking whether linked is empty or not
		if (head == null) {
			// if list in empty then add newNode at head
			head = newNode;
			// after adding newNode terminate the method
			return;
		}
		// if the list is not empty then
		// create a temporary node and a previous node to traverse over linked list
		Node temp = head, prev = null;
		// Checking whether the data in head is greater than the given value
		if(head.data > data) {
			// if head.data is greater than given data to insert then add data in linked list
			newNode.next = head;
			head = newNode;
		} else {
			// if value is not to added at head then 
			// Traverse till node where newNode to get added
			while(temp != null && temp.data < data) {
				prev = temp;
				temp = temp.next;
			}
			// when the node found where newNode to be added then add newNode
			newNode.next = prev.next;
			prev.next = newNode;
		}
	}

	// Method to display all nodes of Linked list
	public void displayLinkedList() {
		// Check whether linked list is empty or not
		if (head == null) {
			// if the linked list empty then terminate the method execution
			System.out.println("Linked List is Empty.");
			return;
		}
		// Create a temporary node to traverse linked list
		Node temp = head;
		// Traverse till last node of linked list is != null
		while (temp != null) {
			// Print data from list and traverse to the next node
			System.out.print(temp.data + " -> ");
			temp = temp.next;
		}
		System.out.println("Null.");
	}
}
