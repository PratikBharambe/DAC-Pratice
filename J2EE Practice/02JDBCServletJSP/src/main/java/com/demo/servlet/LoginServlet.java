package com.demo.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.demo.beans.User;
import com.demo.service.LoginService;
import com.demo.service.LoginServiceImpl;

@WebServlet("/validate")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		LoginService loginService = new LoginServiceImpl();
		User user = loginService.authenticateUser(username, password);

		if (user.getRole().equals("user")) {
			RequestDispatcher rd = request.getRequestDispatcher("catagories");
			rd.forward(request, response);
		} else {
			out.println("<h1>Login failed !!!!<br>Try again ..........</h1>");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.include(request, response);
		}

//		if(username.equals("admin") && password.equals("admin"))
//			out.println("<h1>Login Successfull !!!!</h1>");
//		else
//			out.println("<h1>Login failed !!!!</h1>");

	}

}
