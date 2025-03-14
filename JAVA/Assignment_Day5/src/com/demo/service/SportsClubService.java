package com.demo.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;

import com.demo.beans.*;

public class SportsClubService {

	private static Person[] personArray;
	private static int count;

	static {

		personArray = new Person[20];

		personArray[0] = new Member("ABC", "1234", "abc@gmail.com", "Prime", 1500);
		personArray[1] = new Member("XYZ", "5678", "xyz@gmail.com", "Normal", 500);

		personArray[2] = new SalariedEmployee("salEmp", "9012", "salEmp@gmail/com", "chest", "Head Trainer",
				LocalDate.of(2000, 03, 15), 25000);
		personArray[3] = new SalariedEmployee("dSaleEmp", "3456", "dSaleEmp@gmail/com", "leg", "Trainer",
				LocalDate.of(2000, 03, 15), 25000);

		personArray[4] = new ContractEmployee("contEmp", "7890", "contEmp@gmail.com", "kontePan", "Jounier",
				LocalDate.of(2000, 5, 14), 2, 200);
		personArray[5] = new ContractEmployee("dContEmp", "9876", "dContEmp@gmail.com", "KahiPan", "senior",
				LocalDate.of(1998, 10, 01), 4, 800);

		personArray[6] = new Vendor("vendorEmp", "5432", "vendorEmp@gmail.com", "Faltu", "mahiti nahi",
				LocalDate.of(1998, 10, 01), 4, 800);
		personArray[7] = new Vendor("dVendorEmp", "1098", "dvendorEmp@gmail.com", "rikama", "tyalach jaun vichar",
				LocalDate.of(1998, 10, 01), 2, 200);

		count = 8;
	}

	private static Scanner sc = new Scanner(System.in);

	public static int getMenuAndChoice() {
		System.out.println("0. Exit");
		System.out.println("1. Add new employee.");
		System.out.println("2. Add new member.");
		System.out.println("3. Display all persons.");
		System.out.println("4. Display all members.");
		System.out.println("5. Display all employees.");
		System.out.print("Enter you choice : ");
		return sc.nextInt();
	}

	// case 1 to add new employee in the sports club
	public static boolean addNewEmployee() {
		System.out.println("1. Add salaried employee.");
		System.out.println("2. Add contracted employee.");
		System.out.println("3. Add vendor employee.");
		System.out.println("Choose the type of the employee : ");
		int choice = sc.nextInt();

		// implementing default case
		if (choice != 1 && choice != 2 && choice != 3) {
			System.out.println("Invalid choice !!");
			return false;
		}

		System.out.print("Enter name : ");
		sc.nextLine();
		String name = sc.nextLine();
		System.out.print("Enter Mobile number : ");
		String mobile = sc.nextLine();
		System.out.print("Enter email Id : ");
		String mail = sc.nextLine();
		System.out.print("Enter designation : ");
		String designation = sc.nextLine();
		System.out.print("Enter department : ");
		String department = sc.nextLine();
		System.out.print("Enter data of joining in (dd/MM/yyyy) format : ");
		String dt = sc.next();
		LocalDate doj = LocalDate.parse(dt, DateTimeFormatter.ofPattern("dd/MM/yyyy"));

		// case 1 to add new salaried employee
		if (choice == 1) {
			System.out.print("Enter Salary : ");
			float salary = sc.nextFloat();
			personArray[count] = new SalariedEmployee(name, mobile, mail, department, designation, doj, salary);
			count++;
			return true;
		}

		// case 2 to add new contracted employee
		else if (choice == 2) {
			System.out.print("Enter hours : ");
			float hrs = sc.nextFloat();
			System.out.print("Enter charge per hour : ");
			float charge = sc.nextFloat();
			personArray[count] = new ContractEmployee(name, mobile, mail, department, designation, doj, hrs, charge);
			count++;
			return true;
		}

		// case 3 to add new vender employee
		else if (choice == 3) {
			System.out.print("Enter the number of employees : ");
			int noOfEmp = sc.nextInt();
			System.out.print("Enter the amount per employee : ");
			float amount = sc.nextFloat();
			personArray[count] = new Vendor(name, mobile, mail, department, designation, doj, noOfEmp, amount);
			count++;
			return true;
		}

		return false;
	}

	// case 2 to add member to the sports club
	public static boolean addNewMember() {
		System.out.print("Enter name : ");
		sc.nextLine();
		String name = sc.nextLine();
		System.out.print("Enter Mobile number : ");
		String mobile = sc.nextLine();
		System.out.print("Enter email Id : ");
		String mail = sc.nextLine();
		System.out.print("Enter type of member : ");
		String type = sc.nextLine();
		System.out.print("Enter amount paid : ");
		float amountPaid = sc.nextFloat();
		personArray[count] = new Member(name, mobile, mail, type, amountPaid);
		return true;
	}

	// case 3 to display all the available person in the sports club
	public static void displayAll() {
		for (Person p : personArray) {
			if (p != null) {
				System.out.println(p);
			} else {
				break;
			}
		}
	}

	// case 4 to get all the member in the sports club
	public static void getAllMenbers() {
		for (Person p : personArray) {
			if (p != null) {
				if (p instanceof Member)
					System.out.println(p);
			} else {
				break;
			}
		}
	}

	// case 5 to get all type employee in the sports club
	public static void getAllTypeEmployees() {
		System.out.println("\n1. to get all  employees.");
		System.out.println("2. to get all salaried employees.");
		System.out.println("3. to get all contracted employees.");
		System.out.println("4. to get all vendor employees.");
		System.out.print("Enter your choice : ");
		int choice = sc.nextInt();
		for (Person p : personArray) {
			if (p != null) {

				// case 1 to get all employees
				if (choice == 1) {
					if (p instanceof Employee)
						System.out.println(p);
				}
				
				// case 2 to get all salaried employees
				else if (choice == 2) {
					if (p instanceof SalariedEmployee)
						System.out.println(p);
				}
				
				// case 3 to get all contracted employees
				else if (choice == 3) {
					if (p instanceof ContractEmployee)
						System.out.println(p);
				}
				
				// case 4 to get all vendor employees
				else if (choice == 4) {
					if (p instanceof Vendor)
						System.out.println(p);
				}
				
				// default case
				else {
					System.out.println("Invalid Choice !!");
				}

			} else {
				break;
			}
			
		}
		
	}

}
