package com.demo.service;

import java.util.List;

import com.demo.beans.Catagory;
import com.demo.beans.Product;

public interface ProductService {

	List<Catagory> getAllCatagory();

	List<Product> getProductByCid(int cid);

	Product getById(int int1);

}
