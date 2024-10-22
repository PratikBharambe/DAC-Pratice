package com.demo.service;

public class LoginServiceImpl implements LoginService {

	@Override
	public String autheticate(String user, String pass) {
		if(user.equals("user1") && pass.equals("user1"))
			return "user";
		else if(user.equals("admin1") && pass.equals("admin1"))
			return "admin";
		return null;
	}

}
