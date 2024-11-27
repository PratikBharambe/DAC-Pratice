package com.demo.service;

import com.demo.beans.MyUser;

public interface AccountService {

	double getBalanceByid(int id);

	boolean debitAmount(MyUser user, Double amount);

	boolean creditAmount(MyUser user, Double amount);

}
