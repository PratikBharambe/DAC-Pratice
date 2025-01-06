package com.demo.service;

import java.util.Scanner;

import com.demo.beans.Product;
import com.demo.dao.ProductDao;
import com.demo.dao.ProductDaoImpl;

public class ProductServiceImpl implements ProductService {

    private ProductDao productDao;
    
    public ProductServiceImpl() {
		productDao = new ProductDaoImpl();
	}
    
    private static Scanner sc = new Scanner(System.in);

	@Override
	public boolean addNewProduct() {
		System.out.print("Enter product name : ");
		String name = sc.nextLine();
		System.out.print("Enter product qty : ");
		int qty = sc.nextInt();
		Product product = new Product(name, qty);
		return productDao.saveProduct(product);
	}

}
