package com.demo.service;

import com.demo.beans.Student;

public interface StudentService {

	void displayAll();

	Student searchById(int id);

	Student[] getByName(String name);

	float calculateGPA(int id1);

}
