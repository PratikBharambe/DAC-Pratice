package com.demo.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demo.beans.MyUser;
import com.demo.service.LoginService;
import com.demo.service.LoginServiceImpl;

@WebServlet("/validate")
public class ValidateServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String username  = request.getParameter("username");
		String password  = request.getParameter("password");
		
		LoginService loginService = new LoginServiceImpl();
		
		MyUser user = loginService.validateUser(username, password);
		
		if(user != null && user.getRole().equals("user")) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			RequestDispatcher rd = request.getRequestDispatcher("catagories");
			rd.forward(request, response);
		} else {
			out.println("Invalid Credentials.");
			RequestDispatcher rd = request.getRequestDispatcher("loginpage.jsp");
			rd.include(request, response);
		}
		
	}

}
