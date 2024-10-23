package com.demo.dao;

import java.util.List;

import com.demo.beans.Student;

public interface StudentDao {

	void addNewStudent(Student s);

	List<Student> getAllStudents();

	Student getById(int id);

	boolean deleteById(int id);

	boolean updateMarks(int id, int mks);

	List<Student> getByMarks(int mks);

	List<Student> sortById(int ch);

	List<Student> sortByName(int ch);

	List<Student> sortByMarks(int ch);

	List<Student> getByName(String name);

}
