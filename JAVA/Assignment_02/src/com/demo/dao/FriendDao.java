package com.demo.dao;

import com.demo.beans.Friend;

public interface FriendDao {

	Friend[] getAllFriends();

	Friend getById(int id);

	Friend[] getByName(String nm);

	Friend[] getByHobby(String hobby);

}
