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
	public List<Catagory> getAllCatagory() {
		return productDao.getAllCatagory();
	}

	@Override
	public List<Product> getProductByCid(int cid) {
		return productDao.getProductByCid(cid);
	}

	@Override
	public Product getById(int id) {
		return productDao.getById(id);
	}

}
