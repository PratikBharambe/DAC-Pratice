package com.demo.dao;

import java.util.List;

import com.demo.beans.Product;

public interface ProductDao {

	boolean addNewEmployee(Product p);

	void closeConnection();

	List<Product> getAllProduct();

	boolean modifyProduct(int id, int newQty, double newPrice);

	Product getById(int id);

	boolean deleteById(int id);

	List<Product> getAllProductsSortedByName();

}
