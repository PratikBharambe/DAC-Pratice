package com.demo.linkedlist;

public class DoublyCircularLinkedList {

	class Node {
		int data;
		Node next, prev;

		Node(int data) {
			this.data = data;
			this.next = null;
			this.prev = null;
		}

	}

	Node head, tail;

	public DoublyCircularLinkedList() {
		this.head = null;
		this.tail = null;
	}

	public void addNode(int data) {
		Node newnode = new Node(data);
		// if linked list is empty
		if (head == null) {
			head = newnode;
			tail = newnode;
			newnode.next = tail.next;
			newnode.prev = tail;
		} else {
			// Add new node at the last position
			tail.next = newnode;
			newnode.prev = tail;
			newnode.next = head;
			tail = newnode;
			head.prev = tail;
		}
	}

	public void addByPosition(int data, int pos) {
		if (head == null) {
			// list is empty
			System.out.println("List is empty.");
		} else {
			Node newNode = new Node(data);
			if (pos == 1) {
				// add new node at the first position
				newNode.next = head;
				head.prev = newNode;
				tail.next = newNode;
				newNode.prev = tail;
				head = newNode;
			} else {
				Node temp = head;
				int i = 1;
				// for loop to traverse till the node from next the
				// new node to be added
				for (; temp.next != head && i <= pos - 2; i++) {
					temp = temp.next;
				}

				// checking whether the position is inside the limit
				// of linked list or not
				if (i > pos - 2) {
					
					// normal flow for adding new node in between and at last
					/*
					if(temp.next != head) {
						// add new node in between the list
						newNode.next = temp.next;
						newNode.prev = temp;
						temp.next.prev = newNode;
						temp.next = newNode;
					} else {
						// ad new node at the last position
						newNode.next = head;
						newNode.prev = temp;
						temp.next = newNode;
						head.prev = newNode;
						tail = newNode;
					}
					*/
					
					// generalized solution for above if else block
					
					if(temp.next == head) {
						tail = newNode;
					}
					newNode.next = temp.next;
					newNode.prev = temp;
					temp.next.prev = newNode;
					temp.next = newNode;
					
				} else {
					// if position is beyond the size of linked list
					System.out.println("Position is beyond the limit.");
				}

			}
		}
	}
	
	public void deletByPosition(int pos) {
		if ( head == null ) {
			// List is empty
			System.out.println("List is empty.");
		} else {
			if (pos == 1) {
				// deleting head node 
				Node temp = head;
				head = head.next;
				tail.next = temp.next;
				temp.next.prev = tail;
				temp.next = null;
				temp.prev = null;
				temp = null;
			} else {
				Node temp = head;
				int i = 1;
				// for loop to traverse till the node which node to be deleted
				for (; temp.next != head && i <= pos - 1; i++) {
					temp = temp.next;
				}
				if(i > pos-1) {
					
					// normal flow for deleting new node in between and at last
					/*
					if( temp.next != head ) {
						// delete node present in between the list
						temp.prev.next = temp.next;
						temp.next.prev = temp.prev;
						temp.next = null;
						temp.prev = null;
						temp = null;
					} else {
						// delete last node of the linked list
						tail = temp.prev;
						temp.prev.next = temp.next;
						temp.next.prev = temp.prev;
						temp.next = null;
						temp.prev = null;
						temp = null;
					}
					*/
					
					// generalized solution for above if else block
					if(temp.next == head ) {
						tail = temp.prev;
					}
					temp.prev.next = temp.next;
					temp.next.prev = temp.prev;
					temp.next = null;
					temp.prev = null;
					temp = null;
					
				} else {
					// if position is beyond the size of linked list
					System.out.println("Position is beyond the limit.");
				}
			}
		}
	}
	
	public int searchByValue(int val) {
		if(head == null) {
			System.out.println("List is empty.");
			return -1;
		} else {
			Node temp = head;
			int i = 1;
			for(; temp.next != head ; i++) {
				if(temp.data == val)
					return i;
				temp = temp.next;
			}
			if(temp.data == val)
				return i;
		}
		return -1;
	}
	
	public int searchByPosition(int pos) {
		if( head == null ) {
			System.out.println("The list is empty.");
		} else {
			Node temp = head;
			int i = 1;
			for(; temp.next != head ; i++) {
				if(i == pos)
					return temp.data;
				temp = temp.next;
			}
			if(i == pos)
				return temp.data;
		}
		return -1;
	}

	public void displayData() {
		if (head == null) {
			System.out.println("The List is empty.");
		} else {
			Node temp = head;
			while (temp.next != head) {
				System.out.print(temp.data + " -> ");
				temp = temp.next;
			}
			System.out.print(temp.data + " -> Head.\n");
		}
	}

}
