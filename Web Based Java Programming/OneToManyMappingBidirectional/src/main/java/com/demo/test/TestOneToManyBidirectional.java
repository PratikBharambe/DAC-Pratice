package com.demo.test;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.demo.beans.Department;
import com.demo.beans.Employee;

public class TestOneToManyBidirectional {

	public static void main(String[] args) {
		
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		Department d1 = new Department();
		d1.setDeptid(1);
		d1.setDname("SALES");
		d1.setLocation("Pune");
		
		Department d2 = new Department();
		d2.setDeptid(2);
		d2.setDname("HR");
		d2.setLocation("Banglore");
		
		Employee e1 = new Employee(1, "aaaaaaa", 11111, LocalDate.of(2012, 10, 25), d1);
		Employee e2 = new Employee(2, "bbbbbbb", 22222, LocalDate.of(2016, 6, 1), d2);
		Employee e3 = new Employee(3, "ccccccc", 33333, LocalDate.of(2013, 8, 30), d1);
		Employee e4 = new Employee(4, "ddddddd", 44444, LocalDate.of(2015, 12, 5), d2);
		
		Set<Employee> elist1 = new HashSet<>();
		elist1.add(e1);
		elist1.add(e2);
		d1.setElist(elist1);
		
		Set<Employee> elist2 = new HashSet<>();
		elist2.add(e3);
		elist2.add(e4);
		d2.setElist(elist2);
		
		session.save(d1);
		session.save(d2);
		
		session.save(e1);
		session.save(e2);
		session.save(e3);
		session.save(e4);
		
		tr.commit();
		session.close();
		sf.close();
		
	}
	
}
