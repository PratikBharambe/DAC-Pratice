package com.demo.beans;

import java.time.LocalDate;

public class Employee extends Person {
	private String dept;
	private String designation;
	private LocalDate doj;
	
	public Employee() {
		super();
	}

	public Employee(String perId, String pName, String mob, String email, String dept, String designation, LocalDate doj) {
		super(perId, pName, mob, email);
		this.dept = dept;
		this.designation = designation;
		this.doj = doj;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public LocalDate getDoj() {
		return doj;
	}

	public void setDoj(LocalDate doj) {
		this.doj = doj;
	}

	@Override
	public String toString() {
		return super.toString()+" Employee [dept=" + dept + ", designation=" + designation + ", doj=" + doj + "] ";
	}
	
	
}
