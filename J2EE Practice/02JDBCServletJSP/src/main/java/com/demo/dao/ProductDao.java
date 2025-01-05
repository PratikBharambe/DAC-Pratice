package com.demo.dao;

import java.util.List;

import com.demo.beans.Catagory;
import com.demo.beans.Product;

public interface ProductDao {

	List<Catagory> getAllCatagories();

	List<Product> getProductByCatagory(int cid);

	Product getProductById(int id);

}
