package com.demo.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.demo.beans.Customer;
import com.demo.beans.Employee;
import com.demo.beans.Person;

public class TestTablePerClass {

	public static void main(String[] args) {
		
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		
		Employee e = new Employee(1, "Rutvit", "1234567890", "Accounts", "Accountant");
		Customer c = new Customer(2, "Rajesh", "0987654321", "Ajmer", "Vikrant");
		Person p = new Person(3, "Tejas", "1237539510");
		
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		session.save(e);
		session.save(c);
		session.save(p);
		
		tr.commit();
		session.close();
		sf.close();
		
	}
	
}
