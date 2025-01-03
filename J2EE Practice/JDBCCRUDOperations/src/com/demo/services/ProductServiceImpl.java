package com.demo.services;

import com.demo.dao.ProductDao;
import com.demo.dao.ProductDaoImpl;

public class ProductServiceImpl implements ProductService {
	
	ProductDao productDao;
	
	public ProductServiceImpl() {
		productDao = new ProductDaoImpl();
	}

}
