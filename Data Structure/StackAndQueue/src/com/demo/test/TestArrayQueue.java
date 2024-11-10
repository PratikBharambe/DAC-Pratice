package com.demo.test;

import com.demo.queue.MyArrayQueue;

public class TestArrayQueue {

	public static void main(String[] args) {
		
		
		MyArrayQueue q = new MyArrayQueue(5);
		
		q.enqueue(1);
		q.enqueue(2);
		q.enqueue(3);
		q.enqueue(4);
		q.enqueue(5);
		
		q.enqueue(6);
		
		System.out.println("The data : " + q.dequeue());
		System.out.println("The data : " + q.dequeue());
		
		q.enqueue(7);
		q.enqueue(8);

	}

}
