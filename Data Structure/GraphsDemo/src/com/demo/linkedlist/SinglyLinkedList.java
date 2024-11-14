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
	
	public int[] getAdjecentNodes(int[] arr) {
		if(head == null) {
			return arr;
		} else {
			Node temp = head;
			for(int i = 0 ; temp != null && i < arr.length; i++) {
				arr[i] = temp.data;
				temp = temp.next;
			}
		}
		return arr;
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
