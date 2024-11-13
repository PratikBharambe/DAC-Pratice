package com.demo.test;

import java.util.Scanner;

import com.demo.graph.GraphWeighted;

public class AdjacencyListWeighted {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.print("Enter number of vertices : ");
		int noOfVertices = sc.nextInt();

		GraphWeighted graph = new GraphWeighted(noOfVertices);

		addEdge(graph, noOfVertices);

		System.out.println();
		System.out.println(" Format : (edge, weight)");
		graph.displayList();

	}

	private static void addEdge(GraphWeighted graph, int noOfVertices) {

		Scanner sc = new Scanner(System.in);

		for (int i = 0; i < noOfVertices; i++) {
			for (int j = 0; j < noOfVertices; j++) {
				System.out.print("Is there edge between " + i + " and " + j + " ( WeightInIntegeFormat or 0 )  : ");
				int weight = sc.nextInt();
				if (weight != 0) {
					graph.addEdge(i, j, weight);
				}
			}
		}

	}

}
