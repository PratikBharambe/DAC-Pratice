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
			System.out.println("1. Add new Student.");
			System.out.println("2. Display All.");
			System.out.println("3. Search By id.");
			System.out.println("4. Search by name.");
			System.out.println("5. to calculate the gpa.");
			System.out.println("6. Exit.");
			System.out.println("Enter your choice : ");
			choice = sc.nextInt();

			StudentService ss = new StudentServiceImpl();

			switch (choice) {
			
			// to add new student 
			case 1 -> {
				ss.addStudent();
			}

			// to display all student
			case 2 -> {
				ss.displayAll();
			}

			// to search student by id
			case 3 -> {
				System.out.println("Enter student id : ");
				int id = sc.nextInt();
				Student s = ss.findById(id);
				if(s != null)
					System.out.println(s);
				else
					System.out.println("Not found.");
			}
			
			// to search by name 
			case 4 -> {
				System.out.print("Enter name to search : ");
				String name = sc.next();
				Student[] sArray = ss.findByName(name);
				for (Student s : sArray) {
					if(s != null)
						System.out.println(s);
				}
			}
			
			// to calculate GPA of student
			case 5 -> {
				System.out.println("Enter id of student : ");
				int id = sc.nextInt();
				float gpa = ss.calculateGpa(id);
				System.out.println("GPA of student is : " + gpa);
			}

			//  to terminate the execution
			case 6 -> {
				System.out.println("Thanks for visiting .............");
				sc.close();
			}

			default -> {
				System.out.println("Invalid choice !!!");
			}
			}

		} while (choice != 5);

	}

}
