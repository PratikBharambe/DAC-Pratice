package com.demo.beans;

public class Product {

	private int id;
	private String name;
	private int qty;

	public Product() {
		super();
		System.out.println("In default constructor Person Class");
	}

	public Product(int id, String name, int qty) {
		super();
		this.id = id;
		this.name = name;
		this.qty = qty;
		System.out.println("In parameterized constructor Person Class");
	}

	public int getId() {
		System.out.println("Person getId");
		return id;
	}

	public void setId(int id) {
		this.id = id;
		System.out.println("Person setId");
	}

	public String getName() {
		System.out.println("Person getName");
		return name;
	}

	public void setName(String name) {
		this.name = name;
		System.out.println("Person setName");
	}

	public int getQty() {
		System.out.println("Person getQty");
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
		System.out.println("Person setQty");
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", qty=" + qty + "]";
	}

}
