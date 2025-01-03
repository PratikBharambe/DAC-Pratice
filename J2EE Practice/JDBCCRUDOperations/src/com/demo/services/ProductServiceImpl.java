package com.demo.services;

import java.util.List;

import com.demo.beans.Product;
import com.demo.dao.ProductDao;
import com.demo.dao.ProductDaoImpl;

public class ProductServiceImpl implements ProductService {
	
	ProductDao productDao;
	
	public ProductServiceImpl() {
		productDao = new ProductDaoImpl();
	}

	@Override
	public List<Product> getAllProducts() {
		return productDao.GetAllProducts();
	}

	@Override
	public void closeConnection() {
		productDao.closeConnection();
	}

}
