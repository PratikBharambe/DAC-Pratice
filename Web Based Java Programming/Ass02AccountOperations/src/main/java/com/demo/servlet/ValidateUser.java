package com.demo.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.demo.beans.MyUser;
import com.demo.service.LoginService;
import com.demo.service.LoginServiceImpl;

@WebServlet("/validateData")
public class ValidateUser extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		LoginService ls = new LoginServiceImpl();

		MyUser user = ls.validateUser(username, password);

		if (user != null && user.getRole().equals("admin")) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			RequestDispatcher rd = request.getRequestDispatcher("index.html");
			rd.forward(request, response);
			
		} else if (user != null && user.getRole().equals("user")) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			RequestDispatcher rd = request.getRequestDispatcher("Withdraw&Deposite.html");
			rd.forward(request, response);

		} else {
			out.println("Invalid Credentials.");
			RequestDispatcher rd = request.getRequestDispatcher("login.html");
			rd.include(request, response);
		}

	}

}
