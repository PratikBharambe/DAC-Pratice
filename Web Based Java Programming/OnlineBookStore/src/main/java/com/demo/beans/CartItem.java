package com.demo.beans;

public class CartItem {

	private int id;
	private String name;
	private int orderQty;
	private double price;

	public CartItem() {
		super();
	}

	public CartItem(int pid, String pname, int orderQty, double price) {
		super();
		this.id = pid;
		this.name = pname;
		this.orderQty = orderQty;
		this.price = price;
	}

	public int getPid() {
		return id;
	}

	public void setPid(int pid) {
		this.id = pid;
	}

	public String getPname() {
		return name;
	}

	public void setPname(String pname) {
		this.name = pname;
	}

	public int getOrderQty() {
		return orderQty;
	}

	public void setOrderQty(int orderQty) {
		this.orderQty = orderQty;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "CartItem [pid=" + id + ", pname=" + name + ", orderQty=" + orderQty + ", price=" + price + "]";
	}

}
