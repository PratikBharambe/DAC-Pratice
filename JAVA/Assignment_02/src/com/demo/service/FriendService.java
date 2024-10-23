package com.demo.service;

import com.demo.beans.Friend;

public interface FriendService {

	Friend[] getAll();

	Friend getById(int id);

	Friend[] getByName(String nm);

	Friend[] getByHobby(String hobby);
	
}
