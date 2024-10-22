package day_01;

public class AddDigitsOfNumbers {

	public static void main(String[] args) {

		for (int i = 0; i < args.length; i++) {
			int num = Integer.parseInt(args[i]);
			int sumOfDigits = getSumOfDigits(num);
			System.out.println(sumOfDigits);
		}

	}

	private static int getSumOfDigits(int num) {

		int sum = 0;
		while (num > 0) {
			int lastDigit = num % 10;
			sum += lastDigit;
			num /= 10;
		}

		return sum;
	}

}
