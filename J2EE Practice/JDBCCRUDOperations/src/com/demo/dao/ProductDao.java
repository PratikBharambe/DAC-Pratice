package com.demo.dao;

import java.util.List;

import com.demo.beans.Product;

public interface ProductDao {

	List<Product> GetAllProducts();

	void closeConnection();

	boolean addNewProduct(Product p);

	boolean updateProduct(int id, int qty, double price);

	boolean deleteProduct(int id);

}
