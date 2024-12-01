package com.demo.service;

import java.util.List;

import com.demo.beans.Book;
import com.demo.beans.Catagory;
import com.demo.dao.BookDao;
import com.demo.dao.BookDaoImpl;

public class BookServiceImpl implements BookService {
	
	private BookDao bd;
	
	public BookServiceImpl() {
		bd = new BookDaoImpl();
	}

	@Override
	public List<Catagory> getAllBookCatagories() {
		return bd.getAllBookCatagories();
	}

	@Override
	public List<Book> getBooksById(int id) {
		return bd.getBooksById(id);
	}

	@Override
	public Book getBookById(int id) {
		return bd.getBooById(id);
	}
	
	

}
