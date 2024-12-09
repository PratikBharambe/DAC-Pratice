package com.demo.dao;

import java.util.List;

import com.demo.beans.Product;

public interface ProductDao {

	boolean addNewProduct(Product p);

	boolean deleteProductById(int id);

	boolean modifyProduct(int id, int qty, double price);

	List<Product> getAllProducts();

	Product getProductById(int id);

	List<Product> getProductsByPrice(double price);

}
