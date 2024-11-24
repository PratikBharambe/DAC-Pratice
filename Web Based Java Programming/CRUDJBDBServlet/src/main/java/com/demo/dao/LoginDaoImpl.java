package com.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.demo.beans.MyUser;
import com.demo.beans.Person;

public class LoginDaoImpl implements LoginDao {
	
	private static Connection conn;
	private static PreparedStatement selectUserStatement;
	private static PreparedStatement insertUserQueryStatement;
	private static PreparedStatement inserPersonQueryStatement;
	
	static {
		conn = DBUtil.getConnection();
		try {
			selectUserStatement = conn.prepareStatement("select username, password, role from userinfo where username = ? and password = ?");
			insertUserQueryStatement = conn.prepareStatement("insert into userinfo values(?, ?, ?)");
			inserPersonQueryStatement = conn.prepareStatement("insert into person(firstname, lastname, gender, degree, city, skills) values(?,?,?,?,?,?)");
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

	@Override
	public boolean registerUser(Person person, MyUser user) {
		
		try {
			conn.setAutoCommit(false);
			
			insertUserQueryStatement.setString(1, user.getUsername());
			insertUserQueryStatement.setString(2, user.getPassword());
			insertUserQueryStatement.setString(3, user.getRole());
			insertUserQueryStatement.executeUpdate();
			
			inserPersonQueryStatement.setString(1, person.getFirstname());
			inserPersonQueryStatement.setString(2, person.getLastname());
			inserPersonQueryStatement.setString(3, person.getGender());
			inserPersonQueryStatement.setString(4, person.getDegree());
			inserPersonQueryStatement.setString(5, person.getCity());
			inserPersonQueryStatement.setString(6, String.join(",", person.getSkills()));
			inserPersonQueryStatement.executeUpdate();
			
			conn.commit();
			return true;
			
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				conn.setAutoCommit(true);
			} catch (SQLException e) {
				e.printStackTrace();
			}			
		}
		
		return false;
		
	}

}
































