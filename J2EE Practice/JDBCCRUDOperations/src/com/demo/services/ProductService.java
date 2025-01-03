package com.demo.services;

import java.util.List;

import com.demo.beans.Product;

public interface ProductService {

	List<Product> getAllProducts();

	void closeConnection();

	boolean addNewProduct(Product p);

	boolean updateProduct(int id, int qty, double price);

}
