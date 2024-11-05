package com.demo.beans;

public class Employee {

	private int empId;
	private String eNamel;
	private String addr;

	public Employee() {
		super();
	}

	public Employee(int empId, String eNamel, String addr) {
		super();
		this.empId = empId;
		this.eNamel = eNamel;
		this.addr = addr;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String geteNamel() {
		return eNamel;
	}

	public void seteNamel(String eNamel) {
		this.eNamel = eNamel;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", eNamel=" + eNamel + ", addr=" + addr + "]";
	}

}
