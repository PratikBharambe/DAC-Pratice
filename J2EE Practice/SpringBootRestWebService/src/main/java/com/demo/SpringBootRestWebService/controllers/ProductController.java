package com.demo.SpringBootRestWebService.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.demo.SpringBootRestWebService.beans.Product;
import com.demo.SpringBootRestWebService.service.ProductService;

@RestController
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("/products")
	public ResponseEntity<List<Product>> getAllProduct(){
		List<Product> plist = productService.getAllProduct();
		return ResponseEntity.ok(plist);
	}
	
	@GetMapping("products/{id}")
	public ResponseEntity<Product> getProductById(@PathVariable int id){
		Product p = productService.getProductById(id);
		return ResponseEntity.ok(p);
	}

}
