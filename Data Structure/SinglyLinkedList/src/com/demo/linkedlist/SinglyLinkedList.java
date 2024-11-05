package com.demo.linkedlist;

public class SinglyLinkedList {
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

	public SinglyLinkedList() {
		head = null;
	}

	// add newnode at the end
	public void addNode(int val) {
		// to create a new node
		Node newnode = new Node(val);
		// if list is empty, then add at the begining
		if (head == null) {
			head = newnode;
		} else {
			Node temp = head;
			while (temp.next != null) {
				temp = temp.next;
			}
			temp.next = newnode;
		}

	}

	public int searchbyvalue(int val) {
		if (head == null) {
			System.out.println("List is empty");
		} else {
			Node temp = head;
			int pos = 0;
			while (temp != null && temp.data != val) {
				temp = temp.next;
				pos++;
			}
			if (temp != null) {
				return pos;
			}

		}
		return -1;
	}

	public void addByPosition(int val, int pos) {
		if (head == null && pos > 1) {
			System.out.println("list is empty");
		} else {
			Node newnode = new Node(val);
			// add before current head
			if (pos == 1) {
				newnode.next = head;
				head = newnode;
			} else {
				Node temp = head;
				// place the temp at the node, after which we want to add data
				for (int i = 1; temp != null && i <= pos - 2; i++) {
					temp = temp.next;
				}
				if (temp != null) {
					newnode.next = temp.next;
					temp.next = newnode;
				} else {
					System.out.println("The given position beyond the limit of list");
				}
			}
		}
	}

	public void addByValue(int val) {

	}

	// delete the node by value
	public void deleteByValue(int val) {
		// check whether list is empty
		if (head == null) {
			System.out.println("the list is empty");
		} else {
			Node temp = head, prev = null;
			// check whetehr to delete thefirst node
			if (head.data == val) {
				head = temp.next;
				temp.next = null;
				temp = null;
			} else {
				// delete in between or last node
				while (temp != null && temp.data != val) {
					prev = temp;
					temp = temp.next;
				}
				if (temp != null) {
					prev.next = temp.next;
					temp.next = null;
					temp = null;
				} else {
					System.out.println("data not found");
				}
			}
		}

	}

	public void deleteByPosition(int pos) {
		if (head == null) {
			System.out.println("list is empty");
		} else {
			Node temp = head, prev = null;
			if (pos == 1) {
				head = temp.next;
				temp.next = null;
				temp = null;
			} else {
				for (int i = 1; temp != null && i <= pos - 1; i++) {
					prev = temp;
					temp = temp.next;
				}
				if (temp != null) {
					prev.next = temp.next;
					temp.next = null;
					temp = null;
				} else {
					System.out.println("position is beyond the length of the list");
				}
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
