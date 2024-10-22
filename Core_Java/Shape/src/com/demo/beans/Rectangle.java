package com.demo.beans;

public class Rectangle extends Shape {

	private int length;
	private int breadth;

	public Rectangle() {
		super();
	}

	public Rectangle(String color, int length, int breadth) {
		super(color);
		this.length = length;
		this.breadth = breadth;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public int getBreadth() {
		return breadth;
	}

	public void setBreadth(int breadth) {
		this.breadth = breadth;
	}

	@Override
	public String toString() {
		return super.toString() + "Rectangle [length=" + length + ", breadth=" + breadth + "]";
	}

	@Override
	public float calcArea() {
		return length * breadth;
	}

	@Override
	public float calcPerimeter() {
		return 2 * (length + breadth);
	}

}
