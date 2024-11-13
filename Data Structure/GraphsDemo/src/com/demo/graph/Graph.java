package com.demo.graph;

import com.demo.linkedlist.SinglyLinkedList;

public class Graph {
	
	SinglyLinkedList[] adjacencyList;
	
	public Graph(int noOfVertices) {
		adjacencyList = new SinglyLinkedList[noOfVertices];
		for (int i = 0; i < adjacencyList.length; i++) {
			adjacencyList[i] = new SinglyLinkedList();
		}
	}
	
	public void addEdge(int source, int destination) {
		adjacencyList[source].insertNode(destination);
	}
	
	public void displayList() {
		for (int i = 0; i < adjacencyList.length; i++) {
			System.out.print(i + " : ");
			adjacencyList[i].displayList();
		}
	}

}
