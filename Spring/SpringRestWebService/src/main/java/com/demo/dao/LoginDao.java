package com.demo.dao;

import com.demo.beans.MyUser;

public interface LoginDao {

	MyUser validateUser(String username, String password);

}
