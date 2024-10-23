package com.demo.test;

import com.demo.service.ArrayService;

public class TestArray {

	public static void main(String[] args) {
		
		int[] arr = {12, 31, 54, 67, 76};
		int max = ArrayService.findMax(arr);
		System.out.println("Maximum Element in array is : "+max);
		
		int min = ArrayService.findMin(arr);
		System.out.println("Minimum Element in array is : "+min);
		
		int smax = ArrayService.findSecMax(arr);
		System.out.println("Second Maximum Element in array is : "+smax);
		
		int primeSum = ArrayService.findPrimeSum(arr);
		System.out.println("Prime number in array is "+primeSum);
		
		int pos = ArrayService.sequentialSearch(arr, 88);
		if (pos != -1)
			System.out.println("Searched Element Found at : "+pos);
		else
			System.out.println("Element not found!");
	}

}
