package com.demo.service;

import com.demo.beans.MyUser;
import com.demo.dao.AccountDao;
import com.demo.dao.AccountDaoImpl;

public class AccountServiceImpl implements AccountService{

	private AccountDao accountDao;
	
	public AccountServiceImpl() {
		accountDao = new AccountDaoImpl();
	}

	@Override
	public double getBalanceByid(int id) {
		return accountDao.getBalanceByid(id);
	}

	@Override
	public boolean debitAmount(MyUser user, Double amount) {
		
		double avaliableBalance = accountDao.getBalanceByid(user.getId());
		
		if(avaliableBalance > amount) {
			return accountDao.debitAmount(user, amount);
		} else {
			return false;
		}
		
	}

	@Override
	public boolean creditAmount(MyUser user, Double amount) {
double avaliableBalance = accountDao.getBalanceByid(user.getId());
		
		if(avaliableBalance > amount) {
			return accountDao.creditAmount(user, amount);
		} else {
			return false;
		}
	}
	
}
