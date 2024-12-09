package com.demo.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.beans.Product;
import com.demo.dao.ProductDao;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDao pdao;

	@Override
	public boolean addNewProduct() {
		Scanner sc = new Scanner(System.in);

		System.out.print("Enter product id : ");
		int id = sc.nextInt();
		sc.nextLine();
		System.out.print("Enter product name : ");
		String name = sc.nextLine();
		System.out.print("Enter quantity : ");
		int qty = sc.nextInt();
		System.out.print("Enter price : ");
		double price = sc.nextDouble();
		System.out.print("Enter expiry date(dd/MM/yyyy) : ");
		String dt = sc.next();
		LocalDate expiryDate = LocalDate.parse(dt, DateTimeFormatter.ofPattern("dd/MM/yyyy"));
		System.out.print("Enter catagory id : ");
		int cid = sc.nextInt();
		
		Product p = new Product(id, name, qty, price, expiryDate, cid);
		return pdao.addNewProduct(p);
	}

	@Override
	public boolean deleteProduct() {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Enter product id : ");
		int id = sc.nextInt();
		
		return pdao.deleteProductById(id);
	}

	@Override
	public boolean updateProduct() {
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter product id : ");
		int id = sc.nextInt();
		System.out.print("Enter new quantity : ");
		int qty = sc.nextInt();
		System.out.print("Enter new price : ");
		double price = sc.nextDouble();
		return pdao.modifyProduct(id, qty, price);
	}

	@Override
	public List<Product> getAllProducts() {
		return pdao.getAllProducts();
	}

	@Override
	public Product getProductById() {
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter product id : ");
		int id = sc.nextInt();
		return pdao.getProductById(id);
	}

	@Override
	public List<Product> getProductsByPrice() {
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter price : ");
		double price = sc.nextDouble();
		return pdao.getProductsByPrice(price);
	}

}
