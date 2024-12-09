package com.demo.service;

import java.util.List;

import com.demo.beans.Product;

public interface ProductService {

	boolean addNewProduct();

	boolean deleteProduct();

	boolean updateProduct();

	List<Product> getAllProducts();

	Product getProductById();

	List<Product> getProductsByPrice();

}
