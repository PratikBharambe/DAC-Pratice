package com.demo.dao;

import java.util.List;

import com.demo.beans.Book;
import com.demo.beans.Catagory;

public interface BookDao {

	List<Catagory> getAllBookCatagories();

	List<Book> getBooksById(int id);

}
