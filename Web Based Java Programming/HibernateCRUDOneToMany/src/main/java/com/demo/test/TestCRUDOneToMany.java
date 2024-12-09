package com.demo.test;

import java.util.List;
import java.util.Scanner;

import com.demo.Service.DepartmentService;
import com.demo.Service.DepartmentServiceImpl;
import com.demo.Service.EmployeeService;
import com.demo.Service.EmployeeServiceImpl;
import com.demo.beans.Department;
import com.demo.beans.Employee;

public class TestCRUDOneToMany {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		EmployeeService eservice = new EmployeeServiceImpl();
		DepartmentService dservice = new DepartmentServiceImpl();

		int choice = 0;

		do {

			System.out.println("1. Add new employee.");
			System.out.println("2. Add new department.");
			System.out.println("3. Delete employee.");
			System.out.println("4. Delete Department.");
			System.out.println("5. Modify employee.");
			System.out.println("6. Modify Department.");
			System.out.println("7. Display employee by id.");
			System.out.println("8. Display department by id.");
			System.out.println("9. Display all employee.");
			System.out.println("10. Display all Department.");
			System.out.println("11. Display all employee in sorted order of name.");
			System.out.println("12. Exit.");
			System.out.print("Enter you choice : ");
			choice = sc.nextInt();

			switch (choice) {

			// case 1 to add new employee
			case 1 -> {
				eservice.addNewEmployee();
			}

			// case 2 to add new department
			case 2 -> {
				dservice.addNewDepartment();
			}

			// case 3 to delete employee
			case 3 -> {
				boolean status = eservice.deleteEmployee();
				if (status)
					System.out.println("Employee deleted successfully.");
				else
					System.out.println("Error occured.");
			}

			// case 4 to delete department
			case 4 -> {
				boolean status = dservice.deleteDepartment();
				if (status)
					System.out.println("Department deleted successfully.");
				else
					System.out.println("Error occured.");
			}

			// case 5 to modify employee details
			case 5 -> {
				boolean status = eservice.UpdateEmployee();
				if (status)
					System.out.println("Employee updated successfully.");
				else
					System.out.println("Error occured.");
			}

			// case 6 to modify department details
			case 6 -> {
				boolean status = dservice.UpdateDepartment();
				if (status)
					System.out.println("Department updated successfully.");
				else
					System.out.println("Error occured.");
			}

			// case 7 to display employee by id
			case 7 -> {
				Employee e = eservice.getEmpById();
				System.out.println(e);
			}

			// case 8 to display department by id
			case 8 -> {
				Department d = dservice.getDeptById();
				System.out.println(d);
			}

			// case 9 to display all employees
			case 9 -> {
				List<Employee> elist = eservice.getAllEmployes();
				elist.forEach(System.out::println);
			}
			
			// case 10 to display all departments
			case 10 -> {
				List<Department> dlist = dservice.getAllDepartment();
				dlist.forEach(System.out::println);
			}
			
			// case 11 to display all employees in sorted order by name 
			case 11 -> {
				List<Employee> elist = eservice.getAllEmployesSortedByName();
				elist.forEach(System.out::println);
			}

			// case 2 to add new department
			case 12 -> {
				System.out.println("Thanks for visiting !!!!!!!");
				eservice.closeMyConnection();
				sc.close();
			}

			}

		} while (choice != 12);

	}

}
