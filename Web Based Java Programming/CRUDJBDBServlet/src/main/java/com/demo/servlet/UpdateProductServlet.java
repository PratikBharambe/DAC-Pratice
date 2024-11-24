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
public class UpdateProductServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		int id = Integer.parseInt(request.getParameter("pid"));
		String pname = request.getParameter("pname");
		int qty = Integer.parseInt(request.getParameter("qty"));
		double price = Double.parseDouble(request.getParameter("price"));
		String dt = request.getParameter("expdate");
		LocalDate ldt = LocalDate.parse(dt, DateTimeFormatter.ofPattern("dd-MM-yyyy"));
		int cid = Integer.parseInt(request.getParameter("cid"));
		
		Product p = new Product(id, pname, qty, price, ldt, cid);
		ProductService pservice = new ProductServiceImpl();
		
		boolean status = pservice.updateProduct(p);
		
		RequestDispatcher rd = request.getRequestDispatcher("showProduct");
		rd.forward(request, response);

	}

}
