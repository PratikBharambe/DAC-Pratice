package com.demo.dao;

import java.util.List;

import com.demo.beans.Employee;
import com.demo.exceptions.EmployeeNotFound;

public interface EmployeeDao {

	void addNewEmployee(Employee e);

	List<Employee> getAll();

	void writeIntoFile(String string);

	void readFile(String string);

	boolean deleteById(int id) throws EmployeeNotFound;

	boolean updateById(int id, double salary) throws EmployeeNotFound;

}
