package day_01;

public class AcceptNames {

	public static void main(String[] args) {
		if (args.length == 0) {
			System.out.println("The Length is : " + args.length);
		} else {
			for (int i = 0; i < args.length; i++) {
				System.out.println("Name is : " + args[i]);
			}
		}

	}

}
