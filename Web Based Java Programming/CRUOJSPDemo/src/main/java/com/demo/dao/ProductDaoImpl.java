package com.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.beans.Product;

public class ProductDaoImpl implements ProductDao {

	private static Connection conn;
	private static PreparedStatement getAllProductsStatement;
	private static PreparedStatement addNewProductStatement;
	private static PreparedStatement getByIdStatement;
	private static PreparedStatement updateProductStatement;
	private static PreparedStatement deleteProductStatement;

	static {
		try {
			conn = DBUtil.getConnection();
			getAllProductsStatement = conn.prepareStatement("select * from product");
			addNewProductStatement = conn.prepareStatement("insert into product(name, qty, price, expdate, cid) values(?, ?, ?, ?, ?)");
			getByIdStatement = conn.prepareStatement("select * from product where id = ?");
			updateProductStatement = conn.prepareStatement("update product set name = ?, qty = ?, price = ?, expdate = ?, cid = ? where id = ?");
			deleteProductStatement = conn.prepareStatement("delete from product where id = ?");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Product> getAllProducts() {
		List<Product> productList = new ArrayList<>();
		try {
			ResultSet rs = getAllProductsStatement.executeQuery();
			while (rs.next()) {
				productList.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4),
						rs.getDate(5).toLocalDate(), rs.getInt(6)));
			}
			if (productList.size() > 0)
				return productList;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean addNewPorduct(Product p) {
		try {
			addNewProductStatement.setString(1, p.getName());
			addNewProductStatement.setInt(2, p.getQuantity());
			addNewProductStatement.setDouble(3, p.getPrice());
			addNewProductStatement.setDate(4, java.sql.Date.valueOf(p.getExpiryDate()));
			addNewProductStatement.setInt(5, p.getCid());
			int result = addNewProductStatement.executeUpdate();
			if (result > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public Product getById(int id) {
		try {
			getByIdStatement.setInt(1, id);
			ResultSet rs = getByIdStatement.executeQuery();
			if (rs.next()) {
				return new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4),
						rs.getDate(5).toLocalDate(), rs.getInt(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean updateProduct(Product p) {
		try {
			updateProductStatement.setString(1, p.getName());
			updateProductStatement.setInt(2, p.getQuantity());
			updateProductStatement.setDouble(3, p.getPrice());
			updateProductStatement.setDate(4, java.sql.Date.valueOf(p.getExpiryDate()));
			updateProductStatement.setInt(5, p.getCid());
			updateProductStatement.setInt(6, p.getId());

			int n = updateProductStatement.executeUpdate();
			if (n > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteBtId(int id) {
		try {
			deleteProductStatement.setInt(1, id);
			int n = deleteProductStatement.executeUpdate();
			if (n > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
