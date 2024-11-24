package com.demo.servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import com.demo.beans.Product;
import com.demo.service.ProductService;
import com.demo.service.ProductServiceImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class AddProductServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {		
		String name = request.getParameter("name");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		double price = Double.parseDouble(request.getParameter("price"));
		String dt = request.getParameter("date");
		LocalDate date = LocalDate.parse(dt, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		int cid = Integer.parseInt(request.getParameter("cid"));
		
		ProductService productService = new ProductServiceImpl();		
		Product p = new Product(name, quantity, price, date, cid);
		
		productService.addNewProduct(p);
		
		RequestDispatcher rd = request.getRequestDispatcher("showProduct");
		rd.forward(request, response);
	
	}

}
