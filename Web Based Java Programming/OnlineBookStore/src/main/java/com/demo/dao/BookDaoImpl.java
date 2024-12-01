package com.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.beans.Book;
import com.demo.beans.Catagory;

public class BookDaoImpl implements BookDao {

	private static Connection conn;
	private static PreparedStatement getAllCatagory;
	private static PreparedStatement getBooksById;
	private static PreparedStatement getBookById;

	static {
		try {
			conn = DBUtil.getConnection();
			getAllCatagory = conn.prepareStatement("select * from bookcatagory");
			getBooksById = conn.prepareStatement("select * from books where cid = ?");
			getBookById = conn.prepareStatement("select * from books where id = ?");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Catagory> getAllBookCatagories() {
		List<Catagory> clist = new ArrayList<Catagory>();
		try {
			ResultSet rs = getAllCatagory.executeQuery();
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
	public List<Book> getBooksById(int id) {
		List<Book> blist = new ArrayList<Book>();
		try {
			getBooksById.setInt(1, id);
			ResultSet rs = getBooksById.executeQuery();
			while(rs.next()) {
				blist.add(new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getString(5), rs.getInt(6)));
			}
			if (blist.size() > 0)
				return blist;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Book getBooById(int id) {
		try {
			getBookById.setInt(1, id);
			ResultSet rs = getBookById.executeQuery();
			if(rs.next()) {
				return (new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getString(5), rs.getInt(6)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
