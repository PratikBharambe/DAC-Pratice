package com.demo.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.beans.Product;
import com.demo.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	ProductService pservice;

	@GetMapping("/getproducts")
	public ModelAndView getAllProducts() {
		List<Product> plist = pservice.getAllProducts();
		return new ModelAndView("showproduct", "plist", plist);
	}

	@PostMapping("/addnewproduct")
	public ModelAndView addNewProduct() {
		return new ModelAndView("addproduct");
	}

	@PostMapping("/addproduct")
//	public ModelAndView inserProduct(@RequestParam int id, @RequestParam String name, @RequestParam int quantity,
//			@RequestParam double price, @RequestParam String expiryDate, @RequestParam int cid) {
	public ModelAndView insertProduct(@ModelAttribute Product p) {
//		LocalDate ldate = LocalDate.parse(expiryDate, DateTimeFormatter.ofPattern("dd/MM/yyyy"));
//		Product p = new Product(id, name, quantity, price, ldate, cid);
		boolean status = pservice.addNewProduct(p);
		return new ModelAndView("redirect:/product/getproducts");
	}

	@GetMapping("editproduct/{id}")
	public ModelAndView editProduct(@PathVariable int id) {
		System.out.println("Inside Edit product");
		Product p = pservice.getById(id);
		if (p != null)
			return new ModelAndView("editproduct", "p", p);
		else {
			return new ModelAndView("redirect:/product/getproducts");
		}
	}

	@PostMapping("/updateProduct")
	public ModelAndView updateProduct(@RequestParam int id, @RequestParam String name, @RequestParam int qty,
			@RequestParam double price, @RequestParam String expiryDate, @RequestParam int cid) {
		LocalDate ldate = LocalDate.parse(expiryDate, DateTimeFormatter.ofPattern("dd/MM/yyyy"));
		Product p = new Product(id, name, qty, price, ldate, cid);
		boolean status = pservice.updateProduct(p);
		System.out.println(p);
		return new ModelAndView("redirect:/product/getproducts");
	}

	@GetMapping("deleteproduct/{id}")
	public ModelAndView deleteProduct(@PathVariable int id) {
		boolean status = pservice.deleteById(id);
		return new ModelAndView("redirect:/product/getproducts");
	}

}
