package com.demo.beans;

import java.time.LocalDate;

public class MasterStudent extends Student {
	private String thesissub, degree;
	private int thesismarks;

	public MasterStudent() {
		super();
	}

	public MasterStudent(int pid, String pname, String address, LocalDate bdate, int[] marks, String thesissub,
			String degree, int thesismarks) {
		// calls parameterized constructor
		// use super, then that line has to be the first line of the function
		super(pid, pname, address, bdate, marks);
//		System.out.println("in MasterStudent parameterized constructor");
		this.thesissub = thesissub;
		this.degree = degree;
		this.thesismarks = thesismarks;
	}

	public String getThesissub() {
		return thesissub;
	}

	public void setThesissub(String thesissub) {
		this.thesissub = thesissub;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public int getThesismarks() {
		return thesismarks;
	}

	public void setThesismarks(int thesismarks) {
		this.thesismarks = thesismarks;
	}

	public float calculateGrade() {
		// int[] mks=this.getMarks();
		// return mks[0]+mks[1]+spsub;
		return ((marks[0] + marks[1]) * 0.20f) + thesismarks;
	}
	
	
//	to-do
//	public boolean updateMarks() {
//		System.out.println("Enter new marks for thesis");
////		int newMarks = sc.nextInt();
//	}

	@Override
	public String toString() {
		return super.toString() + "MasterStudent [thesissub=" + thesissub + ", degree=" + degree + ", thesismarks="
				+ thesismarks + "]";
	}

	@Override
	public boolean updateMarks() {
		// TODO Auto-generated method stub
		return false;
	}

}
