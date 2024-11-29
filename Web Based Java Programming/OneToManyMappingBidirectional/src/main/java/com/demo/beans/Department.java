package com.demo.beans;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Department {

	@Id
	private int deptid;
	private String dname;
	private String location;
	@OneToMany(mappedBy = "d")
	private Set<Employee> elist;

	public Department() {
		super();
	}

	public Department(int deptid, String dname, String location, Set<Employee> elist) {
		super();
		this.deptid = deptid;
		this.dname = dname;
		this.location = location;
		this.elist = elist;
	}

	public int getDeptid() {
		return deptid;
	}

	public void setDeptid(int deptid) {
		this.deptid = deptid;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Set<Employee> getElist() {
		return elist;
	}

	public void setElist(Set<Employee> elist) {
		this.elist = elist;
	}

	@Override
	public String toString() {
		return "Department [deptid=" + deptid + ", dname=" + dname + ", location=" + location + ", elist=" + elist
				+ "]";
	}

}
