package com.demo.test;

import java.util.Scanner;

public class AdjacencyMatrix {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.print("Enter the number of vertices : ");
		int noOfVertices = sc.nextInt();

		int adjacencyMatrix[][] = new int[noOfVertices][noOfVertices];

		acceptAdjacencyMatrix(adjacencyMatrix);
		displayAdjacencyMatrix(adjacencyMatrix);

		sc.close();

	}

	private static void displayAdjacencyMatrix(int[][] adjacencyMatrix) {
		for (int i = 0; i < adjacencyMatrix.length; i++) {
			for (int j = 0; j < adjacencyMatrix[i].length; j++) {
				System.out.print(adjacencyMatrix[i][j] + " ");
			}
			System.out.println();
		}
	}

	private static void acceptAdjacencyMatrix(int[][] adjacencyMatrix) {
		@SuppressWarnings("resource")
		Scanner sc = new Scanner(System.in);
		for (int i = 0; i < adjacencyMatrix.length; i++) {
			for (int j = 0; j < adjacencyMatrix[i].length; j++) {
				System.out.print("Is there edge between " + i + " and " + j + " ( 1 or 0 )  : ");
				adjacencyMatrix[i][j] = sc.nextInt();
			}
		}
	}

}
