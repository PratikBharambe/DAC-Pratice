package com.demo.linkedlist;

public class SinglyLinkedList {

	class Node {
		int data;
		Node next;

		public Node(int data) {
			this.data = data;
			this.next = null;
		}
	}

	Node head;

	public SinglyLinkedList() {
		this.head = null;
	}

	public void insertNode(int data) {
		Node newNode = new Node(data);
		if (head == null) {
			head = newNode;
		} else {
			newNode.next = head;
			head = newNode;
		}
	}
	
	public void displayList() {
		if(head == null) {
			System.out.println("List is empty.");
		} else {
			Node temp = head;
			while(temp != null) {
				System.out.print(temp.data + " -> ");
				temp = temp.next;
			}
			System.out.println("Null.\n");
		}
	}

}
