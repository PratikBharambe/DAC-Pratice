package com.demo.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.demo.beans.Course;
import com.demo.beans.Faculty;

public class TestOneToOneBidirectional {

	public static void main(String[] args) {
		
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		/*
		Course c = new Course();
		c.setCname("MSDotNet");
		c.setDuration(2);
		Faculty f = new Faculty("Name", "Address", c);
		c.setF1(f);
		session.save(c);
		session.save(f);
		*/
		
		Course c = session.get(Course.class, 1);
		System.out.println(c);
		
		tr.commit();
		session.close();
		sf.close();

	}

}
