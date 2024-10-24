package com.demo.test;

import java.util.Arrays;

public class QuickSort {

	public static void main(String[] args) {
		int[] arr = { 13, 18, 27, 2, 19, 25 };
		System.out.println("Before sorting");
		System.out.println(Arrays.toString(arr));
		int n = arr.length - 1;
		quicksort(arr, 0, n);
		System.out.println("After sorting");
		System.out.println(Arrays.toString(arr));

	}

	private static void quicksort(int[] arr, int first, int last) {
		int pivot = first;
		int i = first;
		int j = last;
		// minimum size od array should be 2
		if (first < last) {
			while (i < j) {
				while (arr[i] <= arr[pivot] && i < last) {
					i++;
				}
				while (j > pivot && arr[j] > arr[pivot]) {
					j--;
				}
				if (i < j) {
					// swap i and j
					int temp = arr[i];
					arr[i] = arr[j];
					arr[j] = temp;
				}
			}
			// swap pivot with j
			int temp = arr[pivot];
			arr[pivot] = arr[j];
			arr[j] = temp;
			System.out.println("pivot : " + arr[j] + "-----" + j);
			System.out.println(Arrays.toString(arr));
			quicksort(arr, first, j - 1);
			quicksort(arr, j + 1, last);

		}

	}

}