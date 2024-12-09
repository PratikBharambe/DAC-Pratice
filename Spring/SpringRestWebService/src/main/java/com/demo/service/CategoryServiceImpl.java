package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.beans.Category;
import com.demo.dao.CategoryDao;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryDao categoryDao;

	@Override
	public List<Category> getAllCategory() {
		return categoryDao.findAllCategory();
	}

	@Override
	public Category getByCid(int cid) {
		return categoryDao.findByCid(cid);
	}

	@Override
	public boolean addNewCategory(Category c) {
		return categoryDao.addNewCategory(c);
	}

	@Override
	public boolean updateCategory(Category c) {
		return categoryDao.modifyCategory(c);
	}

	@Override
	public boolean deleteCategory(int cid) {
		return categoryDao.removeByCid(cid);
	}

}
