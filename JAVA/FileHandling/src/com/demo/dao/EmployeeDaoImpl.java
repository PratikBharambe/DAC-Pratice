package com.demo.dao;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

import com.demo.beans.Employee;
import com.demo.exceptions.EmployeeNotFound;

public class EmployeeDaoImpl implements EmployeeDao {

	private static List<Employee> elst;
	static {
		elst = new ArrayList<>();
	}

	@Override
	public void addNewEmployee(Employee e) {
		elst.add(e);
	}

	@Override
	public List<Employee> getAll() {
		return elst;
	}

	@Override
	public void writeIntoFile(String string) {

		try (ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(string));) {
			for (Employee e : elst)
				oos.writeObject(e);
		} catch (FileNotFoundException e) {
			System.out.println("File does not exist.");
		} catch (IOException e) {
			System.out.println("Read write error.");
		}

	}

	@Override
	public void readFile(String string) {

		try (ObjectInputStream ois = new ObjectInputStream(new FileInputStream(string));) {
			while (true) {
				Employee e = (Employee) ois.readObject();
				elst.add(e);
			}

		} catch (FileNotFoundException e) {
			System.out.println("File does not exist.");
		} catch (IOException e) {
			System.out.println("Read write error.");
		} catch (ClassNotFoundException e1) {
			System.out.println("class not found !!!!!");
		}

	}

	@Override
	public boolean deleteById(int id) throws EmployeeNotFound {
		boolean flag = elst.remove(new Employee(id));
		if (flag)
			return flag;
		throw new EmployeeNotFound("Employee Not Found !!!!!!");
	}

	@Override
	public boolean updateById(int id, double salary) throws EmployeeNotFound {
		int pos = elst.indexOf(new Employee(id));
		if(pos != -1) {
			Employee e = elst.get(pos);
			e.setSalary(salary);
			return true;
		}
		throw new EmployeeNotFound("Employee Not Found !!!!!!!!!!!");
	}

}
