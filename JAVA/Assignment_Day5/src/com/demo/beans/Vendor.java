package com.demo.beans;

import java.time.LocalDate;

public class Vendor extends Employee {
	private int noOfEmp;
	private float amt;
	
	private static int count;
	static {
		count = 1;
	}

	public Vendor() {
		super();
		count++;
	}

	public Vendor(String pName, String mob, String email, String dept, String designation, LocalDate doj, int noOfEmp, float amt) {
		super(generateVenderEmpId(), pName, mob, email, dept, designation, doj);
		this.noOfEmp = noOfEmp;
		this.amt = amt;
		count++;
	}
	
	private static String generateVenderEmpId() {
		return "VE" + count;
	}

	public int getNoOfEmp() {
		return noOfEmp;
	}

	public void setNoOfEmp(int noOfEmp) {
		this.noOfEmp = noOfEmp;
	}

	public float getAmt() {
		return amt;
	}

	public void setAmt(float amt) {
		this.amt = amt;
	}

	@Override
	public String toString() {
		return super.toString() + " Vendor [noOfEmp=" + noOfEmp + ", amt=" + amt + "] ";
	}

}
