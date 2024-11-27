package com.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalculateTax extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
	private final static float rateOfIntrest = 0.1f;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		double amount = Double.parseDouble(request.getParameter("amount"));
		float years = Float.parseFloat(request.getParameter("years"));
		
		double intreast = amount * rateOfIntrest;
		double totalAmount = amount + intreast;
		double emi = totalAmount / (years * 12);
		
		out.println("Loan amount : " + amount + "<br>");
		out.println("Intrest rate : " + (rateOfIntrest*100) + "<br>");
		out.println("Intrest amount : " + intreast + "%<br>");
		out.println("Total amount to be paid : " + totalAmount + "<br>");
		out.println("Emi is : " + emi + "<br>");
	}

}
