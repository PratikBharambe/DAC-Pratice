package com.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.demo.beans.MyUser;
import com.demo.beans.Person;
import com.demo.service.LoginService;
import com.demo.service.LoginServiceImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class RegisterServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String firstname = request.getParameter("firstName");
		String lastname = request.getParameter("lastName");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String degree = request.getParameter("degree");
		String city = request.getParameter("city");
		String[] skills = request.getParameterValues("skills");
		
		LoginService loginService = new LoginServiceImpl();
		
		Person person = new Person(firstname, lastname, gender, degree, skills, city);
		MyUser user = new MyUser(username, password, "user");
		
		boolean status = loginService.registerdetails(person, user);
		
		if (status) {
			out.println("<h1>Registration successfully done, Please login</h1>");
			RequestDispatcher rd = request.getRequestDispatcher("login.html");
			rd.include(request, response);
		} else {
			out.println("<h1>Registration not done, Please re-register</h1>");
			RequestDispatcher rd = request.getRequestDispatcher("login.html");
			rd.include(request, response);
		}
		
		
	}

}
