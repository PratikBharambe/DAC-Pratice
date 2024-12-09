package com.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.demo.beans.Category;
import com.demo.beans.Product;
import com.demo.service.CategoryService;
import com.demo.service.ProductService;

@RestController
@RequestMapping("/product")
public class ProductController {

	@Autowired
	ProductService productService;
	
	@Autowired
	CategoryService categoryService;
	
	@GetMapping("/products")
	public ResponseEntity<List<Product>> getAllProducts() {
		List<Product> plist = productService.getAllProducts();
		return ResponseEntity.ok(plist);
	}
	
	@GetMapping("/product/{id}")
	public ResponseEntity<Product> getById(@PathVariable int id) {
		Product p = productService.getById(id);
		if(p!=null)
			return ResponseEntity.ok(p);
		else
			return ResponseEntity.status(500).body(null);
	}
	
	@PostMapping("/categories/{cid}")
	public ResponseEntity<String> addCategory(@RequestBody Category c){
		
		boolean status = categoryService.addNewCategory(c);
		if(status)
		{
			return ResponseEntity.ok("Data Added Successfully.");
		} 
		
		return new ResponseEntity(HttpStatus.BAD_REQUEST);
	} 
	
	@PostMapping("/addproduct/{id}")
	public ResponseEntity<String> addNewProduct(@RequestBody Product p){
		boolean status = productService.addNewProduct(p);
		if(status)
			return ResponseEntity.ok("Data added successfully.");
		else
			return new ResponseEntity(HttpStatus.NOT_FOUND);
	}
	
	@PutMapping("/products/{id}")
	public ResponseEntity<String> updateProduct(@RequestBody Product p){
		boolean status=productService.updateProduct(p);
		if(status) {
			return ResponseEntity.ok("Data updated successfully");
		}
		else {
			return new ResponseEntity(HttpStatus.NOT_FOUND);
		}
	}
	
	@DeleteMapping("/products/{id}")
	public ResponseEntity<String> deleteProduct(@PathVariable int id){
		boolean status=productService.deleteById(id);
		if(status) {
			return ResponseEntity.ok("Data deleted successfully");
		}
		else {
			return new ResponseEntity(HttpStatus.NOT_FOUND);
		}
	}
	
}
