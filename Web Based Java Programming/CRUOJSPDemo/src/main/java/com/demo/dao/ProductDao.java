package com.demo.dao;

import java.util.List;

import com.demo.beans.Product;

public interface ProductDao {

	List<Product> getAllProducts();

	boolean addNewPorduct(Product p);

	Product getById(int id);

	boolean updateProduct(Product p);

	boolean deleteBtId(int id);

}
