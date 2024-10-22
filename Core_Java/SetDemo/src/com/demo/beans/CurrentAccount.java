package com.demo.beans;

public class CurrentAccount extends Account {

	private int min_transaction;
	private static int min_balance;
	private static float int_rate;
	static {
		min_balance = 1000;
		int_rate = 0.2f;
	}

	public CurrentAccount(String type) {
		super(type);
		// TODO Auto-generated constructor stub
	}

	public CurrentAccount(String type, int min_transaction) {
		super(type);
		this.min_transaction = min_transaction;
	}

	public int getMin_transaction() {
		return min_transaction;
	}

	public void setMin_transaction(int min_transaction) {
		this.min_transaction = min_transaction;
	}

	public static int getMin_balance() {
		return min_balance;
	}

	public static void setMin_balance(int min_balance) {
		CurrentAccount.min_balance = min_balance;
	}

	public static float getInt_rate() {
		return int_rate;
	}

	public static void setInt_rate(float int_rate) {
		CurrentAccount.int_rate = int_rate;
	}

	@Override
	public String toString() {
		return "CurrentAccount [min_transaction=" + min_transaction + "]";
	}

}
