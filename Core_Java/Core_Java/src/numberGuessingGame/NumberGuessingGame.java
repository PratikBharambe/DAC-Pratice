package numberGuessingGame;

import java.util.Scanner;

public class NumberGuessingGame {
	public static void main(String[] args) {
		System.out.println("\n\n!!!!!!!!!!!! The Number Guessing Game !!!!!!!!!!!\n");
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Enter your name : ");
		String name = sc.nextLine();
		
		System.out.println("Hello, " + name + ",");
		System.out.println("I have generated random value in range (1, 100)");
		System.out.println("Can you Guess it .....................");
		
		int randomNumber = (int)(Math.random()*100+1);
        while (true) {
			System.out.print("Enter your Guess : ");
			int guess = sc.nextInt();
			if (guess > randomNumber) {
				System.out.println("The number is too high, try again .......................\n");
			}else if(guess == randomNumber) {
				System.out.println("\nCongratulations " + name + ", you have guessed the number !!!!!!!!!!");
				System.out.println("The Secret number geenerated by me was : " + randomNumber + ".\n");
				break;
			}else {
				System.out.println("The number is too low, try again .......................\n");
			}
		}
        
        sc.close();
		
	}
}
