package com.demo.service;

import java.util.List;

import com.demo.beans.Product;

public interface ProductService {

	boolean addNewProduct();

	List<Product> getAllProduct();

	boolean updateProduct();

	boolean deleteProduct();
}
