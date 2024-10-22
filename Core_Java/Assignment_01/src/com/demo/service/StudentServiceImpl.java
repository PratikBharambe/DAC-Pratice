package com.demo.service;

import java.util.Scanner;

import com.demo.beans.Student;

public class StudentServiceImpl implements  StudentService{
	
	private static Student[] sArr;
	private static int count;
	
	static {
		sArr = new Student[10];
		sArr[0] = new Student(1, "Demo", 98, 58, 55);
		sArr[1] = new Student(2, "Demo2", 66, 88, 47);
		sArr[2] = new Student(3, "Demo3", 63, 65, 41);
		count = 3;
	}
	
	static Scanner sc = new Scanner(System.in);
	
	public void displayAll() {
		for (Student student : sArr) {
			if (student != null) {
				System.out.println(student);
			} else {
				break;
			}
		}
	}

	@Override
	public Student searchById(int id) {
		for(Student s: sArr) {
			if(s != null) {
				if(s.getId() == id) {
					return s;
				}
			}else {
				break;
			}
		}
		return null;
	}

	@Override
	public Student[] getByName(String name) {
		Student[] sArray = new Student[sArr.length];
		int cnt = 0;
		for(Student s: sArr) {
			if(s != null) {
				if(s.getName().equals(name)) {
					sArray[cnt] = s;
					cnt++;
				}
			} else {
				break;
			}
		}
		if(cnt > 0)
			return sArray;
		else
			return null;
	}

	@Override
	public float calculateGPA(int id1) {
		Student s = searchById(id1);
		if(s != null) {
			float gpa = s.calculateGpa();
			return gpa;
		}
		return -1;
	}

}
