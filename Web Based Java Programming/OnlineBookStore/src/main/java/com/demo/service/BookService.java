package com.demo.service;

import java.util.List;

import com.demo.beans.Book;
import com.demo.beans.Catagory;

public interface BookService {

	List<Catagory> getAllBookCatagories();

	List<Book> getBooksById(int id);

}
