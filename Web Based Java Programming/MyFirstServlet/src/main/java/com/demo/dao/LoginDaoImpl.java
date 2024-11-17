package com.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.demo.beans.MyUser;

public class LoginDaoImpl implements LoginDao {
	
	private static Connection conn;
	private static PreparedStatement selectUserStatement;
	
	static {
		conn = DBUtil.getConnection();
		try {
			selectUserStatement = conn.prepareStatement("select username, password, role from userinfo where username = ? and password = ?");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public MyUser authenticateUser(String username, String password) {
		try {
			selectUserStatement.setString(1, username);
			selectUserStatement.setString(2, password);
			ResultSet rs = selectUserStatement.executeQuery();
			if(rs.next()) {
				return new MyUser(rs.getString(1), rs.getString(2), rs.getString(3));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

}
