package com.demo.queue;

public class MyListQueue {
	class Node {
		int data;
		Node next;

		public Node(int data) {
			this.data = data;
			this.next = null;
		}
	}

	private Node front, rear;

	public MyListQueue() {
		front = null;
		rear = null;
	}

	public boolean isEmpty() {
		return (front == null );
	}

	public void enqueue(int data) {
		Node newNode = new Node(data);
		if (isEmpty()) {
			front = newNode;
			rear = newNode;
		} else {
			rear.next = newNode;
			rear = newNode;
		}
	}

	public int dequeue() {
		if (isEmpty()) {
			System.out.println("Queue is empty.");
			return -1;
		} else {
			Node temp = front;
			front = front.next;
			temp.next = null;
			return temp.data;
		}
	}

}
