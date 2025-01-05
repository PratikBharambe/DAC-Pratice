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
	private static PreparedStatement getAllCatagories;
	private static PreparedStatement getProductByCatagory;

	static {
		conn = DbUtil.getConnection();
		try {
			getAllCatagories = conn.prepareStatement("select * from catagory");
			getProductByCatagory = conn.prepareStatement("select * from product where cid = ?");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Catagory> getAllCatagories() {
		List<Catagory> clist = new ArrayList<>();
		try {
			ResultSet rs = getAllCatagories.executeQuery();
			while (rs.next()) {
				clist.add(new Catagory(rs.getInt(1), rs.getString(2), rs.getString(3)));
			}
			if (clist.size() > 0)
				return clist;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Product> getProductByCatagory(int cid) {
		List<Product> plist = new ArrayList<>();
		try {
			getProductByCatagory.setInt(1, cid);
			ResultSet rs = getProductByCatagory.executeQuery();
			while (rs.next()) {
				plist.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4),
						rs.getDate(5).toLocalDate(), rs.getInt(6)));
			}
			if (plist.size() > 0)
				return plist;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
