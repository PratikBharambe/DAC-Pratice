package com.demo.test;

import java.util.Scanner;

import com.demo.beans.Student;
import com.demo.service.StudentService;
import com.demo.service.StudentServiceImpl;

public class TestStudent {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		int choice = 0;

		do {
			System.out.println("1. Display All Student.");
			System.out.println("2. Search by id.");
			System.out.println("3. Search by name.");
			System.out.println("4. Calculate GPA of a student.");
			System.out.println("5. Exit.");
			System.out.println("Enter your choice : ");
			choice = sc.nextInt();
			StudentService ss = new StudentServiceImpl();

			switch (choice) {
			case 1:
				ss.displayAll();
				break;

			case 2:
				System.out.print("Enter id to search : ");
				int id = sc.nextInt();
				Student s = ss.searchById(id);
				if (s != null)
					System.out.println(s);
				else
					System.out.println("Student not found.");
				break;

			case 3:
				System.out.println("Enter name to search : ");
				String name = sc.next();
				Student[] array = ss.getByName(name);
				if (array != null) {
					for (Student s1 : array) {
						if (s1 != null)
							System.out.println(s1);
						else
							break;
					}
				} else {
					System.out.println("Students not found.");
				}
				break;

			case 4:
				System.out.println("Enter id of student to calculate GPA : ");
				int id1 = sc.nextInt();
				float gpa = ss.calculateGPA(id1);
				if (gpa >= 0) {
					System.out.println("GPA is : " + gpa);
				} else {
					System.out.println("Student not found!!");
				}
				break;

			case 5:
				System.out.println("Thanks for visiting .............");
				sc.close();
				break;

			default:
				System.out.println("Invalid choice !!!");
				break;
			}

		} while (choice != 5);

	}

}
