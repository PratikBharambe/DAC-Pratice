package com.demo.test;

import com.demo.service.SportsClubService;

public class TestSportsClub {

	public static void main(String[] args) {

		int choice;

		do {

			choice = SportsClubService.getMenuAndChoice();

			switch (choice) {

			// case 0 to terminate the flow of execution
			case 0:
				System.out.println("Thanks for visiting ...............");
				System.exit(0);
				break;

			// case 1 to add new person in the sports club
			case 1:
				boolean status = SportsClubService.addNewEmployee();
				if(status)
					System.out.println("Employee added successfully.");
				else
					System.out.println("Employee not added.");
				break;

			// case 2 to add new member in the sports club
			case 2:
				status = SportsClubService.addNewMember();
				if(status)
					System.out.println("Member added successfully.");
				else
					System.out.println("Member not added.");
				break;

			// case 3 to display all the available person in the sports club
			case 3:
				SportsClubService.displayAll();
				break;

			// case 4 to get all the member in the sports club
			case 4:
				SportsClubService.getAllMenbers();
				break;

			// case 5 to get all type employee in the sports club
			case 5:
				SportsClubService.getAllTypeEmployees();
				break;

			default:
				System.out.println("Invalid choice");
				break;
			}

		} while (choice != 0);

	}

}