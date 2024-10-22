package day_01;

import java.util.Scanner;

public class AcceptNames02 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		for (int i = 0; i < 10; i++) {
			System.out.print("Enter your name:");
			String nm = sc.next();
			System.out.println("Name : " + nm);
		}
		sc.close();
	}

}
