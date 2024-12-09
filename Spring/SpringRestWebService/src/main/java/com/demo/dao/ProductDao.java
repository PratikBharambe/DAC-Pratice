package com.demo.dao;

import java.util.List;

import com.demo.beans.Product;

public interface ProductDao {

	List<Product> getAllProducts();

	boolean addNewProduct(Product p);

	Product getById(int id);

	boolean updateProduct(Product p);
	
	boolean deleteById(int id);

}
