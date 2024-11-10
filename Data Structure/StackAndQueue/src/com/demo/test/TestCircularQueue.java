package com.demo.test;

import com.demo.queue.MyCricularQueue;

public class TestCircularQueue {
	public static void main(String[] args) {
		
		MyCricularQueue cq = new MyCricularQueue(5);
		
		cq.enqueue(10);
		cq.enqueue(20);
		cq.enqueue(30);
		cq.enqueue(40);
		cq.enqueue(50);
		
		cq.enqueue(60);

		System.out.println("Value is " + cq.dequeue());
		System.out.println("Value is " + cq.dequeue());
		System.out.println("Value is " + cq.dequeue());
		
		
		cq.enqueue(60);
		cq.enqueue(70);
		
		
		
	}
}
