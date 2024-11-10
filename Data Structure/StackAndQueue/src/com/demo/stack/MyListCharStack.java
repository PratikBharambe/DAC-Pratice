package com.demo.stack;

public class MyListCharStack {
	private Node top;

	class Node {
		char data;
		Node next;

		public Node(char data) {
			this.data = data;
			this.next = null;
		}
	}

	public MyListCharStack() {
		top = null;
	}

	public boolean isEmpty() {
		return top == null;
	}

	public void push(char n) {
		Node newnode = new Node(n);
		if (isEmpty()) {
			top = newnode;
		} else {
			newnode.next = top;
			top = newnode;
		}

	}

	public char pop() {
		if (isEmpty()) {
			System.out.println("stack is empty");
			return '$';
		} else {
			Node temp = top;
			top = top.next;
			temp.next = null;
			return temp.data;
		}
	}
}
