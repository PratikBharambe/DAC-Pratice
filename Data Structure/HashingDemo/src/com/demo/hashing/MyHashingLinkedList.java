package com.demo.hashing;

public class MyHashingLinkedList {

	class Node {
		int data;
		Node next;

		public Node(int data) {
			this.data = data;
			this.next = null;
		}
	}

	// head of the linked list
	private Node head;

	// constructor to initialize newly created lined list as empty
	public MyHashingLinkedList() {
		this.head = null;
	}

	// Method to add new node in the linked list
	public void addNode(int data) {
		Node newNode = new Node(data);
		if (head == null) {
			head = newNode;
		} else {
			Node temp = head;
			while (temp.next != null) {
				temp = temp.next;
			}
			temp.next = newNode;
		}
	}

	// method to delete the node having valuer given by user
	public void deleteByValue(int value) {
		if (head == null) {
			System.out.println("List is empty");
		} else {
			Node temp = head;
			if (head.data == value) {
				head = head.next;
				temp.next = null;
				temp = null;
			} else {
				Node prev = null;
				while (temp != null && temp.data != value) {
					prev = temp;
					temp = temp.next;
				}
				if (temp != null && temp.data == value) {
					prev.next = temp.next;
					temp.next = null;
					temp = null;
				}
			}
			System.out.println("Value deleted successfully.");
		}
	}
	
	public boolean serachByValue(int value) {
		if(head == null) {
			System.out.println("List is empty.");
			return false;
		} else {
			Node temp = head;
			while(temp != null) {
				if(temp.data == value) {
					return true;
				}
			}
		}
		return false;
	}
	
	public void displayData() {
		if(head == null) {
			System.out.println("List is empty.");
		} else {
			Node temp = head;
			while(temp!=null) {
				System.out.print(temp.data + " -> ");
				temp = temp.next;
			}
			System.out.println(" Null.");
		}
	}

}
