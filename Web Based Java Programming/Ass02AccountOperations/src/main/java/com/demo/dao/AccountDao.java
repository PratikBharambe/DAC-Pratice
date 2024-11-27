package com.demo.dao;

import com.demo.beans.MyUser;

public interface AccountDao {

	double getBalanceByid(int id);

	boolean debitAmount(MyUser user, Double amount);

	boolean creditAmount(MyUser user, Double amount);

}
