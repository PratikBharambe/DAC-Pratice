package com.demo.test;

import com.demo.beans.Employee;
import com.demo.linkedlist.EmplyeeLinkedList;

public class TestEmployeeList {

	public static void main(String[] args) {
		
		EmplyeeLinkedList lst = new EmplyeeLinkedList();
		
		lst.addNewNode(new Employee(1, "Tulja", "xxxxxxxx"));
		lst.addNewNode(new Employee(2, "Pratik", "yyyyyyyyy"));
		lst.addNewNode(new Employee(3, "Aadesh", "zzzzzzzzzz"));
		lst.addNewNode(new Employee(4, "shweta", "trttttttttt"));
		
		lst.displayData();
		
//		lst.deleteById(1);
//		lst.deleteById(2);
		lst.deleteById(4);
		lst.displayData();
		
		lst.searchById(3);
		lst.searchById(6);
		
	}
	
}
