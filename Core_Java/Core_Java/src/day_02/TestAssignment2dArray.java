package day_02;

import java.util.Scanner;

public class TestAssignment2dArray {

	public static void main(String[] args) {

		int choice;
		Scanner sc = new Scanner(System.in);

		System.out.print("Enter the size for square matrix : ");
		int length = sc.nextInt();
		int firstMatrix[][] = new int[length][length];
		int secondMatrix[][] = new int[length][length];

		do {
			choice = Assignment2dArrayService.getMeun();

			switch (choice) {

				// Case 1 to accept the matrix elements
				case 1:
					System.out.println("Enter elements for first matrix : ");
					Assignment2dArrayService.accept2dArray(firstMatrix);
					System.out.println("Enter elements for second matrix : ");
					Assignment2dArrayService.accept2dArray(secondMatrix);
					break;
	
				// case 2 to display first and second matrix
				case 2:
					System.out.println("First Matrix is : ");
					Assignment2dArrayService.print2dArray(firstMatrix);
					System.out.println("Second Matrix is : ");
					Assignment2dArrayService.print2dArray(secondMatrix);
					break;
	
				// case 3 to get addition of first and second matrix
				case 3:
					int additionMatrix[][] = Assignment2dArrayService.getAdditionOfMatrices(firstMatrix, secondMatrix);
					System.out.println("The Addition matrix is : ");
					Assignment2dArrayService.print2dArray(additionMatrix);
					break;
	
				// case 4 to get multiplication of first and second matrix
				case 4:
					int[][] productMatrix = Assignment2dArrayService.getProductOfTwoMatrices(firstMatrix, secondMatrix);
					System.out.println("The Product matrix is : ");
					Assignment2dArrayService.print2dArray(productMatrix);
					break;
	
				// case 5 to terminate the program
				case 5:
					System.out.println("Program executed Successfully./nBye Bye.");
					System.out.println("Program executed Successfully.nBye Bye.");
					return;
	
				default:
					System.out.println("Invalid Choice !!!");
					break;
			}
		} while (choice != 5);
		
		sc.close();

	}

}
