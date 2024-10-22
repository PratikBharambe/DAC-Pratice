package day_01;

import java.util.Scanner;

public class ArmstrongNumber {

	public static boolean isArmstrong(int num) {
		int checkSum = num;
		int reversedNum = 0;

		while (num > 0) {
			int lastdigit = num % 10;
			reversedNum += lastdigit * lastdigit * lastdigit;
			num /= 10;
		}
		if (reversedNum == checkSum)
			return true;
		else
			return false;
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.println("Enter a number : ");
		int num = sc.nextInt();
		
		if (isArmstrong(num))
			System.out.println("The number " + num + " is armstrong number.");
		else
			System.out.println("The number " + num + " is not armstrong number.");

		sc.close();
			
	}

}
