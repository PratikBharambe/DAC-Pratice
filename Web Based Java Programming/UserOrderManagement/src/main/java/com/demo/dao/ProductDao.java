package com.demo.dao;

import java.util.List;

import com.demo.beans.Catagory;
import com.demo.beans.Product;

public interface ProductDao {

	List<Catagory> getAllCatagory();

	List<Product> getProductByCid(int cid);

	Product getById(int id);

}
