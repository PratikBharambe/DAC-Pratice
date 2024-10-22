package day_01;

import java.util.Scanner;

public class PrimeNumbers {

	public static boolean isPrime(int n) {
		for (int i = 2; i <= n / 2; i++) {
			if (n % i == 0)
				return false;
		}
		return true;
	}

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter how many prime you want : ");
		int n = sc.nextInt();
		int count = 0;
		int i = 1;
		while(count != n) {
			if(isPrime(i)) {
				System.out.println("The " + (count+1) + " Prime number is : " + i);
				count++;
			}
			i++;
		}
		sc.close();
	}

}
