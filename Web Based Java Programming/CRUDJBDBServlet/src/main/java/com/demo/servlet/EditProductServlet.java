package com.demo.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.format.DateTimeFormatter;

import com.demo.beans.Product;
import com.demo.service.ProductService;
import com.demo.service.ProductServiceImpl;


@SuppressWarnings("serial")
public class EditProductServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int id = Integer.parseInt(request.getParameter("id"));
		ProductService productService = new ProductServiceImpl();
		Product p = productService.getById(id);
		
		if(p!=null) {
			out.println("<form action='updateProd'>");
			out.println("Product Id : <input type='text' name='pid' id='pid' value='"+p.getId()+"' readonly><br>");
			out.println("Product Name : <input type='text' name='pname' id='pname' value='"+p.getName()+"'><br>");
			out.println("Product Quantity : <input type='text' name='qty' id='qty' value='"+p.getQuantity()+"'><br>");
			out.println("Product Price:  <input type='text' name='price' id='price'value='"+p.getPrice()+"'><br>");
			String dt=p.getExpiryDate().format(DateTimeFormatter.ofPattern("dd-MM-yyyy"));
			out.println("Expiry date : <input type='text' name='expdate' id='expdate' value='"+dt+"'><br>");
			out.println("Category Id : <input type='text' name='cid' id='cid' value='"+p.getCid()+"'><br>");
			out.println("<button type='submit' name='btn' id='btn' value='add'>Update Product</button>");
			out.println("</form><br>");
			out.println("<a href='logout'>Logout</a>");
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("showprod");
			rd.forward(request, response);
		}
		
	}

}
