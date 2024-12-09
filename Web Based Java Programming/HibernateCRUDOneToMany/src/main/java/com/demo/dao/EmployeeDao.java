package com.demo.dao;

import java.util.List;

import com.demo.beans.Employee;

public interface EmployeeDao {

	void addNewEmployee(Employee e);

	void close();

	boolean deleteById(int id);

	boolean updateEmployee(int id, String name, double salary);

	Employee getById(int id);

	List<Employee> getAllEmployees();

	List<Employee> getAllEmployesSortedByName();

}
