package com.demo.test;

import java.util.Arrays;

public class SelectionSort {

	public static void main(String[] args) {
		
		int[] arr= {23,4,1,5,20,36,78,3,7};
		System.out.println("The given array is : ");
		System.out.println(Arrays.toString(arr));
		selectionSort(arr);
		System.out.println("The After array is : ");
		System.out.println(Arrays.toString(arr));
		
	}

	// method to sort array using selection sort
	private static void selectionSort(int[] arr) {
		
		// iterating over the array 
		for(int i = 0 ; i < arr.length - 1 ; i++) {
			int min = i;
			for(int j = i + 1 ; j < arr.length ; j++) {
				// finding the index of minimum value in unsorted array
				if(arr[j] < arr[min])
					min = j;
			}
			
			// swapping the value of min to the minimum value in unsorted array
			int temp = arr[min];
			arr[min] = arr[i];
			arr[i] = temp;
		}
		
	}
	
}
