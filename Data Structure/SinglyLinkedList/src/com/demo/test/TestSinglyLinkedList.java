package com.demo.test;

import com.demo.linkedlist.SinglyLinkedList;

public class TestSinglyLinkedList {

	public static void main(String[] args) {
		SinglyLinkedList lst = new SinglyLinkedList();
		lst.addNode(3);
		lst.addNode(5);
		lst.addNode(7);
		lst.addNode(8);
		lst.displaydata();
		lst.addByPosition(100, 2);
		lst.displaydata();
		/*
		 * lst.addByPosition(500, 1); lst.displaydata(); lst.addByPosition(600, 7);
		 * lst.displaydata(); lst.addByPosition(700, 10); lst.displaydata();
		 */
//		lst.deleteByValue(300);
		lst.deleteByPosition(12); // test for 1, 3, 5
		lst.displaydata();
	}

}
