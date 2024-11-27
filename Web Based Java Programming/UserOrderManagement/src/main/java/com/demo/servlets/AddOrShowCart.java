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

import com.demo.beans.CartItem;
import com.demo.beans.Product;
import com.demo.service.ProductService;
import com.demo.service.ProductServiceImpl;

@WebServlet("/addorshowcart")
public class AddOrShowCart extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String btn = request.getParameter("btn");
		
		switch (btn) {
		
		case "add" -> {

			HttpSession sess = request.getSession();
			@SuppressWarnings("unchecked")
			List<CartItem> clist = (List<CartItem>) sess.getAttribute("cart");
			// create a new list if the cart does not exists
			if (clist == null) {
				clist = new ArrayList<>();
			}

			String[] parr = request.getParameterValues("prod");

			ProductService productService = new ProductServiceImpl();

			for (String id : parr) {
				Product p = productService.getById(Integer.parseInt(id));
				int ordQty = Integer.parseInt(request.getParameter("p" + id));
				if (p.getQty() > ordQty) {
					CartItem c = new CartItem(p.getId(), p.getName(), ordQty, p.getPrice(), "added", "ok");
					clist.add(c);
				} else {
					CartItem c = new CartItem(p.getId(), p.getName(), ordQty, p.getPrice(), "not added",
							"Insifficient stock, please add qty <= ");
					clist.add(c);
				}
				sess.setAttribute("cart", clist);
				RequestDispatcher rd = request.getRequestDispatcher("catagories");
				rd.forward(request, response);
			}

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
