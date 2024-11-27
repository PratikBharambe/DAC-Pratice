package com.demo.service;

import com.demo.beans.MyUser;
import com.demo.dao.LoginDao;
import com.demo.dao.LoginDaoImpl;

public class LoginServiceImpl implements LoginService {
	
	private LoginDao loginDao;
	
	public LoginServiceImpl() {
		loginDao = new LoginDaoImpl();
	}

	@Override
	public MyUser validateUser(String username, String password) {
		return loginDao.authenticateUser(username, password);
	}
	

}
