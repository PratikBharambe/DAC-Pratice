package com.demo.SpringBootRestWebService.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.SpringBootRestWebService.beans.Product;
import com.demo.SpringBootRestWebService.dao.ProductDao;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductDao productDao;

	@Override
	public List<Product> getAllProduct() {
		return productDao.findAll();
	}

	@Override
	public Product getProductById(int id) {
		Optional<Product> op = productDao.findById(id);
		if(op.isPresent()) {
			return op.get();
		}
		return null;
	}

}
