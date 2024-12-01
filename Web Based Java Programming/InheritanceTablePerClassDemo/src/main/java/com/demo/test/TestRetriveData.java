package com.demo.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.demo.beans.Customer;
import com.demo.beans.Employee;
import com.demo.beans.Person;

public class TestRetriveData {
	
	public static void main(String[] args) {
		
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		Employee e = session.get(Employee.class, 1);
		System.out.println(e);
		Customer c = session.get(Customer.class, 2);
		System.out.println(c);
		Person p = session.get(Person.class, 3);
		System.out.println(p);
		
		tr.commit();
		session.close();
		sf.close();
		
	}

}
