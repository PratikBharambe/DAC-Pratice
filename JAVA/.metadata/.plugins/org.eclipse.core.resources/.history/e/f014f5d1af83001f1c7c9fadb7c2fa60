package com.demo.beans;

public class Member extends Person {
	private String type;
	private float amtPaid;
	
	private static int count;
	
	static {
		count = 1;
	}

	public Member() {
		super();
		count++;
	}

	public Member(String pName, String mob, String email, String type, float amtPaid) {
		super(generateMemberId(), pName, mob, email);
		this.type = type;
		this.amtPaid = amtPaid;
		count++;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public float getAmtPaid() {
		return amtPaid;
	}

	public void setAmtPaid(float amtPaid) {
		this.amtPaid = amtPaid;
	}
	
	private static String generateMemberId() {
		return "M" + count;
	}

	@Override
	public String toString() {
		return super.toString() + "Member [type=" + type + ", amtPaid=" + amtPaid + "]";
	}

}
