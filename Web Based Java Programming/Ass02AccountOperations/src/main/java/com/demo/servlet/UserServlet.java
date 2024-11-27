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
import com.demo.service.AccountService;
import com.demo.service.AccountServiceImpl;

@WebServlet("/creditordebit")
public class UserServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String btn = request.getParameter("btn");
		
		AccountService ac = new AccountServiceImpl();
		HttpSession session = request.getSession();
		MyUser user = (MyUser) session.getAttribute("user");
		
		double balance = ac.getBalanceByid(user.getId());

		switch (btn) {

		case "debit" -> {
			Double amount = Double.parseDouble(request.getParameter("amount"));
			boolean status = ac.debitAmount(user, amount);
			RequestDispatcher rd = request.getRequestDispatcher("Withdraw&Deposite.html");
			if(status) {
				out.println("Amount debited Successfully.");
				rd.include(request, response);
			} else {
				out.println("Insufficient Balance.");
				rd.include(request, response);
			}
		}

		case "credit" -> {
			Double amount = Double.parseDouble(request.getParameter("amount"));
			boolean status = ac.creditAmount(user, amount);
			RequestDispatcher rd = request.getRequestDispatcher("Withdraw&Deposite.html");
			if(status) {
				out.println("Amount credited Successfully.");
				rd.include(request, response);
			} else {
				out.println("Insufficient Balance.");
				rd.include(request, response);
			}
		}

		case "chkbal" -> {
			out.println("Account balance is : " + balance );
		}

		}

	}

}
