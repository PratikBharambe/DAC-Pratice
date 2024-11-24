package com.demo.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/calculate")
public class CalculationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		String operation = request.getParameter("btn");

		switch (operation) {
			case "add" -> {
				out.println("The additon is : " + (num1 + num2));
			}
			case "sub" -> {
				out.println("The additon is : " + (num1 - num2));
			}
			case "mult" -> {
				out.println("The additon is : " + (num1 * num2));
			}
			case "div" -> {
				out.println("The additon is : " + (num1 / num2));
			}
		}

	}

}
