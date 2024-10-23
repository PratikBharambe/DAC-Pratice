package com.demo.dao;

import com.demo.beans.Question;

public class ExamDaoImpl implements ExamDao {
	private static Question javaQuestion[];

	static {
		javaQuestion = new Question[5];

		javaQuestion[0] = new Question(1, "Which of the following is not a Java features?", "a) Dynamic",
				"b) Architecture Neutral", "c) Use of pointers", "d) Object-oriented", "c", 10);
		javaQuestion[1] = new Question(2, "_____ is used to find and fix bugs in the Java programs.", "a) JVM",
				"b) JRE", "c) JDK", "d) JDB", "d", 10);
		javaQuestion[2] = new Question(1, "Which of the following is a valid declaration of a char?",
				"a) char ch = '\\utea';", "b) char ca = 'tea';", "char cr = \\u0223;", "d) char cc = '\\itea';", "a",
				10);
		javaQuestion[3] = new Question(2, "What is the return type of the hashCode() method in the Object class?",
				"a) Object", "b) int", "c) long", "d) void", "b", 10);
		javaQuestion[4] = new Question(2, "What does the expression float a = 35 / 0 return?", "a) 0",
				"b) Not a Number", "c) Infinity", "d) Run time exception", "d", 10);
	}
}