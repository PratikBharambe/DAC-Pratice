package com.demo.beans;

import java.util.Arrays;

public class Person {

	private String firstname;
	private String lastname;
	private String gender;
	private String degree;
	private String[] skills;
	private String city;

	public Person() {
		super();
	}

	public Person(String firstname, String lastname, String gender, String degree, String[] skills, String city) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.gender = gender;
		this.degree = degree;
		this.skills = skills;
		this.city = city;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String[] getSkills() {
		return skills;
	}

	public void setSkills(String[] skills) {
		this.skills = skills;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Override
	public String toString() {
		return "Person [firstname=" + firstname + ", lastname=" + lastname + ", gender=" + gender + ", degree=" + degree
				+ ", skills=" + Arrays.toString(skills) + ", city=" + city + "]";
	}

}
