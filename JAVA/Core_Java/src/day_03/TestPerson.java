package day_03;

import java.util.Scanner;

public class TestPerson {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int choice = 0;
		do {
			choice = PersonService.printMeunAndGetChoice();
			switch (choice) {

				// case 1 to add new person into database
				case 1:
					PersonService.addNewPerson();
					break;

				// case 2 to delete by id
				case 2:
					System.out.println("Enter id for delete");
					int id = sc.nextInt();
					boolean status = PersonService.deleteById(id);
					if (status) {
						System.out.println("deleted successfully");
					} else {
						System.out.println("Not found");
					}
					break;

				// case 3 to search by id
				case 3:
					System.out.println("Enter id for search");
					id = sc.nextInt();
					Person p = PersonService.getById(id);
					if (p != null) {
						System.out.println(p);
					} else {
						System.out.println("Not found");
					}
					break;

				// case 4 to search by name
				case 4:
					System.out.println("Enter name to search");
					sc.nextLine();
					String nm = sc.nextLine();
					Person[] arr = PersonService.getByName(nm);
					if (arr != null) {
						for (Person p1 : arr) {
							if (p1 != null) {
								System.out.println(p1);
							} else {
								break;
							}
						}
					}
					break;

				// case 5 to display all the avaliable persons
				case 5:
					arr = PersonService.displayAll();
					for (Person p2 : arr) {
						if (p2 != null) {
							System.out.println(p2);
						} else {
							break;
						}
					}
					break;

				// Case 6 to modify the mobile number of a person
				case 6:
					System.out.println("Enter id to change mobile");
					id = sc.nextInt();
					System.out.println("Enter new mobile number");
					String mob = sc.next();
					status = PersonService.modifyMobile(id, mob);
					if (status) {
						System.out.println("Updated successfully");
					} else {
						System.out.println("Not found");
					}
					break;

				// case7 to terminate the execution flow
				case 7:
					System.out.println("Thank you for visiting....");
					sc.close();
					System.exit(0);
					break;

				// default case
				default:
					System.out.println("Invalid Choice !!");
					break;

			}
		} while (choice != 7);

	}

}
