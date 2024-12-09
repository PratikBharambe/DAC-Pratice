package com.demo.Service;

import java.util.List;

import com.demo.beans.Employee;

public interface EmployeeService {

	void addNewEmployee();

	void closeMyConnection();

	boolean deleteEmployee();

	boolean UpdateEmployee();

	Employee getEmpById();

	List<Employee> getAllEmployes();

	List<Employee> getAllEmployesSortedByName();


}
