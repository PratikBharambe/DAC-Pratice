package com.demo.graph;

import com.demo.linkedlist.SinglyLinkedListWeighted;

public class GraphWeighted {

	SinglyLinkedListWeighted[] adjacencyList;

	public GraphWeighted(int noOfVertices) {
		adjacencyList = new SinglyLinkedListWeighted[noOfVertices];
		for (int i = 0; i < adjacencyList.length; i++) {
			adjacencyList[i] = new SinglyLinkedListWeighted();
		}
	}

	public void addEdge(int source, int destination, int weight) {
		adjacencyList[source].insertNode(destination, weight);
	}

	public void displayList() {
		for (int i = 0; i < adjacencyList.length; i++) {
			System.out.print(i + " : ");
			adjacencyList[i].displayList();
		}
	}

}
