package com.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.demo.beans.MyUser;

public class AccountDaoImpl implements AccountDao {
	
	private static Connection conn;
	private static PreparedStatement getBalanceById;
	private static PreparedStatement debitBalanceById;;
	private static PreparedStatement creditBalanceById;;
	
	static {
		conn = DBUtil.getConnection();
		try {
			getBalanceById = conn.prepareStatement("select balance from accounts where id = ?");
			debitBalanceById = conn.prepareStatement("update accounts set balance = balance - ? where id = ?");
			creditBalanceById = conn.prepareStatement("update accounts set balance = balance + ? where id = ?");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public double getBalanceByid(int id) {
		try {
			getBalanceById.setInt(1, id);
			ResultSet rs = getBalanceById.executeQuery();
			if(rs.next())
				return rs.getDouble(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public boolean debitAmount(MyUser user, Double amount) {
		try {
			debitBalanceById.setDouble(1, amount);
			debitBalanceById.setInt(2, user.getId());
			int n = debitBalanceById.executeUpdate();
			if(n > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean creditAmount(MyUser user, Double amount) {
		try {
			creditBalanceById.setDouble(1, amount);
			creditBalanceById.setInt(2, user.getId());
			int n = creditBalanceById.executeUpdate();
			if(n > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
