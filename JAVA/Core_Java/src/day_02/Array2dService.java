package day_02;

import java.util.Scanner;

public class Array2dService {
	// Method to print menu and return choice from user
	public static int getMenu() {
		System.out.println();
		System.out.println("1. Accept Data");
		System.out.println("2. Display Data");
		System.out.println("3. Addition of all elements");
		System.out.println("4. Add Row-wise elements");
		System.out.println("5. Add Column-wise elements");
		System.out.println("6. Find Maximum element");
		System.out.println("7. Find Minimum element");
		System.out.println("8. Find Minimum element row-wise");
		System.out.println("9. Find Minimum element column-wise");
		System.out.println("10. Find Maximum element row-wise");
		System.out.println("11. Find Maximum element column-wise");
		System.out.println("12. Exit");
		System.out.println("Enter your Choice : ");
		Scanner sc = new Scanner(System.in);
		return sc.nextInt();
	}

	// Method to accept data (case 1)
	public static void acceptData(int[][] arr) {
		Scanner sc = new Scanner(System.in);
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				System.out.print("Enter Elements for " + i + " " + j + " position : ");
				arr[i][j] = sc.nextInt();
			}
		}
	}

	// Method to print array (case 2)
	public static void displayArray(int[][] arr) {
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				System.out.print(arr[i][j] + "\t");
			}
			System.out.println();
		}
	}

	// Method to add all elements in array (case 3)
	public static int addAllElements(int[][] arr) {
		int sum = 0;
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				sum += arr[i][j];
			}
		}
		return sum;
	}

	// Method to add elements row-wise (case 4)
	public static int[] addRowWiseElements(int[][] arr) {
		int sumArr[] = new int[arr.length];
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				sumArr[i] += arr[i][j];
			}
		}
		return sumArr;
	}

	// Method to add elements column-wise (case 5)
	public static int[] addColumnWiseElements(int[][] arr) {
		int sumArr[] = new int[arr[0].length];
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				sumArr[j] += arr[i][j];
			}
		}
		return sumArr;
	}

	// Method to find maximum element in array (case 6)
	public static int getMaxElement(int[][] arr) {
		int max = 0;
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				if (max < arr[i][j])
					max = arr[i][j];
			}
		}
		return max;
	}

	// Method to find minimum element in array (case 7)
	public static int getMinElement(int[][] arr) {
		int min = 1;
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				if (min > arr[i][j])
					min = arr[i][j];
			}
		}
		return min;
	}

	// Method to find minimum element row-wise (case 8)
	public static int[] getMinEleRowWise(int[][] array) {
		int[] rowMinElements = new int[array.length];
		for (int i = 0; i < array.length; i++) {
			rowMinElements[i] = array[i][0]; // Assume the first element is the minimum
			for (int j = 1; j < array[i].length; j++) {
				if (array[i][j] < rowMinElements[i]) {
					rowMinElements[i] = array[i][j]; // Update min if a smaller element is found
				}
			}
		}

		return rowMinElements;
	}

	// Method to find minimum element column-wise (case 9)
	public static int[] getMinEleColumnWise(int[][] array) {
		int[] colMinElements = new int[array.length];

		int numRows = array.length;
		int numCols = array[0].length;

		for (int j = 0; j < numCols; j++) {
			colMinElements[j] = array[0][j]; // Assume the first element in the column is the minimum
			for (int i = 1; i < numRows; i++) {
				if (array[i][j] < colMinElements[j]) {
					colMinElements[j] = array[i][j]; // Update min if a smaller element is found
				}
			}
		}
		return colMinElements;
	}

	// Method to find maximum element row-wise (case 10)
	public static int[] getMaxEleRowWise(int[][] arr) {
		int[] rowMaxElements = new int[arr.length];
		for (int i = 0; i < arr.length; i++) {
			rowMaxElements[i] = 0;
			for (int j = 0; j < arr[i].length; j++) {
				if (rowMaxElements[i] < arr[i][j])
					rowMaxElements[i] = arr[i][j];
			}
		}
		return rowMaxElements;
	}

	// Method to find maximum element column-wise (case 11)
	public static int[] getMaxEleColumnWise(int[][] arr) {
		int[] colMaxElements = new int[arr.length];
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				if (colMaxElements[j] < arr[i][j])
					colMaxElements[j] = arr[i][j];
			}
		}
		return colMaxElements;

	}
}
