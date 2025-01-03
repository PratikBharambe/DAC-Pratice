package com.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.beans.Product;

public class ProductDaoImpl implements ProductDao {
	
	private static Connection connection;
	
	private static PreparedStatement selectStatement;
	
	static {
		connection = DBUtil.getConnection();
		try {
			selectStatement = connection.prepareStatement("select * from product");
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


}













