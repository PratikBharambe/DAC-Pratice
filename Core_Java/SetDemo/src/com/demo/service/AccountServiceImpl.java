package com.demo.service;

import java.util.Scanner;

import com.demo.dao.AccountDao;
import com.demo.dao.AccountDaoImpl;

public class AccountServiceImpl implements AccountService {

	private AccountDao sDao;

	public AccountServiceImpl() {
		super();
		sDao = new AccountDaoImpl();
	}

	// method to open new account
	@Override
	public boolean addNewAccount(int ch) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter name : ");
		String name = sc.next();
		System.out.println("Enter pin : ");
		int pin = sc.nextInt();
		sc.nextLine();
		System.out.println("Enter security question : ");
		String question = sc.nextLine();
		System.out.println("Enter answer for security question : ");
		String answer = sc.nextLine();
		System.out.println("Enter amount to be deposited : ");
		float amount = sc.nextFloat();
		if (ch == 1) {
			System.out.println("Enter number of transaction : ");
			int min_transaction = sc.nextInt();
		}
		return false;
	}

}
