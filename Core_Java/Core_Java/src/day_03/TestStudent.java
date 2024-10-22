package day_03;

import java.util.Scanner;

public class TestStudent {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		int choice = 0;

		do {

			choice = StudentService.printMenuAndGetChoice();

			switch (choice) {

			// case 1 to add new Student in the database
			case 1:
				StudentService.addStudent();
				break;

			// case 2 to display all the available students
			case 2:
				StudentService.displayAll();
				break;

			// case 3 to get student by student id
			case 3:
				System.out.print("Enter the id of the student to search : ");
				int id = sc.nextInt();
				Student student = StudentService.getStudentById(id);
				if (student != null) {
					System.out.println(student);
				} else {
					System.out.println("Student Not Found.");
				}
				break;

			// case 4 to search students by name
			case 4:
				System.out.print("Enter name of the student to search : ");
				String name = sc.nextLine();
				Student[] students = StudentService.getStudentsByName(name);
				if (students != null) {
					for (Student student2 : students) {
						if (student2 != null)
							System.out.println(student2);
						else
							break;
					}
				} else {
					System.out.println("Student not found.");
				}
				break;

			// case 5 to update name of the student
			case 5:
				System.out.print("Enter id of the student : ");
				id = sc.nextInt();
				System.out.print("Enter new name of the student : ");
				sc.nextLine();
				name = sc.nextLine();
				boolean isChanged = StudentService.updateNameOfStudent(id, name);
				if (isChanged)
					System.out.println("Student name changed Successfully.");
				else
					System.out.println("Student not found.");
				break;

			// case 6 to delete the student with entered id
			case 6:
				System.out.print("Enter student id to delete the student : ");
				id = sc.nextInt();
				boolean isDeleted = StudentService.deletebyId(id);
				if (isDeleted)
					System.out.println("Student deleted Successflly.");
				else
					System.out.println("Student not found.");
				break;

				
			// case 7 to find the average of marks
			case 7:
				float average = StudentService.getAverage();
				System.out.println("The Average of marks is : " + average);
				break;
				
			// case 8 to terminate the execution
			case 8:
				System.out.println("Terminating the program.\nBye Bye.");
				System.exit(0);

				// Default case
			default:
				System.out.println("Invalid choice !!!");
				break;
			}

		} while (choice != 8);

		sc.close();

	}

}