package com.demo.beans;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "employee22")
public class Employee extends Person {

	private String dept;
	private String desg;

	public Employee() {
		super();
	}

	public Employee(int id, String name, String mobile, String dept, String desg) {
		super(id, name, mobile);
		this.dept = dept;
		this.desg = desg;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getDesg() {
		return desg;
	}

	public void setDesg(String desg) {
		this.desg = desg;
	}

	@Override
	public String toString() {
		return super.toString() + " Employee [dept=" + dept + ", desg=" + desg + "]";
	}

}
