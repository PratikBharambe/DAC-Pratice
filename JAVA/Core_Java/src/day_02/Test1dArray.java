package day_02;

import java.util.Scanner;

public class Test1dArray {

	public static void main(String[] args) {
		int choice;

		System.out.print("Enter the length of the array : ");
		Scanner sc = new Scanner(System.in);
		int length = sc.nextInt();

		int[] arr = new int[length];
		do {

			choice = Array1dService.choiceMenu();

			switch (choice) {

			// case 1 to accept elements for array
			case 1:
				Array1dService.acceptArray(arr);
				break;

			// case 2 to display all the elements of array
			case 2:
				Array1dService.printMain(arr);
				break;

			// case 3 to search element in the array
			case 3:
				System.out.print("Enter an element to serach in array : ");
				int searchKey = sc.nextInt();
				int index =  Array1dService.search(arr, searchKey);
				if(index != -1)
					System.out.println("The index of the element id : " + index);
				else
					System.out.println("The element is not present in the array.");
				break;

			// case 4 to addition of all elements
			case 4:
				System.out.println("Addition of all elements is : " + Array1dService.getSumOfAllElements(arr));
				break;

			// case 5 to sum of all even elements
			case 5:
				System.out.println("Sum of all even Elements is : " + Array1dService.sumOfAllEvenNumbers(arr));
				break;

			// case 6 to get all prime numbers in array
			case 6:
				int[] primeElements = Array1dService.findAllPrimeNumbers(arr);
				System.out.println("The prime elements are : ");
				for (int i = 0; i < primeElements.length; i++) {
					System.out.println(primeElements[i] + "\t");
				}
				break;
			
			// case 7 to terminate the program
			case 7:
				System.out.println("Bye Bye");
				return;

			default:
				System.out.println("Invalid Choice!");
				break;
			}

		} while (choice != 7);
		
		sc.close();
	}

}
