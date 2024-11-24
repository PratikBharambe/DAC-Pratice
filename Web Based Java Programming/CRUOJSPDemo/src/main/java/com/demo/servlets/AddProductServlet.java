package com.demo.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import com.demo.beans.Product;
import com.demo.service.ProductService;
import com.demo.service.ProductServiceImpl;

@WebServlet("/addprod")
public class AddProductServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		double price = Double.parseDouble(request.getParameter("price"));
		String dt = request.getParameter("date");
		LocalDate date = LocalDate.parse(dt, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		int cid = Integer.parseInt(request.getParameter("cid"));

		ProductService productService = new ProductServiceImpl();
		Product p = new Product(name, quantity, price, date, cid);

		productService.addNewProduct(p);

		RequestDispatcher rd = request.getRequestDispatcher("showprod");
		rd.forward(request, response);
	}

}
