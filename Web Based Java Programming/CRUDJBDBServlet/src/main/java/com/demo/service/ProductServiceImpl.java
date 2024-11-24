package com.demo.service;

import java.util.List;

import com.demo.beans.Product;
import com.demo.dao.ProductDao;
import com.demo.dao.ProductDaoImpl;

public class ProductServiceImpl implements ProductService {
	
	private ProductDao productDao;
	
	public ProductServiceImpl() {
		productDao = new ProductDaoImpl();
	}

	@Override
	public List<Product> getAllProducts() {
		return productDao.getAllProducts();
	}

	@Override
	public boolean addNewProduct(Product p) {
		return productDao.addNewPorduct(p);
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
	public boolean deletById(int id) {
		return productDao.deleteBtId(id);
	}

}
