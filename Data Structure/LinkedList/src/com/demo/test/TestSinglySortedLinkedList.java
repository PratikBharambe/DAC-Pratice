package com.demo.test;

import com.demo.service.SinglySortedLinkedListService;

public class TestSinglySortedLinkedList {

	public static void main(String[] args) {
		
		SinglySortedLinkedListService lst = new SinglySortedLinkedListService();
		
		lst.addInSortedOrder(5);
		lst.addInSortedOrder(9);
		lst.addInSortedOrder(7);
		lst.addInSortedOrder(3);
		
		lst.displayLinkedList();

	}

}
