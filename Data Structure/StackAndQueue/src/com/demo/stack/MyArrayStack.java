package com.demo.stack;

// Stack implementation using array
public class MyArrayStack {

	// array top behave like a stack
	private int[] arr;
	// top variable to access top index value of the array
	private int top;

	public MyArrayStack() {
		arr = new int[10];
		top = -1;
	}

	public MyArrayStack(int size) {
		arr = new int[size];
		top = -1;
	}

	// Method to check is the stack is empty or not
	public boolean isEmpty() {
		return (top == -1);
	}

	// Method to check if the given stack is full or not
	public boolean isFull() {
		return (top == arr.length - 1);
	}

	// Method to push the value inside the stack
	public void push(int data) {
		if (isFull())
			System.out.println("Stack is full.");
		else {
			top++;
			arr[top] = data;
		}
	}

	// Method to return the popped value from the stack
	public int pop() {
		if (isEmpty())
			System.out.println("Stack is empty.");
		else {
			int popedValue = arr[top];
			top--;
			return popedValue;
		}
		return -1;
	}

}
