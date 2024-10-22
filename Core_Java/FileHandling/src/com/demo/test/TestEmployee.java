package com.demo.test;

import java.util.List;
import java.util.Scanner;

import com.demo.beans.Employee;
import com.demo.exceptions.EmployeeNotFound;
import com.demo.service.EmployeeService;
import com.demo.service.EmployeeServiceImpl;

public class TestEmployee {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		EmployeeService eservice = new EmployeeServiceImpl();

		eservice.readFile("empData.dat");

		int choice = 0;

		do {
			System.out.println("1. Add new Employee");
			System.out.println("2. Delete Employee");
			System.out.println("3. Update Employee");
			System.out.println("4. Display All.");
			System.out.println("5. Exit.");
			System.out.println("Enter your choice : ");
			choice = sc.nextInt();

			switch (choice) {

			case 1 -> {
				eservice.addNewEmployee();
			}

			case 2 -> {
				try {
					System.out.println("Enter id to delete : ");
					int id = sc.nextInt();
					boolean status = eservice.deleteById(id);
					if (status) {
						System.out.println("Deleted Successfully!!");
					}
				} catch (EmployeeNotFound e) {
					System.out.println(e.getMessage());
				}
			}

			case 3 -> {
				try {
					System.out.println("Enter id to update : ");
					int id = sc.nextInt();
					System.out.println("Enter new Salary : ");
					double salary = sc.nextDouble();
					boolean status = eservice.updateById(id, salary);
					if (status) {
						System.out.println("Updated Successfully!!");
					}
				} catch (EmployeeNotFound e) {
					System.out.println(e.getMessage());
				}
			}

			case 4 -> {
				List<Employee> elst = eservice.getAll();
				elst.stream().forEach(System.out::println);
			}

			case 5 -> {
				eservice.writeIntoFile("empData.dat");
				sc.close();
				System.out.println("Thanks for visiting ......");
			}

			default -> {
				System.out.println("invalid choice !!!!");
			}

			}

		} while (choice != 5);

	}

}
