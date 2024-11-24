package com.demo.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/cookie")
public class CookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String operation = request.getParameter("btn");

		switch (operation) {
			case "add" -> {
				String name = request.getParameter("name");
				String value = request.getParameter("value");
				Cookie cookie = new Cookie(name, value);
				response.addCookie(cookie);
				out.println("<h2>Cookie Added Successfully</h2>");
				RequestDispatcher rd = request.getRequestDispatcher("cookieDemo.html");
				rd.include(request, response);
			}
	
			case "remove" -> {
				String name = request.getParameter("name");
				Cookie[] arr = request.getCookies();
				for (Cookie c : arr) {
					if (c.getName().equals(name)) {
						c.setMaxAge(0);
						response.addCookie(c);
						out.println("<h2>Cookie Removed Successfully</h2>");
						RequestDispatcher rd = request.getRequestDispatcher("cookieDemo.html");
						rd.include(request, response);
						break;
					}
				}
			}
	
			case "display" -> {
				Cookie[] arr = request.getCookies();
				for (Cookie c : arr) {
					out.println(c.getName() + "---->" + c.getValue());
				}
				RequestDispatcher rd = request.getRequestDispatcher("cookieDemo.html");
				rd.include(request, response);
			}
		}

	}

}
