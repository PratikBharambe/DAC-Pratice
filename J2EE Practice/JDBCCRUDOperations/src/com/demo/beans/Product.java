package com.demo.beans;

import java.time.LocalDate;

public class Product {

	private int id;
	private String name;
	private int qty;
	private double price;
	private LocalDate expDate;
	private int cid;

	public Product() {
		super();
	}

	public Product(int id, String name, int qty, double price, LocalDate expDate, int cid) {
		super();
		this.id = id;
		this.name = name;
		this.qty = qty;
		this.price = price;
		this.expDate = expDate;
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

	public LocalDate getExpDate() {
		return expDate;
	}

	public void setExpDate(LocalDate expDate) {
		this.expDate = expDate;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", qty=" + qty + ", price=" + price + ", expDate=" + expDate
				+ ", cid=" + cid + "]";
	}

}
