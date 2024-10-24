package com.demo.test;

import java.util.Arrays;

public class InsertionSort {

	public static void main(String[] args) {
		int[] arr= {65,35,26,14,23,12,91};
		System.out.println("before sorting");
		System.out.println(Arrays.toString(arr));
		insertionsort(arr);
		System.out.println("After sorting");
		System.out.println(Arrays.toString(arr));

	}

	private static void insertionsort(int[] arr) {
		int n=arr.length;
		for(int i=1;i<n;i++) {
			//place j at the end of sorted portion of the array
			int j=i-1;
			int key=arr[i];
			while(j>=0 && arr[j]>key) {
				//shift values one location 0n the right side 
				arr[j+1]=arr[j];
				j--;
			}
			arr[j+1]=key;
			System.out.println("iteration : "+i);
			System.out.println(Arrays.toString(arr));
		}
		
	}

}