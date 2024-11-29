package com.demo.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.demo.beans.Department;
import com.demo.beans.Employee;

public class TestRetriveData {

	public static void main(String[] args) {
		
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		Department d = session.get(Department.class, 2);
		System.out.println(d.getDname());
		System.out.println("after dname");
		System.out.println(d.getElist());
		
		Employee e = session.get(Employee.class, 3);
		System.out.println(e);
		System.out.println(e.getD());
		
		tr.commit();
		session.close();
		sf.close();
		
	}
	
}
