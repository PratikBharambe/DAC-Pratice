package com.demo.dao;

import java.util.List;

import com.demo.beans.Department;

public interface DepartmentDao {

	void addNewDepartment(Department d);

	boolean deleteDepartment(int id);

	boolean UpdateDepartment(int id, String location);

	Department getDeptById(int id);

	List<Department> getAllDepartment();

}
