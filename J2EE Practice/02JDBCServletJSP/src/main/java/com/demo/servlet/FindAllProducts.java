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

import com.demo.beans.Product;
import com.demo.service.ProductService;
import com.demo.service.ProductServiceImpl;


@WebServlet("/getproducts")
public class FindAllProducts extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int cid = Integer.parseInt(request.getParameter("cid"));
		ProductService productService = new ProductServiceImpl();
		List<Product> plist = productService.getProductByCatagory(cid);
		if(plist != null) {
			request.setAttribute("plist", plist);
			RequestDispatcher rd = request.getRequestDispatcher("showProduct.jsp");
			rd.forward(request, response);
		}else {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1>No product found for select Category ....<br>Select Another catagory.</h1>");
			RequestDispatcher rd = request.getRequestDispatcher("catagories");
			rd.include(request, response);
		}
		
	}
	
}
