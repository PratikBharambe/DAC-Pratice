package com.demo.beans;

import java.time.LocalDate;
import java.util.Arrays;

public class Friend {

	private int id;
	private String firstName;
	private String lastname;
	private int mobileNumber;
	private LocalDate dob;
	private String email;
	private String address;
	private String[] hobbies;

	public Friend() {
		super();
	}

	public Friend(int id, String firstName, String lastname, int mobileNumber, LocalDate dob, String email,
			String address, String[] hobbies) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastname = lastname;
		this.mobileNumber = mobileNumber;
		this.dob = dob;
		this.email = email;
		this.address = address;
		this.hobbies = hobbies;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public int getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(int mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public LocalDate getDob() {
		return dob;
	}

	public void setDob(LocalDate dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String[] getHobbies() {
		return hobbies;
	}

	public void setHobbies(String[] hobbies) {
		this.hobbies = hobbies;
	}

	@Override
	public String toString() {
		return "Friend [id=" + id + ", firstName=" + firstName + ", lastname=" + lastname + ", mobileNumber="
				+ mobileNumber + ", dob=" + dob + ", email=" + email + ", address=" + address + ", hobbies="
				+ Arrays.toString(hobbies) + "]";
	}

}
