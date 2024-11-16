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

	private static PreparedStatement insertStatement;
	private static PreparedStatement deleteStatement;
	private static PreparedStatement updateStatement;
	private static PreparedStatement selectStatement;
	private static PreparedStatement getByIdStatement;
	private static PreparedStatement getByNameStatement;
	private static PreparedStatement getSortedByNameStatement;
	private static PreparedStatement getSortedByPriceStatement;

	static {
		connection = DBUtil.getConnection();
		try {
			insertStatement = connection.prepareStatement("insert into product values(?, ?, ?, ?, ?, ?)");
			deleteStatement = connection.prepareStatement("delete from product where id = ?");
			updateStatement = connection.prepareStatement("update product set qty = ?, price = ? where id = ?");
			selectStatement = connection.prepareStatement("select * from product");
			getByIdStatement = connection.prepareStatement("select * from product where id = ?");
			getByNameStatement = connection.prepareStatement("select * from product where name = ?");
			getSortedByNameStatement = connection.prepareStatement("select * from product order by name");
			getSortedByPriceStatement = connection.prepareStatement("select * from product order by price ?");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean save(Product product) {
		try {
			insertStatement.setInt(1, product.getId());
			insertStatement.setString(2, product.getName());
			insertStatement.setInt(3, product.getQuantity());
			insertStatement.setDouble(4, product.getPrice());
			insertStatement.setDate(5, Date.valueOf(product.getExpiryDate()));
			insertStatement.setInt(6, product.getCid());
			int result = insertStatement.executeUpdate();
			if (result > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean removeById(int id) {
		try {
			deleteStatement.setInt(1, id);
			int result = deleteStatement.executeUpdate();
			if (result > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean updateById(int id, int quantity, double price) {
		try {
			updateStatement.setInt(1, quantity);
			updateStatement.setDouble(2, price);
			updateStatement.setInt(3, id);
			int result = updateStatement.executeUpdate();
			if (result > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<Product> getAllProduct() {
		List<Product> productList = new ArrayList<Product>();
		try {
			ResultSet rs = selectStatement.executeQuery();
			while (rs.next()) {
				Product product = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4),
						rs.getDate(5).toLocalDate(), rs.getInt(6));
				productList.add(product);
			}
			if(productList.size() > 0)
				return productList;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Product getbyId(int id) {
		try {
			getByIdStatement.setInt(1, id);
			ResultSet rs = getByIdStatement.executeQuery();
			if(rs.next()) {
				return new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getDate(5).toLocalDate(), rs.getInt(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Product> getSortedByName() {
		List<Product> productList = new ArrayList<Product>();
		try {
			ResultSet rs = getSortedByNameStatement.executeQuery();
			while(rs.next()) {
				Product p = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getDate(5).toLocalDate(), rs.getInt(6));
				productList.add(p);
			}
			if(productList.size()>0) {
				return productList;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void closeConnection() {
		DBUtil.closeMyConnection();
	}

	@Override
	public List<Product> getSortedByPrice(int choice) {
		List<Product> productList = new ArrayList<Product>();
		try {
			if(choice == 1)
				getSortedByPriceStatement.setString(1, "asc");
			else if(choice == 2)
				getSortedByPriceStatement.setString(1, "desc");
			else 
				System.out.println("Invalid choice.");
			ResultSet rs = getSortedByPriceStatement.executeQuery();
			while(rs.next()) {
				Product p = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getDate(5).toLocalDate(), rs.getInt(6));
				productList.add(p);
			}
			if(productList.size()>0) {
				return productList;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Product getByName(String name) {
		try {
			getByIdStatement.setString(1, name);
			ResultSet rs = getByIdStatement.executeQuery();
			if(rs.next()) {
				return new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getDate(5).toLocalDate(), rs.getInt(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
