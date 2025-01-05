package com.demo.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.demo.beans.Catagory;
import com.demo.service.ProductService;
import com.demo.service.ProductServiceImpl;

@WebServlet("/catagories")
public class CatagoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductService productService = new ProductServiceImpl();
		List<Catagory> clist = productService.getAllCatagories();
		if(clist != null) {
			request.setAttribute("clist", clist);
			RequestDispatcher rd = request.getRequestDispatcher("CatagoryPage.jsp");
			rd.forward(request, response);
		}else {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1>No categories found</h1>");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
