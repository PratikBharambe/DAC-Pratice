package com.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdditionServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		int first = Integer.parseInt(request.getParameter("num1"));
		int second = Integer.parseInt(request.getParameter("num2"));
		int sum  = first + second;
		out.println("<h1> Addition is " + sum + ".</h1>");
		
	}
	
}
