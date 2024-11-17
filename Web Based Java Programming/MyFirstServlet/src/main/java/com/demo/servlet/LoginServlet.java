package com.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.demo.beans.MyUser;
import com.demo.dao.LoginDao;
import com.demo.dao.LoginDaoImpl;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		LoginDao loginDao = new LoginDaoImpl();
		
		MyUser user = loginDao.authenticateUser(username, password);
		
		if(user != null)
			out.println("<h1>Login Successful !!! " + user.getRole() + "</h1>");
		else
			out.println("<h1>Login Unsuccessful !!!</h1>");

//		if (username.equals("admin") && password.equals("admin")) {
//			out.println("<h1>Login Successful !!!</h1>");
//		} else {
//			out.println("<h1>Login Unsuccessful !!!</h1>");
//		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		doGet(request, response);
	}

}
