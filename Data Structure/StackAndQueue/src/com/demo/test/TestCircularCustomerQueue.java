package com.demo.test;

import com.demo.beans.Customer;
import com.demo.queue.MyCustomerQueueCircular;

public class TestCircularCustomerQueue {
	public static void main(String[] args) {
		
		MyCustomerQueueCircular ccq = new MyCustomerQueueCircular(5);
		
		ccq.enqueue(new Customer(1, "Pratik", "Pune"));
		ccq.enqueue(new Customer(2, "Kunal", "Pune"));
		ccq.enqueue(new Customer(3, "Kruti", "Pune"));
		ccq.enqueue(new Customer(4, "Tulja", "Pune"));
		ccq.enqueue(new Customer(5, "Lalit", "Pune"));
		

		ccq.dequeue();
		ccq.dequeue();
		ccq.dequeue();
		
		ccq.enqueue(new Customer(6, "Jhon", "Pune"));
		
		
		
		
		
	}
}
