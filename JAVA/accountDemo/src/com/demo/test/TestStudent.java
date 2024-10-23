package com.demo.test;

import java.util.List;
import java.util.Scanner;

import com.demo.beans.Student;
import com.demo.service.StudentService;
import com.demo.service.StudentServiceImpl;

public class TestStudent {

	public static void main(String[] args) {

		int choice = 0;
		StudentService sService = new StudentServiceImpl();

		do {
			System.out.println("1. Add new student");
			System.out.println("2. Delete student by id");
			System.out.println("3. Modify marks");
			System.out.println("4. Search by id");
			System.out.println("5. Search by marks > given marks");
			System.out.println("6. Sort by id");
			System.out.println("7. Sort by name");
			System.out.println("8. Sort by marks");
			System.out.println("9. Display all");
			System.out.println("10. Search by name and display in sorted order");
			System.out.println("11. Exit");
			System.out.println("Choice : ");
			Scanner sc = new Scanner(System.in);
			choice = sc.nextInt();

			switch (choice) {
			case 1 -> {
				System.out.println("1. Graduate Student");
				System.out.println("2. MasterStudent");
				System.out.println("3.Facutly");
				System.out.println("Choice:");
				int ch = sc.nextInt();
				sService.addNewStudent(ch);
			}

			case 2 -> {
				System.out.println("enter id for delete");
				int id = sc.nextInt();
				boolean status = sService.deleteById(id);
				if (status) {
					System.out.println("deleted successfully");
				} else {
					System.out.println("not found");
				}
			}

			case 3 -> {
				System.out.print("enter id");
				int id = sc.nextInt();
				System.out.print("Enter new marks : ");
				int mks = sc.nextInt();
				boolean status = sService.updateMarks(id, mks);
				if (status)
					System.out.println("Marks updated successfully.");
				else
					System.out.println("not found.");
			}

			case 4 -> {
				System.out.println("enter id");
				int id = sc.nextInt();
				Student s = sService.getById(id);
				if (s != null) {
					System.out.println(s);
				} else {
					System.out.println("not found");
				}
			}

			case 5 -> {
				System.out.println("enter marks for searching");
				int mks = sc.nextInt();
				List<Student> lst = sService.getByMarks(mks);
				if (lst != null) {
					lst.stream().forEach(ob -> System.out.println(ob));
				} else {
					System.out.println("Not found");
				}
			}

			case 6 -> {
				System.out.println("1. Ascending order");
				System.out.println("2. Descending order");
				int ch = sc.nextInt();
				List<Student> lst = sService.sortById(ch);
				lst.stream().forEach(System.out::println);
			}

			case 7 -> {
				System.out.println("1. Ascending order");
				System.out.println("2. Descending order");
				int ch = sc.nextInt();
				List<Student> lst = sService.sortByName(ch);
				lst.stream().forEach(System.out::println);
			}

			case 8 -> {
				System.out.println("1. Ascending order");
				System.out.println("2. Descending order");
				int ch = sc.nextInt();
				List<Student> lst = sService.sortByMarks(ch);
				lst.stream().forEach(System.out::println);
			}

			case 9 -> {
				List<Student> slst = sService.getAllStudents();
				slst.stream().forEach(System.out::println);
			}

			case 10 -> {
				System.out.println("Enter name : ");
				String name = sc.next();
				List<Student> nlst = sService.getbyName(name);
				nlst.stream().forEach(System.out::println);
			}
			case 11 -> {
				sc.close();
				System.out.println("Bye Bye");
				System.exit(0);
			}

			default -> System.out.println("Invalid choice !!!");
			}

		} while (choice != 11);

	}

}
