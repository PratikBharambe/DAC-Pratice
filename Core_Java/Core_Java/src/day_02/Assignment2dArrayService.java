package day_02;

import java.util.Scanner;

public class Assignment2dArrayService {
	
	// method to print menu and return the user's choice
	public static int getMeun() {
		System.out.println("1. Accept matrices.");
		System.out.println("2. display matrices.");
		System.out.println("3. Get Addition of matrices.");
		System.out.println("4. Get Product of matrices.");
		System.out.println("5. Terminate Program.");
		System.out.print("Enter your choice : ");
		Scanner sc = new Scanner(System.in);
		return sc.nextInt();
	}

	// method to accept a 2D array
	public static void accept2dArray(int[][] arr) {
		Scanner sc = new Scanner(System.in);
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr.length; j++) {
				System.out.print("Enter data for : " + i + " " + j + " : ");
				arr[i][j] = sc.nextInt();
			}
		}
	}

	// method to print the array
	public static void print2dArray(int[][] arr) {
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr.length; j++) {
				System.out.print(arr[i][j] + "\t");
			}
			System.out.println();
		}
	}

	// to get addition of two matrices
	public static int[][] getAdditionOfMatrices(int[][] firstMatrix, int[][] secondMatrix) {
		int[][] resultMatrix = new int[firstMatrix.length][firstMatrix.length];
		for (int i = 0; i < firstMatrix.length; i++)
			for (int j = 0; j < secondMatrix.length; j++)
				resultMatrix[i][j] = firstMatrix[i][j] + secondMatrix[i][j];
		return resultMatrix;
	}

	// method to get multiplication of two matrices
	public static int[][] getProductOfTwoMatrices(int[][] firstMatrix, int[][] secondMatrix) {
		int[][] resultMatrix = new int[firstMatrix.length][firstMatrix.length];
		for (int i = 0; i < secondMatrix.length; i++) {
			for (int j = 0; j < secondMatrix.length; j++) {
				resultMatrix[i][j] = 0;
				for (int k = 0; k < secondMatrix.length; k++) {
					resultMatrix[i][j] += firstMatrix[i][k] * secondMatrix[k][j];
				}
			}
		}
		return resultMatrix;
	}

	// method to get transpose of the matrix
	private static int[][] getTransposeMatrix(int[][] arr) {
		int[][] resultMatrix = new int[arr.length][arr.length];
		for (int i = 0; i < resultMatrix.length; i++) {
			for (int j = 0; j < resultMatrix.length; j++) {
				resultMatrix[i][j] = arr[j][i];
			}
		}
		return resultMatrix;
	}

	// method to compare two matrices
	private static boolean compareTwoMatrices(int[][] firstMatrix, int[][] secondMatrix) {
		for (int i = 0; i < secondMatrix.length; i++)
			for (int j = 0; j < secondMatrix.length; j++)
				if (firstMatrix[i][j] != secondMatrix[i][j])
					return false;
		return true;
	}

	// method to check a matrix symmetric or not
	public static boolean isSymmetric(int[][] arr) {
		int transposeMatrix[][] = getTransposeMatrix(arr);
		return compareTwoMatrices(arr, transposeMatrix);
	}

}
