package com.demo.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
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
	public boolean addProduct() {
		
		@SuppressWarnings("resource")
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Enter id : ");
		int id = sc.nextInt();
		System.out.print("Enter name : ");
		String name = sc.next();
		System.out.print("Enter quentity : ");
		int quantity = sc.nextInt();
		System.out.print("Enter price : ");
		double price = sc.nextDouble();
		System.out.print("Enter expiry date : ( dd/MM/yyyy ) ");
		String date = sc.next();
		LocalDate expiiryDate = LocalDate.parse(date, DateTimeFormatter.ofPattern("dd/MM/yyyy"));
		System.out.print("Enter category id : ");
		int cid = sc.nextInt();
		
		return productDao.save(new Product(id, name, quantity, price, expiiryDate, cid));
		
	}

	@Override
	public boolean deletById(int id) {
		return productDao.removeById(id);
	}

	@Override
	public boolean updateById(int id, int quantity, double price) {
		return productDao.updateById(id, quantity, price);
	}

	@Override
	public List<Product> getAllProducts() {
		return productDao.getAllProduct();
	}

	@Override
	public Product getById(int id) {
		return productDao.getbyId(id);
	}

	@Override
	public List<Product> getSortedByName() {
		return productDao.getSortedByName();
	}

	@Override
	public void closeMyConnection() {
		productDao.closeConnection();
	}
	
	
	
	

}
