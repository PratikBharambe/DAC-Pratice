package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.beans.Product;
import com.demo.dao.ProductDao;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDao productDao;

	@Override
	public List<Product> getAllProducts() {
		return productDao.getAllProducts();
	}

	@Override
	public boolean addNewProduct(Product p) {
		return productDao.addNewProduct(p);
	}

	@Override
	public Product getById(int id) {
		return productDao.getById(id);
	}

	@Override
	public boolean updateProduct(Product p) {
		return productDao.updateProduct(p);
	}

	@Override
	public boolean deleteById(int id) {
		return productDao.deleteById(id);
	}
	
}
