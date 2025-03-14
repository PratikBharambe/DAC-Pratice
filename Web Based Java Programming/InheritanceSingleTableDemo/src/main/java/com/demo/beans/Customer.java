package com.demo.beans;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue("dept")
public class Customer extends Person {

	private String address;
	private String relmgr;

	public Customer() {
		super();
	}

	public Customer(int id, String name, String mobile, String address, String relmgr) {
		super(id, name, mobile);
		this.address = address;
		this.relmgr = relmgr;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRelmgr() {
		return relmgr;
	}

	public void setRelmgr(String relmgr) {
		this.relmgr = relmgr;
	}

	@Override
	public String toString() {
		return super.toString() + " Customer [address=" + address + ", relmgr=" + relmgr + "]";
	}

}
