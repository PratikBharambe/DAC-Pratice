package com.demo.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Scanner;

import com.demo.beans.GraduateStudent;
import com.demo.beans.MasterStudent;
import com.demo.beans.Student;
import com.demo.dao.StudentDao;
import com.demo.dao.StudentDaoImpl;

public class StudentServiceImpl implements StudentService {

	StudentDao sDao;

	public StudentServiceImpl() {
		super();
		sDao = new StudentDaoImpl();
	}

	@Override
	public void addNewStudent(int ch) {

		Student s = null;

		Scanner sc = new Scanner(System.in);
		System.out.println("enter ID");
		int id = sc.nextInt();
		System.out.println("enter name");
		String nm = sc.next();
		System.out.println("enter address");
		String addr = sc.next();
		System.out.println("enter birth date(dd/MM/yyyy)");
		String dt = sc.next();
		LocalDate ldt = LocalDate.parse(dt, DateTimeFormatter.ofPattern("dd/MM/yyyy"));
		if (ch == 1 || ch == 2) {
			int[] mks = new int[2];
			System.out.println("enter marks1");
			mks[0] = sc.nextInt();
			System.out.println("enter marks2");
			mks[1] = sc.nextInt();
			if (ch == 1) {
				System.out.println("enterspecial subject marks");
				int smarks = sc.nextInt();
				s = new GraduateStudent(id, nm, addr, ldt, mks, smarks);
			} else {
				System.out.println("enterthesis subject");
				String tsub = sc.next();
				System.out.println("enter thesis subject marks");
				int tmarks = sc.nextInt();
				System.out.println("enter graduation degree");
				String deg = sc.next();
				s = new MasterStudent(id, nm, addr, ldt, mks, tsub, deg, tmarks);
			}
		} else {
			// enter faculty details
		}

		sDao.addNewStudent(s);

	}

	@Override
	public List<Student> getAllStudents() {
		return sDao.getAllStudents();
	}

	@Override
	public Student getById(int id) {
		return sDao.getById(id);
	}

	@Override
	public boolean deleteById(int id) {
		return sDao.deleteById(id);
	}

	@Override
	public boolean updateMarks(int id, int mks) {
		return sDao.updateMarks(id, mks);
	}

	@Override
	public List<Student> getByMarks(int mks) {
		return sDao.getByMarks(mks);
	}

	@Override
	public List<Student> sortById(int ch) {
		return sDao.sortById(ch);
	}

	@Override
	public List<Student> sortByName(int ch) {
		return sDao.sortByName(ch);
	}

	@Override
	public List<Student> sortByMarks(int ch) {
		return sDao.sortByMarks(ch);
	}

	@Override
	public List<Student> getbyName(String name) {
		return sDao.getByName(name);
	}

}
