package com.demo.linkedlist;

public class DoublyLinkedList {

	class Node {

		int data;
		Node prev, next;

		Node(int data) {
			this.data = data;
			this.prev = null;
			this.next = null;
		}

	}

	Node head;

	public DoublyLinkedList() {
		super();
		head = null;
	}

	public void addNode(int data) {
		Node newNode = new Node(data);
		if (head == null) {
			head = newNode;
		} else {
			Node temp = head;
			while (temp.next != null)
				temp = temp.next;
			temp.next = newNode;
			newNode.prev = temp;
		}
	}

	public void addByPosition(int data, int pos) {
		Node newnode = new Node(data);
		if (pos == 1) {
			if (head == null) {
				head = newnode;
			} else {
				Node temp = head;
				newnode.next = temp;
				temp.prev = newnode;
				head = newnode;
			}
		} else {
			Node temp = head;
			for (int i = 1; temp != null && i <= pos - 2; i++) {
				temp = temp.next;
			}
			if (temp != null) {
				newnode.next = temp.next;
				if (temp.next != null)
					temp.next.prev = newnode;
				temp.next = newnode;
				newnode.prev = temp;
			}
		}
	}

	public void addBeforeValue(int valToAdd, int val) {
		Node newnode = new Node(valToAdd);
		if (head == null) {
			head = newnode;
		} else {
			if (head.data == val) {
				Node temp = head;
				newnode.next = temp;
				temp.prev = newnode;
				head = newnode;
			} else {
				Node temp = head;
				while (temp != null && temp.data != val) {
					temp = temp.next;
				}
				if (temp != null) {
					newnode.next = temp;
					newnode.prev = temp.prev;
					temp.prev.next = newnode;
					temp.prev = newnode;
				} else {
					System.out.println("Value not found and not added.");
				}
			}
		}
	}

	public void addAfterValue(int valueToAdd, int val) {
		Node newNode = new Node(valueToAdd);
		if (head == null) {
			head = newNode;
		} else {
			Node temp = head;
			while (temp != null && temp.data != val) {
				temp = temp.next;
			}
			if (temp != null) {
				newNode.next = temp.next;
				newNode.prev = temp;
				if (temp.next != null)
					temp.next.prev = newNode;
				temp.next = newNode;
			} else {
				System.out.println("Value not found and not added.");
			}
		}
	}

	public void deleteByPosition(int pos) {
		if (pos == 1) {
			if (head == null) {
				System.out.println("List is empty.");
			} else {
				Node temp = head;
				head = temp.next;
				temp.next.prev = null;
				temp.next = null;
				temp = null;
			}
		} else {
			Node temp = head;
			for (int i = 1; temp != null && i <= pos - 1; i++) {
				temp = temp.next;
			}
			if (temp != null) {
				temp.prev.next = temp.next;
				if (temp.next != null)
					temp.next.prev = temp.prev;
				temp.next = null;
				temp.prev = null;
				temp = null;
			} else {
				System.out.println("Position is beyound limit.");
			}
		}
	}
	
	public int searchByValue(int val) {
		if(head == null)
			System.out.println("List is empty.");
		else {
			Node temp = head;
			for(int i = 1 ; temp != null ; i++) {
				if(temp.data == val)
					return i;
				temp = temp.next;
			}
		}
		return -1;
	}
	
	public int searchByPosition(int pos) {
		if(head == null)
			System.out.println("List is empty.");
		else {
			Node temp = head;
			for(int i = 1 ; temp != null ; i++) {
				if(i == pos)
					return temp.data;
				temp = temp.next;
			}
		}
		return -1;
	}

	public void displayData() {
		if (head == null) {
			System.out.println("The linked list iis empty.");
		} else {
			Node temp = head;
			while (temp != null) {
				System.out.print(temp.data + " -> ");
				temp = temp.next;
			}
			System.out.print("Null.\n");
		}
	}

}
