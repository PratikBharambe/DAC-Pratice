package com.demo.test;

import com.demo.queue.MyListQueue;

public class TestListQueue {
	
	public static void main(String[] args) {
		
		MyListQueue q = new MyListQueue();
		
		q.enqueue(10);
		q.enqueue(20);
		q.enqueue(30);
		q.enqueue(40);
		q.enqueue(50);
		
		while(!q.isEmpty()) {
			System.out.println(q.dequeue());
		}
		
	}
	
}
