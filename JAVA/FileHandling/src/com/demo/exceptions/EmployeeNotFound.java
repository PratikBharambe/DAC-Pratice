package com.demo.exceptions;

@SuppressWarnings("serial")
public class EmployeeNotFound extends Exception{
	public EmployeeNotFound(String message) {
		super(message);
	}
}
