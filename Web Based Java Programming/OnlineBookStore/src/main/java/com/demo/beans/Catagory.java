package com.demo.beans;

public class Catagory {

	private int id;
	private String book;
	private String desc;

	public Catagory() {
		super();
	}

	public Catagory(int id, String book, String desc) {
		super();
		this.id = id;
		this.book = book;
		this.desc = desc;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBook() {
		return book;
	}

	public void setBook(String book) {
		this.book = book;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	@Override
	public String toString() {
		return "Catagory [id=" + id + ", book=" + book + ", desc=" + desc + "]";
	}

}
