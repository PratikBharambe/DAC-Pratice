package com.demo.enums;

public enum Coffee {

	small(150, 15), medium(200, 20), large(300, 35);

	private int size;
	private int price;

	private Coffee(int size, int price) {
		this.size = size;
		this.price = price;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

}
