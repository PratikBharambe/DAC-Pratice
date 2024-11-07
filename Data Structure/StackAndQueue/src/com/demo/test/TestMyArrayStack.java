package com.demo.test;

import com.demo.stack.MyArrayStack;
import com.demo.stack.MyListStack;

@SuppressWarnings("unused")
public class TestMyArrayStack {

	public static void main(String[] args) {
		
//		MyArrayStack stack = new MyArrayStack(5);
		MyListStack stack= new MyListStack();
		
		// pushing data into stack
		stack.push(1);
		stack.push(2);
		stack.push(3);
		stack.push(4);
		stack.push(5);
		stack.push(6); // not inserted as stack is full in case of stack using array

		// to print the stack in reverse order.
		while(!stack.isEmpty())
			System.out.print(stack.pop() + "  ");
		System.out.println();
	}

}
