package com.demo.test;

import java.util.Scanner;

import com.demo.graph.Graph;

public class AdjacencyList {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.print("Enter number of vertices : ");
		int noOfVertices = sc.nextInt();

		Graph graph = new Graph(noOfVertices);

		addEdge(graph, noOfVertices);

		System.out.println();
		graph.displayList();
		
		graph.DSF(0);
		
		graph.BSF(0);

	}

	private static void addEdge(Graph graph, int noOfVertices) {

		Scanner sc = new Scanner(System.in);

		for (int i = 0; i < noOfVertices; i++) {
			for (int j = 0; j < noOfVertices; j++) {
				System.out.print("Is there edge between " + i + " and " + j + " ( 1 or 0 )  : ");
				int isEdge = sc.nextInt();
				if (isEdge != 0) {
					graph.addEdge(i, j);
				}
			}
		}

	}

}
