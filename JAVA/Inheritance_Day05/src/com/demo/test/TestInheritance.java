package com.demo.test;

import java.time.LocalDate;

import com.demo.beans.GraduateStudent;
import com.demo.beans.MasterStudent;

public class TestInheritance {

	public static void main(String[] args) {

		// Student s=new Student(12,"xxx","pune",LocalDate.of(2000, 04, 27),new
		// int[]{12,34});
		// System.out.println(s);
		GraduateStudent g = new GraduateStudent(12, "xxx", "pune", LocalDate.of(2000, 04, 27), new int[] { 12, 34 },
				89);
		System.out.println(g);
		// static polymorphisum 
		System.out.println("Grade: " + g.calculateGrade());
		MasterStudent m = new MasterStudent(12, "xxx", "pune", LocalDate.of(2000, 04, 27), new int[] { 12, 34 }, "yyyy",
				"BSC", 89);
		System.out.println(m);
		// static polymorphisum
		System.out.println("Grade: " + m.calculateGrade());

	}
}