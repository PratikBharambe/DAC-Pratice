package com.demo.stack;

public class MyStackChar {
	
	// array top behave like a stack
		private char[] arr;
		// top variable to access top index value of the array
		private int top;

		public MyStackChar() {
			arr = new char[10];
			top = -1;
		}

		public MyStackChar(int size) {
			arr = new char[size];
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
		public void push(char data) {
			if (isFull())
				System.out.println("Stack is full.");
			else {
				top++;
				arr[top] = data;
			}
		}

		// Method to return the popped value from the stack
		public char pop() {
			if (isEmpty())
				System.out.println("Stack is empty.");
			else {
				char popedValue = arr[top];
				top--;
				return popedValue;
			}
			return '$';
		}

}
