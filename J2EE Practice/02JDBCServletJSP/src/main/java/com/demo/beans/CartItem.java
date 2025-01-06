package com.demo.beans;

public class CartItem {

	private int pid;
	private String pname;
	private int orderQty;
	private double price;

	public CartItem() {
		super();
	}

	public CartItem(int pid, String pname, int orderQty, double price) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.orderQty = orderQty;
		this.price = price;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
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
		return "CartItem [pid=" + pid + ", pname=" + pname + ", orderQty=" + orderQty + ", price=" + price + "]";
	}

}
