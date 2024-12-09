package com.demo.service;

import java.util.List;

import com.demo.beans.Category;

public interface CategoryService {

	boolean addNewCategory(Category c);

	List<Category> getAllCategory();

	Category getByCid(int id);

	boolean updateCategory(Category c);

	boolean deleteCategory(int id);

}
