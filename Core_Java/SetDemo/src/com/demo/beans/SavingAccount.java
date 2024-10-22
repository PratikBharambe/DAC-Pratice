package com.demo.beans;

public class SavingAccount extends Account {

	private int cheque_book_number;
	private static float int_rate;
	private static float min_balance;

	static {
		int_rate = 0.04f;
		min_balance = 5000;
	}

	public SavingAccount(String type) {
		super(type);
	}

	public SavingAccount(String type, int cheque_book_number) {
		super(type);
		this.cheque_book_number = cheque_book_number;
	}

	public int getCheque_book_number() {
		return cheque_book_number;
	}

	public void setCheque_book_number(int cheque_book_number) {
		this.cheque_book_number = cheque_book_number;
	}

	public static float getInt_rate() {
		return int_rate;
	}

	public static void setInt_rate(float int_rate) {
		SavingAccount.int_rate = int_rate;
	}

	public static float getMin_balance() {
		return min_balance;
	}

	public static void setMin_balance(float min_balance) {
		SavingAccount.min_balance = min_balance;
	}

	@Override
	public String toString() {
		return "SavingAccount [cheque_book_number=" + cheque_book_number + "]";
	}

}
