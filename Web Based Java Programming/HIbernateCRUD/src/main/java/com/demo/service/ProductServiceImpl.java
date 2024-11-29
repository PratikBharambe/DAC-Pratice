package com.demo.service;

import java.util.List;
import java.util.Scanner;

import com.demo.beans.Product;
import com.demo.dao.ProductDao;
import com.demo.dao.ProductDaoImpl;

public class ProductServiceImpl implements ProductService {
	
	private ProductDao productDao;
	
	public ProductServiceImpl() {
		productDao = new ProductDaoImpl();
	}

	@Override
	public boolean addNewEmployee() {
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter product name : ");
		String name =sc.next();
		System.out.print("Enter Product Quantity : ");
		int quantity = sc.nextInt();
		System.out.print("Enter Product Price : ");
		double price = sc.nextDouble();
		Product p = new Product(name, quantity, price);
		return productDao.addNewEmployee(p);
	}

	@Override
	public void closeConnection() {
		productDao.closeConnection();
	}

	@Override
	public List<Product> getAllProducts() {
		return productDao.getAllProduct();
	}

	@Override
	public boolean updateProduct() {
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter product id : ");
		int id = sc.nextInt();
		System.out.print("Enter new quantity : ");
		int newQty = sc.nextInt();
		System.out.print("Enter new price : ");
		double newPrice = sc.nextDouble();
		
		return productDao.modifyProduct(id, newQty, newPrice);
	}

	@Override
	public Product getProductById() {
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter Product Id : ");
		int id = sc.nextInt();
		return productDao.getById(id);
	}

	@Override
	public boolean deleteById() {
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter Product Id : ");
		int id = sc.nextInt();
		return productDao.deleteById(id);
	}

	@Override
	public List<Product> getAllProductsSortedByName() {
		return productDao.getAllProductsSortedByName();
	}

}
