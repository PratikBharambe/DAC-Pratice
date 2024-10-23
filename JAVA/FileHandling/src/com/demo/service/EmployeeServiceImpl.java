package com.demo.service;

import java.util.List;
import java.util.Scanner;

import com.demo.beans.Employee;
import com.demo.dao.EmployeeDao;
import com.demo.dao.EmployeeDaoImpl;
import com.demo.exceptions.EmployeeNotFound;

public class EmployeeServiceImpl implements EmployeeService{
	
	private static EmployeeDao edao;

	public EmployeeServiceImpl() {
		super();
		edao = new EmployeeDaoImpl();
	}

	@Override
	public void addNewEmployee() {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Enter employee id : ");
		int id = sc.nextInt();
		System.out.println("Enter name of employee : ");
		String name = sc.next();
		System.out.println("Enter salary : ");
		double salary = sc.nextDouble();
		
		Employee e = new Employee(id, name, salary, salary*0.10);
		edao.addNewEmployee(e);
		
	}

	@Override
	public List<Employee> getAll() {
		return edao.getAll();
	}

	@Override
	public void writeIntoFile(String string) {
		edao.writeIntoFile(string);
	}

	@Override
	public void readFile(String string) {
		edao.readFile(string);	
	}

	@Override
	public boolean deleteById(int id) throws EmployeeNotFound{
		return edao.deleteById(id);
	}

	@Override
	public boolean updateById(int id, double salary) throws EmployeeNotFound {
		return edao.updateById(id, salary);
	}

	
	
}
