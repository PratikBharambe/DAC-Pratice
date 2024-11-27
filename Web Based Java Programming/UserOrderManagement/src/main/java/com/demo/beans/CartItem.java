package com.demo.beans;

public class CartItem {

	private int pid;
	private String pname;
	private int orderQty;
	private double price;
	private String status;
	private String comment;

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


	public CartItem(int pid, String pname, int orderQty, double price, String status, String comment) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.orderQty = orderQty;
		this.price = price;
		this.status = status;
		this.comment = comment;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	@Override
	public String toString() {
		return "CartItem [pid=" + pid + ", pname=" + pname + ", orderQty=" + orderQty + ", price=" + price + ", status="
				+ status + ", comment=" + comment + "]";
	}

}
