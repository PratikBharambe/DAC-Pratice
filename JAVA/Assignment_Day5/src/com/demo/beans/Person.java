package com.demo.beans;

public class Person {
	private String perId;
	private String pName;
	private String mob;
	private String email;

	public Person() {
		super();
	}

	public Person(String perId, String pName, String mob, String email) {
		super();
		this.perId = perId;
		this.pName = pName;
		this.mob = mob;
		this.email = email;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getMob() {
		return mob;
	}

	public void setMob(String mob) {
		this.mob = mob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPerId() {
		return perId;
	}

	@Override
	public String toString() {
		return " Person [perId=" + perId + ", pName=" + pName + ", mob=" + mob + ", email=" + email + "] ";
	}

}
