package com.demo.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

//@WebServlet("/calculateTax")
@WebServlet(
		name = "calculateTax",
		description = "Tax Calculator Application",
		urlPatterns = "/calculateTax",
		initParams = {
				@WebInitParam(name = "num1", value = "300000"),
				@WebInitParam(name = "num2", value = "700000")
		}
)
public class TaxCalculatorServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private double slab1, slab2;
	
	@Override
	public void init() throws ServletException {
		slab1 = Double.parseDouble(getInitParameter("num1"));
		slab2 = Double.parseDouble(getInitParameter("num2"));
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double income = Double.parseDouble(request.getParameter("income"));
		double tax = 0;
		
		if(income < slab1) {
			tax = 0;
		} else {
			tax = slab2 * 0.10;
			if (income > slab2) {
				tax = tax + (income * 0.10);
			} else {
				tax = tax * (income * 0.20);
			}
		}
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.println("<h1>Tax : " + tax + "</h1>");
		
	}

}
