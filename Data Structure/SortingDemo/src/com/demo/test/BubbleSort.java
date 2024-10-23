package com.demo.test;

import java.util.Arrays;

public class BubbleSort {
	
	private static void bubbleSort(int[] arr) {
		
		for (int i = 0; i < arr.length; i++) {
			int swapCount = 0;
			for (int j = 1; j < arr.length-i ; j++) {
				if(arr[j-1] > arr[j]) {
					int temp = arr[j];
					arr[j] = arr[j-1];
					arr[j-1] = temp;
					swapCount++;
				}
			}
			System.out.println("The array in " + (i+1) + "iteration is ");
			System.out.println(Arrays.toString(arr));
			System.out.println("The swap count in " + (i+1) + "iteration is " + swapCount + "\n");
			if(swapCount == 0) {
				return;
			}
		}
		
	}

	public static void main(String[] args) {
		
		int[] arr = {2, 7, 5, 12, 65, 30, 25, 17};
		
		System.out.println("Given Array is : ");
		System.out.println(Arrays.toString(arr) + "\n");
		
		bubbleSort(arr);

		System.out.println("Sorted Array is : ");
		System.out.println(Arrays.toString(arr) + "\n");
		
	}

}
