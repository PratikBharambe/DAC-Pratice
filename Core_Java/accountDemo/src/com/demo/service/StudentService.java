package com.demo.service;

import java.util.List;

import com.demo.beans.Student;

public interface StudentService {

	void addNewStudent(int ch);

	List<Student> getAllStudents();

	Student getById(int id);

	boolean deleteById(int id);

	boolean updateMarks(int id, int mks);

	List<Student> getByMarks(int mks);

	List<Student> sortById(int ch);

	List<Student> sortByName(int ch);

	List<Student> sortByMarks(int ch);

	List<Student> getbyName(String name);

}
