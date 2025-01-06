package com.demo.SpringBootRestWebService.service;

import java.util.List;

import com.demo.SpringBootRestWebService.beans.Product;

public interface ProductService {

	List<Product> getAllProduct();

	Product getProductById(int id);

}
