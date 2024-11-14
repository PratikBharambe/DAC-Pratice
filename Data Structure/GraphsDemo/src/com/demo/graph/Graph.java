package com.demo.graph;

import com.demo.linkedlist.SinglyLinkedList;
import com.demo.queue.MyListQueue;
import com.demo.stack.MyListStack;

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

	public void DSF(int start) {
		System.out.println("DSF Traversal : ");
		boolean[] visited = new boolean[adjacencyList.length];
		for (int i = 0; i < visited.length; i++) {
			visited[i] = false;
		}
		MyListStack stack = new MyListStack();
		stack.push(start);
		while (!stack.isEmpty()) {
			int vertex = stack.pop();
			if (!visited[vertex]) {
				System.out.print(vertex + "  ");
				visited[vertex] = true;
				int[] adjecentNodes = new int[adjacencyList.length];
				for (int i = 0; i < adjecentNodes.length; i++) {
					adjecentNodes[i] = -1;
				}
				adjacencyList[vertex].getAdjecentNodes(adjecentNodes);
				for (int i = 0; i < adjecentNodes.length; i++) {
					if (adjecentNodes[i] != -1 && !visited[adjecentNodes[i]]) {
						stack.push(adjecentNodes[i]);
					}
				}
			}
		}
		System.out.println();
	}
	
	public void BSF(int start) {
		System.out.println("BSF Traversal : ");
		boolean[] visited = new boolean[adjacencyList.length];
		for (int i = 0; i < visited.length; i++) {
			visited[i] = false;
		}
		MyListQueue queue = new MyListQueue();
		visited[start] = true;
		queue.enqueue(start);
		while(!queue.isEmpty()) {
			int vertex = queue.dequeue();
			System.out.print(vertex + "  ");
			int[] adjecentNodes = new int[adjacencyList.length];
			for (int i = 0; i < adjecentNodes.length; i++) {
				adjecentNodes[i] = -1;
			}
			adjacencyList[vertex].getAdjecentNodes(adjecentNodes);
			for(int i = 0 ; adjecentNodes[i] != -1 && i< adjecentNodes.length ; i++) {
				if(!visited[adjecentNodes[i]]) {
					visited[adjecentNodes[i]] = true;
					queue.enqueue(adjecentNodes[i]);
				}
			}
		}
	}

}
