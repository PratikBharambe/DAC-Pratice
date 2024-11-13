package com.demo.linkedlist;

public class SinglyLinkedListWeighted {

	class Node {
		int data;
		int weight;
		Node next;

		public Node(int data, int weight) {
			this.data = data;
			this.weight = weight;
			this.next = null;
		}
	}

	Node head;

	public SinglyLinkedListWeighted() {
		this.head = null;
	}

	public void insertNode(int data, int weight) {
		Node newNode = new Node(data, weight);
		if (head == null) {
			head = newNode;
		} else {
			newNode.next = head;
			head = newNode;
		}
	}

	public void displayList() {
		if (head == null) {
			System.out.println("List is empty.");
		} else {
			Node temp = head;
			while (temp != null) {
				System.out.print("( " + temp.data + ", " + temp.weight + " ) -> ");
				temp = temp.next;
			}
			System.out.println("Null.\n");
		}
	}

}
