package com.demo.test;

import java.util.Scanner;

import com.demo.beans.GraduateStudent;
import com.demo.beans.MasterStudent;
import com.demo.beans.Student;
import com.demo.service.PersonService;

public class TestInheritanceArray {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int choice = 0;
		do {
			System.out.println("1. Accept new data");
			System.out.println("2. Delete student");
			System.out.println("3. Update marks");
			System.out.println("4. Display all Graduate Student");
			System.out.println("5. Display all master student");
			System.out.println("6. Find Grade");
			System.out.println("7. Display all");
			System.out.println("8. Exit");
			System.out.println("Choice");
			choice = sc.nextInt();
			switch (choice) {
			
			case 1:
				System.out.println("1. GraduateStudent");
				System.out.println("2. MasterStudent");
				System.out.println("3.Facutly");
				System.out.println("Choice:");
				int ch = sc.nextInt();
				PersonService.addNewData(ch);
				break;
				
			case 2:
				System.out.println("Enter id of student which you want to delete : ");
				int id = sc.nextInt();
				boolean status = PersonService.deleteStudentById(id);
				if(status)
					System.out.println("The Student is deleted.");
				else
					System.out.println("Student not found.");
				break;
				
			case 3:
				break;
				
			case 4:
				Student[] sarr = PersonService.displayAll();
				for (Student s1 : sarr) {
					if (s1 instanceof GraduateStudent) {
						System.out.println(s1);
					}
				}
				break;
				
			case 5:
				sarr = PersonService.displayAll();
				for (Student s1 : sarr) {
					if (s1 instanceof MasterStudent) {
						System.out.println(s1);
					}
				}
				break;

			case 6:
				System.out.println("Enter id");
				id = sc.nextInt();
				float marks = PersonService.findGrade(id);
				if (marks > 0) {
					System.out.println("Marks : " + marks);
				} else {
					System.out.println("not found");
				}
				break;
				
			case 7:
				sarr = PersonService.displayAll();
				for (Student s : sarr) {
					if (s != null) {
						System.out.println(s);
					} else {
						break;
					}
				}

				break;
				
			case 8:
				System.out.println("Thank you for visiting....");
				sc.close();
				break;
				
			default:
				System.out.println("Wrong choice");
				break;
				
			}
		} while (choice != 8);

	}

}
