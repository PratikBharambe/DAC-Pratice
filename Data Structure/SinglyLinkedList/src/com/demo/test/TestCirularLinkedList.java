package com.demo.test;

import com.demo.linkedlist.CircularLinkedList;

public class TestCirularLinkedList {
	
	public static void main(String[] args) {
		
		CircularLinkedList lst = new CircularLinkedList();
		
		lst.addNode(1);
		lst.addNode(2);
		lst.addNode(3);
		lst.addNode(4);
		lst.addNode(5);
		
		lst.displayData();
		
		System.out.println("----------------------------");
		
		lst.addByPosition(10, 1);
		lst.displayData();
		
		lst.addByPosition(20, 3);
		lst.displayData();
		
		lst.addByPosition(30, 8);
		lst.displayData();
		
		lst.addByPosition(40, 12);
		lst.displayData();
		
		System.out.println("----------------------------");
		
		// 10 -> 1 -> 20 -> 2 -> 3 -> 4 -> 5 -> 30 -> Head.
		
		lst.deleteByPosition(1);
		lst.displayData();
		
		// 1 -> 20 -> 2 -> 3 -> 4 -> 5 -> 30 -> Head.
		
		lst.deleteByPosition(3);
		lst.displayData();
		
		// 1 -> 20 -> 3 -> 4 -> 5 -> 30 -> Head.
		
		lst.deleteByPosition(6);
		lst.displayData();
		
		// 1 -> 20 -> 3 -> 4 -> 5 -> Head.
		
		lst.deleteByPosition(10);
		lst.displayData();
		
		
	}

}
