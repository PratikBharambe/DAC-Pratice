package com.demo.tags;

import java.io.IOException;

import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

public class HelloTagHandler extends TagSupport {

	static final long serialVersionUID = 1L;

	private String firstName;
	private String lastName;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public int doStartTag() {
		return EVAL_BODY_INCLUDE;
	}
	
	public int doEndTag() {
		JspWriter out = pageContext.getOut();
		
		try {
			out.println("Hello from Hello Tag Handler.<br>");
			out.println("Here printing firstname and lastname.<br>");
			out.println("<h2>First Name is :" + firstName + ".<br>");
			out.println("Last Name is :" + lastName + ".</h1> <br>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}

}
