package day_02;

import java.util.Scanner;

public class Array1dService {

	// method to print the choice menu
	public static int choiceMenu() {
		Scanner sc = new Scanner(System.in);
		System.out.println();
		System.out.println("1. Accept Data.");
		System.out.println("2. Print Data.");
		System.out.println("3. Search Element.");
		System.out.println("4. Get sum of all elements.");
		System.out.println("5. Get sum of even numbers.");
		System.out.println("6. Get all prime numbers.");
		System.out.println("7. Terminate the program.");
		System.out.print("Enter Your Choice : ");
		return sc.nextInt();
	}

	// method to accept the array
	public static void acceptArray(int[] arr) {
		Scanner sc = new Scanner(System.in);
		for (int i = 0; i < arr.length; i++) {
			System.out.print("Enter Data of " + i + " index : ");
			arr[i] = sc.nextInt();
		}
	}

	// method to print existing array
	public static void printMain(int[] arr) {
		System.out.println("The Array elements array : ");
		for (int i = 0; i < arr.length; i++)
			System.out.print(arr[i] + "\t");
	}

	// method to search element in he array and
	// returns index of element or -1 if not present
	public static int search(int[] arr, int searchElement) {
		for (int i = 0; i < arr.length; i++) {
			if (arr[i] == searchElement)
				return i;
		}
		return -1;
	}

	// to get sum of all numbers
	public static int getSumOfAllElements(int[] arr) {
		int sum = 0;
		for (int i = 0; i < arr.length; i++)
			sum += arr[i];
		return sum;
	}

	// to get sum of all even numbers
	public static int sumOfAllEvenNumbers(int[] arr) {
		int evenSum = 0;
		for (int i = 0; i < arr.length; i++)
			if (arr[i] % 2 == 0)
				evenSum += arr[i];
		return evenSum;
	}

	// to check a number is prime or not
	private static boolean isPrime(int number) {
		for (int i = 2; i <= number / 2; i++)
			if (number % i == 0)
				return false;
		return true;
	}

	// get all the prime numbers in the array
	public static int[] findAllPrimeNumbers(int[] arr) {
		int[] primrArr = new int[arr.length];
		int count = 0;
		for (int i = 0; i < arr.length; i++) {
			if (isPrime(arr[i])) {
				primrArr[count] = arr[i];
				count++;
			}
		}
		return primrArr;
	}

}
