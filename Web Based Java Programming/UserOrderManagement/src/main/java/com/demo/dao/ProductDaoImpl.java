package com.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.beans.Catagory;
import com.demo.beans.Product;

public class ProductDaoImpl implements ProductDao {
	
	private static Connection conn;
	private static PreparedStatement getAllCatagory;
	private static PreparedStatement getProductByCid;
	private static PreparedStatement getProductById;
	
	static {
		try {
			conn = DBUtil.getConnection();
			getAllCatagory = conn.prepareStatement("select * from catagory");
			getProductByCid = conn.prepareStatement("select * from product where cid = ?");
			getProductById = conn.prepareStatement("select * from product where id = ?");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Catagory> getAllCatagory() {
		List<Catagory> clist = new ArrayList<Catagory>();
		try {
			ResultSet rs = getAllCatagory.executeQuery();
			while(rs.next())
				clist.add(new Catagory(rs.getInt(1), rs.getString(2), rs.getString(3)));
			if(clist.size() > 0)
				return clist;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Product> getProductByCid(int cid) {
		List<Product> plist = new ArrayList<Product>();
		try {
			getProductByCid.setInt(1, cid);
			ResultSet rs = getProductByCid.executeQuery();
			while(rs.next()) {
				plist.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getDate(5).toLocalDate(), rs.getInt(6)));
			}
			if(plist.size() > 0) {
				return plist;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Product getById(int id) {
		try {
			getProductById.setInt(1, id);
			ResultSet rs = getProductByCid.executeQuery();
			if(rs.next()) {
				return (new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getDate(5).toLocalDate(), rs.getInt(6)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
