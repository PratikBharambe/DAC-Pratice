package com.demo.Service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Scanner;

import com.demo.beans.Department;
import com.demo.beans.Employee;
import com.demo.dao.EmployeeDao;
import com.demo.dao.EmployeeDaoImpl;

public class EmployeeServiceImpl implements EmployeeService {

	private EmployeeDao employeeDao;

	public EmployeeServiceImpl() {
		employeeDao = new EmployeeDaoImpl();
	}
	

	Scanner sc = new Scanner(System.in);

	@Override
	public void addNewEmployee() {
		System.out.print("Enter employee id : ");
		int id = sc.nextInt();
		System.out.print("Enter employee name : ");
		String name = sc.next();
		System.out.print("Enter employee salary : ");
		double salary = sc.nextDouble();
		System.out.println("enetr doj(dd/MM/yyyy)");
		String dt = sc.next();
		LocalDate date = LocalDate.parse(dt, DateTimeFormatter.ofPattern("dd/MM/yyyy"));
		System.out.println("enter deptid");
		int deptid = sc.nextInt();

		Employee e = new Employee(id, name, salary, date, new Department(deptid));

		employeeDao.addNewEmployee(e);

	}

	@Override
	public void closeMyConnection() {
		employeeDao.close();
	}

	@Override
	public boolean deleteEmployee() {
		System.out.println("Enter employee id : ");
		int id = sc.nextInt();
		return employeeDao.deleteById(id);
	}

	@Override
	public boolean UpdateEmployee() {
		System.out.println("Enter employee id : ");
		int id = sc.nextInt();
		System.out.print("Enter new name : ");
		String name = sc.next();
		System.out.print("Enter new salary : ");
		double salary = sc.nextDouble();
		return employeeDao.updateEmployee(id, name, salary);
	}

	@Override
	public Employee getEmpById() {
		System.out.println("Enter employee id : ");
		int id = sc.nextInt();
		return employeeDao.getById(id);
	}

	@Override
	public List<Employee> getAllEmployes() {
		return employeeDao.getAllEmployees();
	}

	@Override
	public List<Employee> getAllEmployesSortedByName() {
		return employeeDao.getAllEmployesSortedByName();
	}

}
