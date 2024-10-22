package com.demo.test;

import java.util.Scanner;

public class TestDynamicArray {

	public static void main(String[] args) {

		int[] arr[] = new int[3][];

		Scanner sc = new Scanner(System.in);

		// for accepting the data for dynamic array from user ...........
		for (int i = 0; i < arr.length; i++) {
			System.out.print("Enter the no of columns in row " + i + " : ");
			int col = sc.nextInt();
			arr[i] = new int[col];
			for (int j = 0; j < arr[i].length; j++) {
				System.out.print("Enter data for row " + i + " col " + j + " : ");
				arr[i][j] = sc.nextInt();
			}
		}

		// To print the data in the dynamic array ..............
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				System.out.print(arr[i][j] + "\t");
			}
			System.out.println();
		}
		
		sc.close();
	}

}
