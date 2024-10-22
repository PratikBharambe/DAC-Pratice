package day_01;

import java.util.Scanner;

public class AddNumberDivisibleBy3_5Or7 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int sum = 0;
		System.out.println("Enter 10 Numbers : ");
		for(int i = 0; i < 10 ; i++) {
			int n = sc.nextInt();
			if (n % 3 == 0 || n % 5 == 0 || n % 7 == 0) {
				sum += n;
			}
		}
		System.out.println("The sum is : " + sum);
		sc.close();
	}
}
