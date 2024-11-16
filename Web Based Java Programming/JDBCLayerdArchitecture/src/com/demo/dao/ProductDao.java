package com.demo.dao;

import java.util.List;

import com.demo.beans.Product;

public interface ProductDao {

	boolean save(Product product);

	boolean removeById(int id);

	boolean updateById(int id, int quantity, double price);

	List<Product> getAllProduct();

	Product getbyId(int id);

	List<Product> getSortedByName();

	void closeConnection();

	List<Product> getSortedByPrice(int choice);

	Product getByName(String name);

}
