package com.demo.queue;

import java.util.Arrays;

public class MyArrayQueue {

	int[] arr;
	int front;
	int rear;

	public MyArrayQueue() {
		front = 0;
		rear = 0;
		arr = new int[10];
	}

	public MyArrayQueue(int size) {
		front = 0;
		rear = 0;
		arr = new int[size];
	}

	public boolean isEmoty() {
		return (front == rear);
	}

	public boolean isFull() {
		return rear == arr.length;
	}

	public void enqueue(int data) {
		if (isFull()) {
			System.out.println("Queue is full");
		} else {
			arr[rear] = data;
			rear++;
		}
		System.out.println(Arrays.toString(arr));
	}
	
	public int dequeue() {
		if(isEmoty()) {
			System.out.println("Queue is empty.");
		} else {
			int n = arr[front];
			arr[front] = 0;
			front++;
			System.out.println(Arrays.toString(arr));
			return n;
		}
		System.out.println(Arrays.toString(arr));
		return -1;
	}


}
