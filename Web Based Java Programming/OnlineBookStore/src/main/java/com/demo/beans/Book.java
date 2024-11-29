package com.demo.beans;

public class Book {

	private int id;
	private String name;
	private int qty;
	private double price;
	private String auther;
	private int cid;

	public Book() {
		super();
	}

	public Book(int id, String name, int qty, double price, String auther, int cid) {
		super();
		this.id = id;
		this.name = name;
		this.qty = qty;
		this.price = price;
		this.auther = auther;
		this.cid = cid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getAuther() {
		return auther;
	}

	public void setAuther(String auther) {
		this.auther = auther;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	@Override
	public String toString() {
		return "Book [id=" + id + ", name=" + name + ", qty=" + qty + ", price=" + price + ", auther=" + auther
				+ ", cid=" + cid + "]";
	}

}
