package com.demo.tags;

import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

public class PrintTableTagHandler extends TagSupport {

	private static final long serialVersionUID = 1L;
	
	private int num1;

	public int getNum1() {
		return num1;
	}

	public void setNum1(int num1) {
		this.num1 = num1;
	}
	
	@Override
	public int doStartTag() throws JspException {
		return super.doStartTag();
	}
	
	@Override
	public int doEndTag() throws JspException {
		JspWriter out = pageContext.getOut();
		for (int i = 1; i <= 10; i++) {
			try {
				out.println(num1 + " x " + i + " = " + (num1*i) + ".<br>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return super.doEndTag();
	}

}
