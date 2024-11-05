package com.demo.test;

import com.demo.linkedlist.SinglySortedList;

public class TestSinglySortedList {
	
	public static void main(String[] args) {
		SinglySortedList lst=new SinglySortedList();
		lst.addInSortedOrder(5);
		lst.addInSortedOrder(9);
		lst.addInSortedOrder(7);
		lst.addInSortedOrder(3);
		lst.deletByValue(3);
		lst.displaydata();
	}

}
