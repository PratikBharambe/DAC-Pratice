package com.demo.test;

import com.demo.linkedlist.DoublyLinkedList;

public class TestDoublyLinkedList {

	public static void main(String[] args) {
		
		DoublyLinkedList lst = new DoublyLinkedList();
		
		lst.addNode(1);
		lst.addNode(2);
		lst.addNode(3);
		lst.addNode(4);
		lst.addNode(5);
		
		lst.displayData();
		
		lst.addByPosition(12, 1);
		lst.displayData();
		
		lst.addByPosition(13, 3);
		lst.displayData();
		
		lst.addByPosition(14, 8);
		lst.displayData();
		
		System.out.println("-------------------------------------------------------------");
		
		lst.deleteByPosition(1);
		lst.displayData();
		
		lst.deleteByPosition(4);
		lst.displayData();
		
		lst.deleteByPosition(6);
		lst.displayData();
		
		lst.deleteByPosition(9);
		lst.displayData();
		
		System.out.println("-------------------------------------------------------------");
		
		// 1 -> 13 -> 2 -> 4 -> 5 -> Null.
		
		lst.addBeforeValue(12, 1);
		lst.displayData();
		
		lst.addBeforeValue(15, 2);
		lst.displayData();
		
		lst.addBeforeValue(15, 0);
		lst.displayData();
		
		System.out.println("-------------------------------------------------------------");
		
		/// 12 -> 1 -> 13 -> 15 -> 2 -> 4 -> 5 -> Null.
		
		lst.addAfterValue(20, 12);
		lst.displayData();

		lst.addAfterValue(30, 15);
		lst.displayData();
				
		lst.addAfterValue(30, 5);
		lst.displayData();
		
		lst.addAfterValue(30, 0);
		lst.displayData();
		
		System.out.println("-------------------------------------------------------------");
		
//		12 -> 20 -> 1 -> 13 -> 15 -> 30 -> 2 -> 4 -> 5 -> 30 -> Null.
		
		int pos = lst.searchByValue(30);
		if(pos != -1)
			System.out.println("The position is : " + pos);
		else 
			System.out.println("The value is not found in list.");
		
		System.out.println("-------------------------------------------------------------");
		
		int data = lst.searchByPosition(6);
		if(data != -1)
			System.out.println("The data is : " + data);
		else 
			System.out.println("position is beyond limit.");
		
		System.out.println("-------------------------------------------------------------");
		
		lst.displayDataInReverseOrder();
		
	}
	
}
