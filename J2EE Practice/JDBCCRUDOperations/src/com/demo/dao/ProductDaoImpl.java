package com.demo.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.beans.Product;

public class ProductDaoImpl implements ProductDao {
	
	private static Connection connection;
	
	private static PreparedStatement selectStatement;
	private static PreparedStatement insertStatement;
	private static PreparedStatement updateStatement;
	private static PreparedStatement deleteStatement;
	
	static {
		connection = DBUtil.getConnection();
		try {
			selectStatement = connection.prepareStatement("select * from product");
			insertStatement = connection.prepareStatement("insert into product values(?, ?, ?, ?, ?, ?)");
			updateStatement = connection.prepareStatement("update product set qty = ?, price = ? where id = ?");
			updateStatement = connection.prepareStatement("delete from product where id = ?");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Product> GetAllProducts() {
		List<Product> productList = new ArrayList<Product>();
		try {
			ResultSet rs = selectStatement.executeQuery();
			while (rs.next()) {
				Product p = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getDate(5).toLocalDate(), rs.getInt(6));
				productList.add(p);
			}
			if(productList.size() > 0)
				return productList;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void closeConnection() {
		DBUtil.clpseConnection();
	}

	@Override
	public boolean addNewProduct(Product p) {
		try {
			insertStatement.setInt(1, p.getId());
			insertStatement.setString(2, p.getName());
			insertStatement.setInt(3, p.getQty());
			insertStatement.setDouble(4, p.getPrice());
			insertStatement.setDate(5,  Date.valueOf(p.getExpDate()));
			insertStatement.setInt(6, p.getCid());
			int result = insertStatement.executeUpdate();
			if(result > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean updateProduct(int id, int qty, double price) {
	    try {
	        updateStatement.setInt(1, qty);
	        updateStatement.setDouble(2, price);
	        updateStatement.setInt(3, id);
	        int result = updateStatement.executeUpdate();
	        if (result > 0) {
	            return true;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return false;
	}


	@Override
	public boolean deleteProduct(int id) {
		try {
			deleteStatement.setInt(1, id);
			int result = deleteStatement.executeUpdate();
			if(result > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}


}
