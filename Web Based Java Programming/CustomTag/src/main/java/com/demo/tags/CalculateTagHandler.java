package com.demo.tags;

import java.io.IOException;

import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

public class CalculateTagHandler extends TagSupport {

	private static final long serialVersionUID = 1L;

	private int num1;
	private int num2;

	public int getNum1() {
		return num1;
	}

	public void setNum1(int num1) {
		this.num1 = num1;
	}

	public int getNum2() {
		return num2;
	}

	public void setNum2(int num2) {
		this.num2 = num2;
	}

	public int doStartTag() {
		return EVAL_BODY_INCLUDE;
	}

	public int doEndTag() {

		JspWriter out = pageContext.getOut();

		try {
			out.println("Inside Calculate Tag Handler.");
			out.println("Addition of " + num1 + " & " + num2 + " is : " + (num1 + num2) + ".<br>");
			out.println("Subtraction of " + num1 + " & " + num2 + " is : " + (num1 - num2) + ".<br>");
			out.println("Multiplication of " + num1 + " & " + num2 + " is : " + (num1 * num2) + ".<br>");
			out.println("Division of " + num1 + " & " + num2 + " is : " + (num1 / num2) + ".<br>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}

}
