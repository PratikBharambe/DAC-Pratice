package com.demo.beans;

public class Account {

	private String id;
	private String name;
	private int pin;
	private String question;
	private String answer;
	private float balance;

	private static int count;
	static {
		count = 1;
	}

	public Account(String type) {
		super();
		this.id = generateId(type, null);
	}

	public Account(String type, String name, int pin, String question, String answer, float balance) {
		super();
		this.id = generateId(type, name);
		this.name = name;
		this.pin = pin;
		this.question = question;
		this.answer = answer;
		this.balance = balance;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPin() {
		return pin;
	}

	public void setPin(int pin) {
		this.pin = pin;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public float getBalance() {
		return balance;
	}

	public void setBalance(float balance) {
		this.balance = balance;
	}

	public static int getCount() {
		return count;
	}

	public static void setCount(int count) {
		Account.count = count;
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", name=" + name + ", pin=" + pin + ", question=" + question + ", answer=" + answer
				+ ", balance=" + balance + "]";
	}

	private String generateId(String type, String name) {
		String id = type + name.substring(0, 2) + count;
		count++;
		return id;
	}

}
