package com.demo.beans;

import com.demo.enums.Gender;

public class Customer {

	private int id;
	private String name;
	private Gender gender;

	public Customer() {
		super();
	}

	public Customer(int id, String name, Gender gender) {
		super();
		this.id = id;
		this.name = name;
		this.gender = gender;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", gender=" + gender + "]";
	}

}
