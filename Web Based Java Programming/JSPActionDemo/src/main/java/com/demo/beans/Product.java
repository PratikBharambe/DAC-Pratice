package com.demo.beans;

public class Product {

	private int pid;
	private String pname;
	private int qty;
	private double price;

	public Product() {
		super();
		System.out.println("Inside product's default constructor.");
	}

	public Product(int pid, String pname, int qty, double price) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.qty = qty;
		this.price = price;
		System.out.println("Inside product's parameterized constructor.");
	}

	public int getPid() {
		System.out.println("Inside getPid() method");
		return pid;
	}

	public void setPid(int pid) {
		System.out.println("Inside setPid() method");
		this.pid = pid;
	}

	public String getPname() {
		System.out.println("Inside getPname() method");
		return pname;
	}

	public void setPname(String pname) {
		System.out.println("Inside setPname() method");
		this.pname = pname;
	}

	public int getQty() {
		System.out.println("Inside getQty() method");
		return qty;
	}

	public void setQty(int qty) {
		System.out.println("Inside setQty() method");
		this.qty = qty;
	}

	public double getPrice() {
		System.out.println("Inside getPrice() method");
		return price;
	}

	public void setPrice(double price) {
		System.out.println("Inside setPrice() method");
		this.price = price;
	}

	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", qty=" + qty + ", price=" + price + "]";
	}

}
