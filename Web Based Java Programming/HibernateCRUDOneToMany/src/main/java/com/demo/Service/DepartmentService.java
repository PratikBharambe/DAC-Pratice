package com.demo.Service;

import java.util.List;

import com.demo.beans.Department;
import com.demo.beans.Employee;

public interface DepartmentService {

	void addNewDepartment();

	boolean deleteDepartment();

	boolean UpdateDepartment();

	Department getDeptById();

	List<Department> getAllDepartment();

}
