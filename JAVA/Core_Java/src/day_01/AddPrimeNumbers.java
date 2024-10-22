package day_01;

public class AddPrimeNumbers {

	public static boolean isPrime(int n) {
		for (int i = 2; i < n; i++) {
			if (n % i == 0) {
				return false;
			}
		}
		return true;
	}

	public static void main(String[] args) {
		int sum = 0;
		if (args.length == 0) {
			System.out.println("There are no arguments are passed.\nThe length is " + args.length);
		} else {
			for (int i = 0; i < args.length; i++) {
				int data = Integer.parseInt(args[i]);
				if (isPrime(data)) {
					sum += data;
				}
			}
			System.out.println("The sum is : " + sum);
		}
	}
}

