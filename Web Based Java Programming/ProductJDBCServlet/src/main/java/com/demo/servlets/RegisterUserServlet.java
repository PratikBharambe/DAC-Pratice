package com.demo.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import com.demo.dao.LoginDao;
import com.demo.dao.LoginDaoImpl;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegisterUserServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String role = request.getParameter("role");

		LoginDao loginDao = new LoginDaoImpl();
		boolean status = loginDao.registerUser(username, password, role);
		if (status)
			out.println("<h1>User added successfully.</h1>");
		else
			out.println("<h1>user Cannot added.</h1>");

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		doGet(request, response);
	}

}
