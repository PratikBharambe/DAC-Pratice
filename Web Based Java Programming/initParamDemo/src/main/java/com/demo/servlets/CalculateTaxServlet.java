package com.demo.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "calc", description = "tax calculation", urlPatterns = { "/incomeTax" }, initParams = {
		@WebInitParam(name = "num1", value = "500000"), @WebInitParam(name = "num2", value = "1000000") })
public class CalculateTaxServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	double slab1, slab2;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		double inc = Double.parseDouble(request.getParameter("income"));
		double tax = 0;
		if (inc <= slab1) {
			tax = 0;
		} else {
			double amt = inc - slab1;
			if (amt <= slab2) {
				tax = 0.10 * amt;
			} else {
				tax = slab2 * 0.10;
				tax = tax + 0.20 * (amt - slab2);
			}
		}
		out.println("<h1>Income tax is : " + tax + "</h1>");
	}

}
