package com.demo.service;

import com.demo.beans.User;

public interface LoginService {

	User authenticateUser(String username, String password);

}
