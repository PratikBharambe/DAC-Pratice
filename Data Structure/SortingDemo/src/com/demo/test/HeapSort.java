package com.demo.test;

import java.util.Arrays;

public class HeapSort {

	public static void main(String[] args) {
		int[] arr = { 1, 12, 9, 5, 6, 10 };
		System.out.println("Before sorting");
		System.out.println(Arrays.toString(arr));
		heapsort(arr);
		System.out.println("After sorting");
		System.out.println(Arrays.toString(arr));

	}

	private static void heapsort(int[] arr) {
		int n = arr.length;
		// converts entire tree in to max heap --->heapify the tree
		for (int i = (n / 2) - 1; i >= 0; i--) {
			heapify(arr, n, i);
		}
		// displaying maxheap
		System.out.println(Arrays.toString(arr));

		// swap first value with last value
		for (int i = n - 1; i > 0; i--) {
			int temp = arr[0];
			arr[0] = arr[i];
			arr[i] = temp;
			heapify(arr, i, 0);
			System.out.println("Sorted " + i);
			System.out.println(Arrays.toString(arr));
		}

	}

	// it will convert a tree whose parent is at i th index position
	private static void heapify(int[] arr, int n, int i) {
		// find largest among parent left and right
		int largest = i;
		int left = 2 * i + 1;
		int right = 2 * i + 2;
		// compare left and parent , if left is with in bound
		if (left < n && arr[left] > arr[largest]) {
			largest = left;
		}
		if (right < n && arr[right] > arr[largest]) {
			largest = right;
		}
		// swap if the parent is not largest
		if (largest != i) {
			int temp = arr[i];
			arr[i] = arr[largest];
			arr[largest] = temp;
			heapify(arr, n, largest);
		}
	}

}
