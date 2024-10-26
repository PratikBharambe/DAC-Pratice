package com.demo.test;

import java.util.Arrays;

public class CountingSort {

	public static void main(String[] args) {
		int[] arr = { 6, 5, 4, 8, 6, 9, 5, 3, 4, 6, 9 };
		System.out.println("The given array is : ");
		System.out.println(Arrays.toString(arr));
		countingSort(arr);
		System.out.println("The Sorted array is : ");
		System.out.println(Arrays.toString(arr));
	}

	private static void countingSort(int[] arr) {

		// variable to store largest element from the array
		int max = 0;

		// to find the largest element from given array
		for (int i = 0; i < arr.length; i++) {
			if (arr[i] > max)
				max = arr[i];
		}

		// creating array to store unique count of elements present in the given array
		int[] countArray = new int[max + 1];

		// storing count of element
		for (int i = 0; i < arr.length; i++) {
			countArray[arr[i]]++;
		}

		// storing the cumulative sum for counrArray
		for (int i = 1; i <= max; i++) {
			countArray[i] += countArray[i - 1];
		}

		// creating a temporary array to store sorted array
		int[] outputArray = new int[arr.length];

		// finding the correct position of element in array and store it to output array
		for (int i = 0; i < arr.length; i++) {
			outputArray[countArray[arr[i]] - 1] = arr[i];
			countArray[arr[i]]--;
		}

		// storing the values of temporary array to original array
		for (int i = 0; i < arr.length; i++) {
			arr[i] = outputArray[i];
		}

	}
}
