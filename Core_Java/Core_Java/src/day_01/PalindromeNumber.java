package day_01;

import java.util.Scanner;

public class PalindromeNumber {

	public static boolean isPalindrome(int num) {
		int checkNum = num;
		int reverseNum = 0;
		while (num > 0) {
			int lastDigit = num % 10;
			reverseNum = (reverseNum * 10) + lastDigit;
			num /= 10;
		}
		if (reverseNum == checkNum)
			return true;
		else
			return false;
	}

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.println("Enter a number to check palindrome : ");
		int num = sc.nextInt();
		if (isPalindrome(num))
			System.out.println("The number " + num + " is palindrome number.");
		else
			System.out.println("The number " + num + " is not palindrome number.");

		sc.close();
	}

}
