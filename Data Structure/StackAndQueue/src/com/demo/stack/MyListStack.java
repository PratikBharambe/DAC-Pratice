package com.demo.stack;

public class MyListStack {
	private Node top;

	class Node {
		int data;
		Node next;

		public Node(int data) {
			this.data = data;
			this.next = null;
		}
	}

	public MyListStack() {
		top = null;
	}

	public boolean isEmpty() {
		return top == null;
	}

	public void push(int n) {
		Node newnode = new Node(n);
		if (isEmpty()) {
			top = newnode;
		} else {
			newnode.next = top;
			top = newnode;
		}

	}
	public int pop() {
		if(isEmpty()){
			System.out.println("stack is empty");
			return -1;
		}else {
			Node temp = top;
			top=top.next;
			temp.next = null;
			return temp.data;
		}
	}

}
