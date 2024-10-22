package day_01;

import java.util.Scanner;

public class AddNumbers02 {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int sum = 0;
		System.out.println("Enter 10 number : ");
		for (int i = 0 ; i < 10 ; i++) {
			
			int n = sc.nextInt();
			sum += n;
		}
		
		System.out.println("The sum is : " + sum);
		
		sc.close();
		
	}
}
