package day_01;

import java.util.Scanner;

public class ReverseNumber {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter a number : ");
		int n = sc.nextInt();
		int reversedNumber = getReversedNumber(n);
		System.out.println("The reversed Number is : " + reversedNumber);
		sc.close();
	}

	private static int getReversedNumber(int n) {
		int reversedNUmber = 0;
		while(n > 0) {
			int lastDigit = n % 10;
			reversedNUmber = reversedNUmber*10 + lastDigit;
			n /= 10;
		}
		return reversedNUmber;
	}
	
}
