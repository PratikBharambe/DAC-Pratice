package com.demo.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.demo.beans.CartItem;
import com.demo.beans.Product;
import com.demo.service.ProductService;
import com.demo.service.ProductServiceImpl;

@WebServlet("/addorshowcart")
public class AddOrShowCart extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String choice = request.getParameter("btn");
		
		switch (choice) {

			case "add" -> {
				HttpSession session = request.getSession();
				List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
				if (cart == null)
					cart = new ArrayList<>();
	
				String[] prodArr = request.getParameterValues("prod");
	
				ProductService productService = new ProductServiceImpl();
	
				for (String id : prodArr) {
					Product product = productService.getProductById(Integer.parseInt(id));
					int orderQty = Integer.parseInt(request.getParameter("p" + id));
					cart.add(new CartItem(product.getId(), product.getName(), orderQty, product.getPrice()));
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
