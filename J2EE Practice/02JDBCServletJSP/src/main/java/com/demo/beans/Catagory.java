package com.demo.beans;

public class Catagory {

	private int id;
	private String cname;
	private String cdesc;

	public Catagory() {
		super();
	}

	public Catagory(int id, String cname, String cdesc) {
		super();
		this.id = id;
		this.cname = cname;
		this.cdesc = cdesc;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCdesc() {
		return cdesc;
	}

	public void setCdesc(String cdesc) {
		this.cdesc = cdesc;
	}

	@Override
	public String toString() {
		return "Catagory [id=" + id + ", cname=" + cname + ", cdesc=" + cdesc + "]";
	}

}
