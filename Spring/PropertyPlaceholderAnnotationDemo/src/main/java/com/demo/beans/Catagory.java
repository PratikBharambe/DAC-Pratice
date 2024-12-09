package com.demo.beans;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class Catagory {

	@Value("${cat.cid}")
	private int cid;
	
	@Value("${cat.cname}")
	private String cname;

	public Catagory() {
		super();
	}

	public Catagory(int cid, String cname) {
		super();
		this.cid = cid;
		this.cname = cname;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	@Override
	public String toString() {
		return "Catagory [cid=" + cid + ", cname=" + cname + "]";
	}

}
