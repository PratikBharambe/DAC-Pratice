package com.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.format.DateTimeFormatter;
import java.util.List;

import com.demo.beans.Product;
import com.demo.service.ProductService;
import com.demo.service.ProductServiceImpl;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class ShowProductServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		ProductService productService = new ProductServiceImpl();
		List<Product> productList = productService.getAllProducts();
		
		if(productList != null) {
			out.println("<table border='2'>");
			out.println("<tr><td>Product Id</td><td>Product Name</td><td>Quantity</td><td>Price</td><td>Expiry Date</td><td>Catagory id</td><td>Actions</td></tr>");
			for (Product p : productList) {
				out.println("<tr><td>"+p.getId()+"</td><td>"+p.getName()+"</td><td>"+p.getQuantity()+"</td><td>"+p.getPrice()+"</td>");
				String date = p.getExpiryDate().format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));;
				out.println("<td>"+date+"</td><td>"+p.getCid()+"</td>");
				out.println("<td><a href='editProduct?id="+p.getId()+"'>edit</a>/<a href='deleteProduct?id="+p.getId()+"'>delete</a></td></tr>");				
			}
			out.println("</table>");
			out.println("<form action='addProduct.html' action='post'>");
			  out.println("<button type='submit' name='btn' id='btn' value='add'>Add new Product</button>");
			out.println("</form>");
		}
		
	}

}
