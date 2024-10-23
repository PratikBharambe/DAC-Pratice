package com.demo.service;

import java.util.List;

import com.demo.beans.Employee;
import com.demo.exceptions.EmployeeNotFound;

public interface EmployeeService {

	void addNewEmployee();

	List<Employee> getAll();

	void writeIntoFile(String string);

	void readFile(String string);

	boolean deleteById(int id) throws EmployeeNotFound;

	boolean updateById(int id, double salary) throws EmployeeNotFound;

}
