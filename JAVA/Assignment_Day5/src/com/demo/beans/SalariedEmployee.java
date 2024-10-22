package com.demo.beans;

import java.time.LocalDate;

public class SalariedEmployee extends Employee {
	private float Sal;
	
	private static int count;
	
	static {
		count = 1;
	}

	public SalariedEmployee(String pName, String mob, String email, String dept, String designation, LocalDate doj, float sal) {
		super(generateSalEmpId(), pName, mob, email, dept, designation, doj);
		Sal = sal;
		count++;
	}

	public SalariedEmployee() {
		super();
		count++;
	}

	public float getSal() {
		return Sal;
	}

	public void setSal(float sal) {
		Sal = sal;
	}
	
	private static String generateSalEmpId() {
		return "SE" + count;
	}

	@Override
	public String toString() {
		return super.toString() + " SalariedEmployee [Sal=" + Sal + "] ";
	}

}
