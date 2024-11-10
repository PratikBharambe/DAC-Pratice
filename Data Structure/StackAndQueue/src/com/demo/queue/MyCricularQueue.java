package com.demo.queue;

import java.util.Arrays;

public class MyCricularQueue {

	int arr[];
	int front;
	int rear;

	public MyCricularQueue() {
		super();
		arr = new int[10];
		front = -1;
		rear = -1;
	}

	public MyCricularQueue(int size) {

		arr = new int[size];
		front = -1;
		rear = -1;
	}

	public boolean isEmpty() {
		return front == -1;

	}

	public boolean isFull() {
		if (front == 0 && rear == arr.length - 1)
			return true;
		if (front == rear + 1)
			return true;
		return false;
	}

	public void enqueue(int val) {
		if (isFull()) {
			System.out.println("Queue is full");
		} else {
			rear = (rear + 1) % arr.length;
			if (front == -1)
				front = 0;
			arr[rear] = val;
		}
		System.out.println(Arrays.toString(arr));
	}

	public int dequeue() {
		if (isEmpty()) {
			System.out.println("Queue is Empty");
		} else {
			int n = arr[front];
			arr[front] = 0;
			if (front == rear) {
				front = -1;
				rear = -1;

			} else {
				front = (front + 1) % arr.length;
			}
			System.out.println(Arrays.toString(arr));
			return n;
		}
		System.out.println(Arrays.toString(arr));
		return -1;
	}
	
}
