package com.demo.service;

import java.util.List;

import com.demo.beans.Product;

public interface ProductService {

	boolean addProduct();

	boolean deletById(int id);

	boolean updateById(int id, int quantity, double price);

	List<Product> getAllProducts();

	Product getById(int id);

	List<Product> getSortedByName();

	void closeMyConnection();

}
