package com.demo.service;

public class SinglyLinkedListService {

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
	public SinglyLinkedListService() {
		head = null;
	}

	// Method to add new node to last linked list
	public void addNode(int data) {
		// Creating new Node to insert into the list
		Node newNode = new Node(data);
		// checking whether linked is empty or not
		if (head == null) {
			// if list in empty then add newNode at head
			head = newNode;
		} else {
			// if list is not empty
			// Create a temporary node to traverse linked list
			Node temp = head;
			// Traverse till last node of linked list
			while (temp.next != null) {
				temp = temp.next;
			}
			// add the newNode to the last of the linked list
			temp.next = newNode;
		}
	}

	// Method to add data at the given position
	public void addAtPosition(int data, int position) {
		// Creating new Node to insert into the list
		Node newNode = new Node(data);
		// checking whether linked is empty or not
		if (head == null) {
			// if list in empty then add newNode at head
			head = newNode;
			// after adding newNode terminate the method
			return;
		}
		// if position = 1 then add newNode at first position
		if (position == 1) {
			newNode.next = head;
			head = newNode;
			// after adding newNode terminate the method
			return;
		}
		// To add node at the given position
		// Create a temporary node to traverse linked list
		Node temp = head;
		// Traverse till previous node of position where newNode to be added
		for (int i = 1; temp != null && i <= position - 2; i++) {
			temp = temp.next;
		}
		// if temporary node != null the add data to given position
		if (temp != null) {
			newNode.next = temp.next;
			temp.next = newNode;
		} else {
			// temporary node == null that means position is beyond the size of linked list
			System.out.println("Position is beyond size of linked list.");
		}
	}

	// Method to delete a node by value given
	public void deleteByValue(int value) {
		// checking whether linked is empty or not
		if (head == null) {
			// if the linked list empty then terminate the method execution
			System.out.println("The linked list is empty.");
			return;
		}
		// if the list is not empty then
		// create a temporary node and a previous node to traverse over linked list
		Node temp = head, prev = null;
		// check whether the data is present at the first node i.e head node
		if (head.data == value) {
			// if value is present at head node
			// delete the first node from linked list
			head = head.next;
			temp.next = null;
			temp = null;
		} else {
			// if value present other than first node of linked list
			// traverse temporary node till data of node == value
			while (temp != null && temp.data != value) {
				prev = temp;
				temp = temp.next;
			}
			// if temporary node != null means node is present in the linked list
			if (temp != null) {
				prev.next = temp.next;
				temp.next = null;
				temp = null;
			} else {
				// if temporary node is null means the value is not present in linked list
				System.out.println("Value is not present in linked list.");
			}
		}
	}

	// Method to delete a node from given position
	public void deleteFromPosition(int position) {
		// Check whether linked list is empty or not
		if (head == null) {
			// if the linked list empty then terminate the method execution
			System.out.println("Linked List is Empty.");
			return;
		}
		// if the list is not empty then
		// create a temporary node and a previous node to traverse over linked list
		Node temp = head, prev = null;
		// check whether the position is at first node i.e head node
		if (position == 1) {
			// if position is present at head node
			// delete the first node from linked list
			head = temp.next;
			temp.next = null;
			temp = null;
		} else {
			// if position present other than first node of linked list
			// Traverse temporary node till position node
			for (int i = 1; temp != null && i <= position - 1; i++) {
				prev = temp;
				temp = temp.next;
			}
			// if temporary node != null means node is present in the linked list
			if (temp != null) {
				prev.next = temp.next;
				temp.next = null;
				temp = null;
			} else {
				// if temporary node is null means the value is not present in linked list
				System.out.println("Position given is beyond size of linked list.");
			}
		}
	}

	// Method to search value from linked list which returns the position of the
	// node from linked list
	public int searchByValue(int value) {
		// Check whether linked list is empty or not
		if (head == null) {
			// if the linked list empty then return -1 i.e value is not present in linked
			// list
			return -1;
		}
		// if the linked list is not empty then
		// Create a temporary node to traverse linked list
		Node temp = head;
		// create a position variable to return position if node is present in linked
		// list
		int position = 1;
		// Traverse till the node where temporary node .data = value
		while (temp != null && temp.data != value) {
			temp = temp.next;
			// increment the position by one
			position++;
		}
		// if temporary node != null means value is present in linked list
		if (temp != null) {
			// return the value of the position
			return position;
		}
		// if temporary node == null means value is not present in linked list
		// then return -1 i.e value is not present in linked list
		return -1;
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
