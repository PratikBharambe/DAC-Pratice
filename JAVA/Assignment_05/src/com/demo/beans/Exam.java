package com.demo.beans;

import java.time.LocalDate;
import java.util.Arrays;

public class Exam {

	private int id;
	private String name;
	private String topic;
	private LocalDate date;
	private Question[] question;

	public Exam() {
		super();
	}

	public Exam(int id, String name, String topic, LocalDate date, Question[] question) {
		super();
		this.id = id;
		this.name = name;
		this.topic = topic;
		this.date = date;
		this.question = question;
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

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public Question[] getQuestion() {
		return question;
	}

	public void setQuestion(Question[] question) {
		this.question = question;
	}

	@Override
	public String toString() {
		return "Exam [id=" + id + ", name=" + name + ", topic=" + topic + ", date=" + date + ", question="
				+ Arrays.toString(question) + "]";
	}

}
