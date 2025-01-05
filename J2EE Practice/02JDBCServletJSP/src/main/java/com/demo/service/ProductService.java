package com.demo.service;

import java.util.List;

import com.demo.beans.Catagory;
import com.demo.beans.Product;

public interface ProductService {

	List<Catagory> getAllCatagories();

	List<Product> getProductByCatagory(int cid);

	Product getProductById(int int1);

}
