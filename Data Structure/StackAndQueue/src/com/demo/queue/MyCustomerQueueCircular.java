package com.demo.queue;

import java.util.Arrays;

import com.demo.beans.Customer;

public class MyCustomerQueueCircular {

	Customer arr[];
	int front;
	int rear;

	public MyCustomerQueueCircular() {
		super();
		arr = new Customer[10];
		front = -1;
		rear = -1;
	}

	public MyCustomerQueueCircular(int size) {

		arr = new Customer[size];
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

	public void enqueue(Customer val) {
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

	public Customer dequeue() {
		if (isEmpty()) {
			System.out.println("Queue is Empty");
		} else {
			Customer n = arr[front];
			arr[front] = null;
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
		return null;
	}

}
