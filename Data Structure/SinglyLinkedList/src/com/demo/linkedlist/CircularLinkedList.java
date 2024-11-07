package com.demo.linkedlist;

public class CircularLinkedList {

	class Node {
		int data;
		Node next;

		Node(int data) {
			this.data = data;
			this.next = null;
		}
	}

	Node head, tail;

	public CircularLinkedList() {
		super();
		head = null;
		tail = null;
	}

	public void addNode(int data) {
		Node newnode = new Node(data);
		if (head == null) {
			head = newnode;
			head.next = head;
			tail = newnode;
		} else {
			tail.next = newnode;
			tail = newnode;
			tail.next = head;
		}
	}

	public void addByPosition(int data, int pos) {
		if (head == null) {
			// if head is null
			System.out.println("List is empty.");
		} else {
			Node newnode = new Node(data);
			if (pos == 1) {
				// id position is one then add at before head node
				newnode.next = head;
				head = newnode;
				tail.next = newnode;
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
					
					/*
					if (temp.next != head) {
						newnode.next = temp.next;
						temp.next = newnode;
					} else {
						newnode.next = temp.next;
						temp.next = newnode;
						tail = newnode;
					}
					*/
					
					// Generalized solution for add in between and add at end 
					
					if (temp.next == head)
						tail = newnode;
					newnode.next = temp.next;
					temp.next = newnode;

				} else {
					// if position is beyond the size of linked list
					System.out.println("Position is beyond the limit.");
				}

			}
		}
	}
	
	public void deleteByPosition( int pos ) {
		if(head == null)
			System.out.println("list is empty.");
		else {
			if ( pos == 1 ) {
				// if position is 1
				Node temp = head;
				head = head.next;
				tail.next = temp.next;
				temp.next = null;
				temp = null;
			} else {
				Node prev = null;
				Node temp = head;
				int i = 1;
				for(; temp.next != head && i <= pos - 1 ; i++ ) {
					prev = temp;
					temp = temp.next;
				}
				if(i > pos -1) {
					
					// // normal flow for adding new node in between and at last
					/*
					// if position is in between 
					if(temp.next != head) {
						prev.next = temp.next;
						temp.next = null;
						temp = null;
					} else {
						// if position is at the end
						tail = prev.next;
						prev.next = temp.next;
						temp.next = null;
						temp = null;
					}
					*/
					
					// Generalized solution for add in between and add at end 
					
					if (temp.next == head ) {
						tail = prev.next;
					}
					prev.next = temp.next;
					temp.next = null;
					temp = null;
					
				}else {
					// if position is beyond the size of linked list
					System.out.println("Position is beyond the limit.");
				}
			}
		}
	}

	public void displayData() {
		if (head == null) {
			System.out.println("List is empty.");
		} else {
			Node temp = head;
			while (temp.next != head) {
				System.out.print(temp.data + " -> ");
				temp = temp.next;
			}
			System.out.println(temp.data + " -> Head.\n");

		}
	}

}
