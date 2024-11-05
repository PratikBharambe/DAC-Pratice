package com.demo.linkedlist;

import com.demo.beans.Employee;

public class EmplyeeLinkedList {

	class Node {
		Employee data;
		Node next;

		Node(Employee data) {
			this.data = data;
			this.next = null;
		}
	}
	
	Node head;

	public EmplyeeLinkedList() {
		super();
		head = null;
	}
	
	
	public void addNewNode(Employee obj) {
		Node newnode = new Node(obj);
		if(head == null)
			head = newnode;
		else {
			Node temp = head;
			while(temp.next != null) {
				temp  = temp.next;
			}
			temp.next = newnode;
		}
		
	}
	
	public void deleteById(int id) {
		if (head == null) {
			System.out.println("List is empty.");
		}else {
			Node temp = head;
			if(head.data.getEmpId() == id) {
				head= head.next;
				temp.next = null;
				temp = null;
			}else {
				Node prev = null;
				while(temp != null && temp.data.getEmpId() != id) {
					prev = temp;
					temp = temp.next;
				}
				if(temp != null && temp.data.getEmpId() == id) {
					prev.next = temp.next;
					temp.next = null;
					temp = null;
				}else {
					System.out.println("Id not found " + id);
				}
			}
		}
	}
	
	public void searchById(int id) {
		if (head == null) {
			System.out.println("List is empty.");
		}else {
			Node temp = head;
			while(temp != null && temp.data.getEmpId() != id) {
				temp = temp.next;
			}
			if(temp != null && temp.data.getEmpId() == id) {
				System.out.println(temp.data);
			}else {
				System.out.println("Id not found " + id);
			}
		}
	}
	
	public void displayData() {
		if(head == null)
			System.out.println("List is empty.");
		else {
			Node temp = head;
			while(temp != null) {
				System.out.println(temp.data);
				temp = temp.next;
			}
			System.out.println("------------------------------------");
		}
	}

}
