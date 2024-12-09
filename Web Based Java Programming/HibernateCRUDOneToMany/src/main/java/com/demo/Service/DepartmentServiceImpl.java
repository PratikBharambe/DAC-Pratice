package com.demo.Service;

import java.util.List;
import java.util.Scanner;

import com.demo.beans.Department;
import com.demo.beans.Employee;
import com.demo.dao.DepartmentDao;
import com.demo.dao.DepartmentDaoImpl;

public class DepartmentServiceImpl implements DepartmentService {
	
	DepartmentDao departmentDao;
	
	public DepartmentServiceImpl() {
		departmentDao = new DepartmentDaoImpl();
	}

	Scanner sc = new Scanner(System.in);
	
	@Override
	public void addNewDepartment() {
		System.out.print("Enter department id : ");
		int id = sc.nextInt();
		System.out.print("Enter department name : ");
		String name = sc.next();
		System.out.print("Enter department location : ");
		String location = sc.next();
		Department d = new Department(id, name, location, null);
		departmentDao.addNewDepartment(d);
	}

	@Override
	public boolean deleteDepartment() {
		System.out.print("Enter department id : ");
		int id = sc.nextInt();
		return departmentDao.deleteDepartment(id);
	}

	@Override
	public boolean UpdateDepartment() {
		System.out.print("Enter department id : ");
		int id = sc.nextInt();
		System.out.print("Enter new location : ");
		String location = sc.next();
		return departmentDao.UpdateDepartment(id, location);
	}

	@Override
	public Department getDeptById() {
		System.out.print("Enter department id : ");
		int id = sc.nextInt();
		return departmentDao.getDeptById(id);
	}

	@Override
	public List<Department> getAllDepartment() {
		return departmentDao.getAllDepartment();
	}
	
}
