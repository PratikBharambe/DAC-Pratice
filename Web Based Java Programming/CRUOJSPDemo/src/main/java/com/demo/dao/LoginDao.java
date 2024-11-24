package com.demo.dao;

import com.demo.beans.MyUser;
import com.demo.beans.Person;

public interface LoginDao {

	MyUser authenticateUser(String username, String password);

	boolean registerUser(Person person, MyUser user);

}
