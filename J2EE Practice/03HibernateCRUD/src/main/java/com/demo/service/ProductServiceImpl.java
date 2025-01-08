package com.demo.service;

import java.util.List;
import java.util.Scanner;

import com.demo.beans.Product;
import com.demo.dao.ProductDao;
import com.demo.dao.ProductDaoImpl;

public class ProductServiceImpl implements ProductService {

    private final ProductDao productDao;
    
    public ProductServiceImpl() {
		productDao = new ProductDaoImpl();
	}
    
    private static final Scanner sc = new Scanner(System.in);

	@Override
	public boolean addNewProduct() {
		System.out.print("Enter product name : ");
		String name = sc.nextLine();
		System.out.print("Enter product qty : ");
		int qty = sc.nextInt();
		Product product = new Product(name, qty);
		return productDao.saveProduct(product);
	}

	@Override
	public List<Product> getAllProduct() {
		return productDao.getAllProduct();
	}

	@Override
	public boolean updateProduct() {
		System.out.print("Enter product id : ");
		int id = sc.nextInt();
		System.out.print("Enter new product name : ");
		String name = sc.nextLine();
		System.out.print("Enter new product qty : ");
		int qty = sc.nextInt();
		Product product = new Product(id, name, qty);
		return productDao.updateProduct(product);
	}

	@Override
	public boolean deleteProduct() {
		System.out.print("Enter product id : ");
		int id = sc.nextInt();
		return productDao.deleteProduct(id);
	}

}
