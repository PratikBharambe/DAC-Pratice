package com.demo.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.demo.beans.MyUser;

@Repository
public class LoginDaoImpl implements LoginDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	@SuppressWarnings("deprecation")
	@Override
	public MyUser validateUser(String username, String password) {
		try {
		return jdbcTemplate.queryForObject("select * from userinfo where username = ? and password = ?", new Object[] {username, password}, BeanPropertyRowMapper.newInstance(MyUser.class));
		} catch (EmptyResultDataAccessException e) {			
			return null;
		}
	}

}
