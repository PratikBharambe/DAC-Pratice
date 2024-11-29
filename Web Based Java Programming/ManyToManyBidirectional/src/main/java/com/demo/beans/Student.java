package com.demo.beans;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "studenttab")
public class Student {

	@Id
	private int sid;
	private String sanme;
	@ManyToMany(mappedBy = "slist")
	private Set<Course> clist;

	public Student() {
		super();
	}

	public Student(int sid, String sanme, Set<Course> clist) {
		super();
		this.sid = sid;
		this.sanme = sanme;
		this.clist = clist;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getSanme() {
		return sanme;
	}

	public void setSanme(String sanme) {
		this.sanme = sanme;
	}

	public Set<Course> getClist() {
		return clist;
	}

	public void setClist(Set<Course> clist) {
		this.clist = clist;
	}

	@Override
	public String toString() {
		return "Student [sid=" + sid + ", sanme=" + sanme + ", clist=" + clist + "]";
	}

}
