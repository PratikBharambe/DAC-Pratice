package com.demo.test;

import com.demo.bst.BinarySearchTree;

public class TestBinarySearchTree {

	public static void main(String[] args) {
		
		BinarySearchTree bst = new BinarySearchTree();
		
		int[] data = {30, 40, 25, 22, 42, 35, 36, 7, 10, 27, 21, 40, 45};
		
		for (int i = 0; i < data.length; i++) {
			bst.insert(data[i]);
		}
		
		System.out.println("\nin order traversal is : ");
		bst.inOrder();
		
		System.out.println("\npre order traversal is : ");
		bst.preOrder();
		
		System.out.println("\npost order traversal is : ");
		bst.postOrder();
		
		System.out.println();
		if(bst.search(23)) {
			System.out.println("Data found");
		} else {
			System.out.println("Data not found");
		}
		
	}
	
}
