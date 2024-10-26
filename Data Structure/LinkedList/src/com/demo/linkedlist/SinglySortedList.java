package com.demo.linkedlist;

import com.demo.linkedlist.SinglyLinkedList.Node;

public class SinglySortedList {
	class Node {
		int data;
		Node next;

		public Node(int data) {
			super();
			this.data = data;
			this.next = null;
		}

	}

	Node head;

	public SinglySortedList() {

		head = null;
	}

	public void addInSortedOrder(int val) {
		Node newnode = new Node(val);
		if (head == null) {
			head = newnode;
		} else {
			Node temp = head, prev = null;
			if (head.data > val) {
				newnode.next = head;
				head = newnode;
			} else {
				while (temp != null && temp.data < val) {
					prev = temp;
					temp = temp.next;
				}
				newnode.next = prev.next;
				prev.next = newnode;
			}
		}

	}

	// to display values of all nodes
	public void displaydata() {
		if (head == null) {
			System.out.println("list is empty");
		} else {
			Node temp = head;
			while (temp != null) {
				System.out.println(temp.data + "  ");
				temp = temp.next;
			}
			System.out.println("------------------------------------------");
		}
	}
}
