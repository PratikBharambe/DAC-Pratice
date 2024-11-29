package com.demo.service;

import java.util.List;

import com.demo.beans.Product;

public interface ProductService {

	boolean addNewEmployee();

	void closeConnection();

	List<Product> getAllProducts();

	boolean updateProduct();

	Product getProductById();

	boolean deleteById();

	List<Product> getAllProductsSortedByName();

}
