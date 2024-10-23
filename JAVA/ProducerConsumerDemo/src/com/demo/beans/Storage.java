package com.demo.beans;

public class Storage {
	private int n;
	private boolean valueSet;

	public Storage() {
		super();
		valueSet = false;
	}
	
	public void setStopFlag(boolean flag) {
		this.valueSet = flag;
	}

	synchronized public void put(int x) {
		if (valueSet) {
			try {
				wait();
			} catch (InterruptedException e) {
				System.out.println(e.getMessage());
			}
		}
		System.out.println(x);
		n = x;
		valueSet = true;
		notify();
	}

	synchronized public void get() {
		if (!valueSet) {
			try {
				wait();
			} catch (InterruptedException e) {
				System.out.println(e.getMessage());
			}
		}
		System.out.println(n);
		valueSet = false;
		notify();
	}
}
