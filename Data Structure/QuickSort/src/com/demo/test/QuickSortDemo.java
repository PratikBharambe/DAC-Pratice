package com.demo.test;

import java.util.Arrays;

public class QuickSortDemo {
	public static void main(String[] args) {
		int[] arr = {9, 7, 5, 12, 65, 30, 25, 17};
		quickSort(arr, 0, arr.length-1);
	}

	public static void quickSort(int[] list,int first,int last){
		 int pivot,i,j,temp;
		 if(first < last){
			 pivot = first;
			 i = first;
			 j = last;
			 while(i < j){
				 while(list[i] <= list[pivot] && i < last)
					 i++;
				 while(list[j] >= list[pivot] && j > first)
				 	j--;
				 if(i < j){
					 temp = list[i];
					 list[i] = list[j];
					 list[j] = temp;
				 }
			 }
			 temp = list[pivot];
			 list[pivot] = list[j];
			 list[j] = temp;
			 
			 System.out.println(Arrays.toString(list) + "\n");
			 
			 quickSort(list,first,j-1);
			 quickSort(list,j+1,last);
		 }
	}
}