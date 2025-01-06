package com.demo.dao;

import java.util.List;

import com.demo.beans.Product;

public interface ProductDao {

	boolean saveProduct(Product product);

	List<Product> getAllProduct();

	boolean updateProduct(Product product);

	boolean deleteProduct(int id);

}
