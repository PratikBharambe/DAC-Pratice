package com.demo.test;

import java.util.Arrays;

public class MergeSort {

	public static void main(String[] args) {
		int[] arr = { 23, 1, 2, 56, 34, 2, 7, 8, 9 };
		System.out.println("The Given array is : ");
		System.out.println(Arrays.toString(arr));
		mergeSort(arr, 0, arr.length - 1);
		System.out.println("The Sorted array is : ");
		System.out.println(Arrays.toString(arr));
	}

	private static void mergeSort(int[] arr, int start, int end) {

		if (start < end) {
			int mid = (start + end) / 2;
			mergeSort(arr, start, mid);
			mergeSort(arr, mid + 1, end);
			merge(arr, start, mid, end);
		}

	}

	private static void merge(int[] arr, int start, int mid, int end) {

		int i, j, k;

		// length of left array
		int ll = mid - start + 1;
		// length of second array
		int lr = end - mid;

		int[] leftArray = new int[ll];
		int[] rightArray = new int[lr];

		// copy left portion of array to leftArray
		i = 0;
		for (int a = start; a <= mid; a++) {
			leftArray[i] = arr[a];
			i++;
		}

		// copy right portion of array to rightArray
		j = 0;
		for (int b = mid + 1; b <= end; b++) {
			rightArray[j] = arr[b];
			j++;
		}

		i = 0;
		j = 0;
		k = start;

		// to merge the both array in sorted manner
		while (i < ll && j < lr) {
			if (leftArray[i] < rightArray[j]) {
				arr[k] = leftArray[i];
				i++;
				k++;
			} else {
				arr[k] = rightArray[j];
				j++;
				k++;
			}
		}

		// adding the remaining items of leftArray into array
		while (i < ll) {
			arr[k] = leftArray[i];
			i++;
			k++;
		}

		// adding remaining items of rightArray into array
		while (j < lr) {
			arr[k] = rightArray[j];
			k++;
			j++;
		}

	}

}
