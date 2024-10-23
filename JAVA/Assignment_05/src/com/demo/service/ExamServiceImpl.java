package com.demo.service;

import com.demo.dao.ExamDao;
import com.demo.dao.ExamDaoImpl;

public class ExamServiceImpl implements ExamService{
	ExamDao eDao;

	public ExamServiceImpl() {
		super();
		eDao=new ExamDaoImpl();
	}
	
}
