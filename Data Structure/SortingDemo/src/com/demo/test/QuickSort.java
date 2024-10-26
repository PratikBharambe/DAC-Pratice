package com.demo.test;

import java.util.Arrays;

public class QuickSort {

	public static void main(String[] args) {
<<<<<<< HEAD
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
=======
		
		int[] arr = {5, 3, 8, 1, 4, 6, 2, 7};
		
		System.out.println("Given array is : ");
		System.out.println(Arrays.toString(arr));
		
		quickSort(arr, 0, arr.length-1);
		
		System.out.println("Array after sorting is : ");
		System.out.println(Arrays.toString(arr));
		
	}

	
	// Method to sort array using quick sort 
	private static void quickSort(int[] arr, int first, int last) {
		
		int pivot, i, j, temp;
		
		// checking whether first index value is less than last index of array
		if(first < last) {
			
			// Setting first element as pivot & i and last element as j
			pivot = first;
			i = first;
			j = last;
			
			// if i is less than j enter into while loop
			while(i < j) {
				
				// increment i until arr[i] <= pivot value
				while(arr[i] <= arr[pivot] && i < last)
					i++;
				
				// decrement j until arr[j] >= pivot value
				while(arr[j] >= arr[pivot] && j > first)
					j--;
				
				// if i < j then swap the values of arr[i] & arr[j]
				if(i < j) {
					temp = arr[i];
>>>>>>> 96a9bc665f69c3fb3797637b918608bcc10da61c
					arr[i] = arr[j];
					arr[j] = temp;
				}
			}
<<<<<<< HEAD
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
=======
			
			// Swap pivot element with arr[j] to place pivot at its position
			temp = arr[pivot];
			arr[pivot] = arr[j];
			arr[j] = temp;
			
			// calling quickSort method to sort left and right subtree
			quickSort(arr, first, j-1);
			quickSort(arr, j+1, last);
			
		}
		
	}
	
}
>>>>>>> 96a9bc665f69c3fb3797637b918608bcc10da61c
