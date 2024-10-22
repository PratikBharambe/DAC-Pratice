package day_02;

import java.util.Scanner;

public class Test2dArray {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.print("Enter no of rows of array : ");
		int noOfRows = sc.nextInt();
		System.out.print("Enter no of columns of array : ");
		int noOfColumns = sc.nextInt();

		int[][] arr = new int[noOfRows][noOfColumns];
		int choice;

		do {

			choice = Array2dService.getMenu();

			switch (choice) {
			
			// case 1 to accept array from user
			case 1:
				Array2dService.acceptData(arr);
				break;

			// case 2 to display array  
			case 2:
				Array2dService.displayArray(arr);
				break;

			// case 3 to addition of all elements in array
			case 3:
				System.out.println("The addition of all elements is : " + Array2dService.addAllElements(arr));
				break;

			// case 4 to add all row wise elements in array 
			case 4:
				int[] rowAdd = Array2dService.addRowWiseElements(arr);
				System.out.println("The Addition of row wise elements is : ");
				for (int i = 0; i < rowAdd.length; i++)
					System.out.println(rowAdd[i] + "  ");
				break;

			// case 5 to add all column wise elements in array
			case 5:
				int[] colAdd = Array2dService.addColumnWiseElements(arr);
				System.out.println("The Addition of column wise elements is : ");
				for (int i = 0; i < colAdd.length; i++)
					System.out.println(colAdd[i] + "  ");
				break;

			// case 6 to find maximum element in array
			case 6:
				System.out.println("The largest element in array is : " + Array2dService.getMaxElement(arr));
				break;
				
			// case 7 to find minimum element in array
			case 7:
				System.out.println("The smallest element in array is : " + Array2dService.getMinElement(arr));
				break;
				
			// case 8 to find minimum element row wise
			case 8:
				int[] rowMin = Array2dService.getMinEleRowWise(arr);
				System.out.println("Row wise minimum elements are : ");
				for (int i = 0; i < rowMin.length; i++)
					System.out.println(rowMin[i] + "  ");
				break;
			
			// case 9 to find minimum element column wise
			case 9:
				int[] colMin = Array2dService.getMinEleColumnWise(arr);
				System.out.println("Column wise minimum elements are : ");
				for (int i = 0; i < colMin.length; i++)
					System.out.println(colMin[i] + "  ");
				break;
				
			// case 10 to find maximum element row wise
			case 10:
				int[] rowMax = Array2dService.getMaxEleRowWise(arr);
				System.out.println("Row wise Maximum elements are : ");
				for (int i = 0; i < rowMax.length; i++)
					System.out.println(rowMax[i] + "  ");
				break;
			
			// case 11 to find maximum element column wise
			case 11:
				int[] colMax = Array2dService.getMaxEleColumnWise(arr);
				System.out.println("Column wise maximum elements are : ");
				for (int i = 0; i < colMax.length; i++)
					System.out.println(colMax[i] + "  ");
				break;

			// case 12 to terminate execution
			case 12:
				System.out.println("The program executed successfully!!!");
				break;
	
			// default: when entered wrong choice 
			default:
				System.out.println("Invalid Choice !!!");
				break;
			}

		} while (choice != 12);

		sc.close();
	}

}
