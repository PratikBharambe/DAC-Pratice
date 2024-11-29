package com.demo.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.demo.beans.Course;
import com.demo.beans.Faculty;


public class TestOneToOne {

	public static void main(String[] args) {
		
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		// To add course and faculty into database
		/*
		Course c = new Course("Java", 3);
		Faculty f = new Faculty("Durga", "Haydrabad", c);
		session.save(c);
		session.save(f);
		*/
		
		// To fetch data from database
		Faculty f1 = session.get(Faculty.class, 1);
		System.out.println(f1);
		Course c1 = session.get(Course.class, 1);
		System.out.println(c1);
		
		tr.commit();
		session.close();
		sf.close();
		
	}
	
}
