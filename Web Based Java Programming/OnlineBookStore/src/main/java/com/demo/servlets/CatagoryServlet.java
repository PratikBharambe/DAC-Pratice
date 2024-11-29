package com.demo.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.demo.beans.Catagory;
import com.demo.service.BookService;
import com.demo.service.BookServiceImpl;

@WebServlet("/catagories")
public class CatagoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BookService bs = new BookServiceImpl();
		
		List<Catagory> clist = bs.getAllBookCatagories();
		
		if(clist != null) {
			request.setAttribute("clist", clist);
			RequestDispatcher rd = request.getRequestDispatcher("displayCatagory.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
