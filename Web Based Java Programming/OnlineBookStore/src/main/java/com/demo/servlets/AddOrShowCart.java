package com.demo.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demo.beans.Book;
import com.demo.beans.CartItem;
import com.demo.service.BookService;
import com.demo.service.BookServiceImpl;


@WebServlet("/addtocart")
public class AddOrShowCart extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String btn = request.getParameter("btn");
		
		switch(btn) {
			
			case "add" -> {
				
				HttpSession session = request.getSession();
				@SuppressWarnings("unchecked")
				List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
				if(cart == null) {
					cart = new ArrayList<>();
				}
				String[] books = request.getParameterValues("book");
				
				BookService bookService = new BookServiceImpl();
				
				for(String id : books) {
					Book b = bookService.getBookById(Integer.parseInt(id));
					int ordQty = Integer.parseInt(request.getParameter("b"+id));
					CartItem c = new CartItem(b.getId(), b.getName(), ordQty, b.getPrice());
					cart.add(c);
				}
				session.setAttribute("cart", cart);
				RequestDispatcher rd = request.getRequestDispatcher("catagories");
				rd.forward(request, response);
				
			}
			
			case "show" -> {
				RequestDispatcher rd = request.getRequestDispatcher("showcart.jsp");
				rd.forward(request, response);
			}
		
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
