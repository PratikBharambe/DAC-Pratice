package com.demo.beans;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class Product {

	@Value("${prod.pid}")
	private int pid;
	
	@Value("${prod.pname}")
	private String pname;
	
	@Value("${prod.quantity}")
	private int quantity;
	
	@Autowired
	private Catagory c;

	public Product() {
		super();
		System.out.println("Inside product default constructor.");
	}

	public Product(int pid, String pname, int quantity, Catagory c) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.quantity = quantity;
		this.c = c;
		System.out.println("Inside product parameterized constructor.");
	}

	public int getPid() {
		System.out.println("Product getPid");
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
		System.out.println("Product setPid");
	}

	public String getPname() {
		System.out.println("Product getPname");
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
		System.out.println("Product setPname");
	}

	public int getQuantity() {
		System.out.println("Product getQuantity");
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
		System.out.println("Product setQuantity");
	}

	public Catagory getC() {
		System.out.println("Product getC");
		return c;
	}

	public void setC(Catagory c) {
		this.c = c;
		System.out.println("Product setC");
	}

	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", quantity=" + quantity + ", c=" + c + "]";
	}

}
