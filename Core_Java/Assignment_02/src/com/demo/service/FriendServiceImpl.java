package com.demo.service;

import com.demo.beans.Friend;
import com.demo.dao.FriendDao;
import com.demo.dao.FriendDaoImpl;

public class FriendServiceImpl implements FriendService {

	FriendDao fdao;

	public FriendServiceImpl() {
		super();
		fdao = new FriendDaoImpl();
	}

	@Override
	public Friend[] getAll() {
		return fdao.getAllFriends();
	}

	@Override
	public Friend getById(int id) {
		return fdao.getById(id);
	}

	@Override
	public Friend[] getByName(String nm) {
		return fdao.getByName(nm);
	}

	@Override
	public Friend[] getByHobby(String hobby) {
		return fdao.getByHobby(hobby);
	}

}
