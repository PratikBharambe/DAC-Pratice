package com.demo.test;

import java.util.Arrays;

public class MergeArray {
	public static void merge(int[] arr1, int[] arr2, int[] arr3) {
		int i = 0, j = 0, k = 0;
		while (i < arr1.length && j < arr2.length) {
			if (arr1[i] < arr2[j]) {
				arr3[k] = arr1[i];
				i++;
				k++;
			} else {
				arr3[k] = arr2[j];
				j++;
				k++;
			}
		}
		// copy remaining part of arr1 into arr3
		while (i < arr1.length) {
			arr3[k] = arr1[i];
			i++;
			k++;
		}
		// copy remaining part of arr2 into arr3
		while (j < arr2.length) {
			arr3[k] = arr2[j];
			j++;
			k++;
		}
	}

	public static void main(String[] args) {
		int[] arr1 = { 3, 4, 10, 15, 17, 18, 30, 34, 35, 37 };
		int[] arr2 = { 2, 10, 12, 14, 16, 17, 20, 21, 25, 27 };
		int[] arr3 = new int[arr1.length + arr2.length];
		merge(arr1, arr2, arr3);
		System.out.println(Arrays.toString(arr3));

	}

}