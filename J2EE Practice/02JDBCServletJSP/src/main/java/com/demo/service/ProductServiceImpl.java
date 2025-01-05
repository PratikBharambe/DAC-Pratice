package com.demo.service;

import java.util.List;

import com.demo.beans.Catagory;
import com.demo.beans.Product;
import com.demo.dao.ProductDao;
import com.demo.dao.ProductDaoImpl;

public class ProductServiceImpl implements ProductService {
	
	private ProductDao productDao;
	
	public ProductServiceImpl() {
		productDao = new ProductDaoImpl();
	}

	@Override
	public List<Catagory> getAllCatagories() {
		return productDao.getAllCatagories();
	}

	@Override
	public List<Product> getProductByCatagory(int cid) {
		return productDao.getProductByCatagory(cid);
	}

}
