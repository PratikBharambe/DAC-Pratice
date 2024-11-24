package com.demo.service;

import com.demo.beans.MyUser;
import com.demo.beans.Person;

public interface LoginService {

	MyUser validateUser(String username, String password);

	boolean registerdetails(Person person, MyUser user);

}
