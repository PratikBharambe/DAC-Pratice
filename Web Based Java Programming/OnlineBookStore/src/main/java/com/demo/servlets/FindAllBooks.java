package com.demo.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.beans.Book;
import com.demo.service.BookService;
import com.demo.service.BookServiceImpl;

@WebServlet("/getBooksByCatagory")
public class FindAllBooks extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		int id = Integer.parseInt(request.getParameter("id"));

		BookService bs = new BookServiceImpl();

		List<Book> blist = bs.getBooksById(id);

		request.setAttribute("blist", blist);
		if (blist != null) {
			RequestDispatcher rd = request.getRequestDispatcher("ShowBooks.jsp");
			rd.forward(request, response);
		} else {
			out.println("Please select new Category!! No Book Found");
			RequestDispatcher rd = request.getRequestDispatcher("catagories");
			rd.include(request, response);
		}

	}

}
