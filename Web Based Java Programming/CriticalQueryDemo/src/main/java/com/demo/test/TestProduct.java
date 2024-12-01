package com.demo.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.demo.beans.Product;

public class TestProduct {

	public static void main(String[] args) {

		SessionFactory sf = new Configuration().configure().buildSessionFactory();

		Product p1 = new Product(1, "Chair", 45, 1500);
		Product p2 = new Product(2, "Table", 10, 2500);
		Product p3 = new Product(3, "Shelf", 45, 3500);
		Product p4 = new Product(4, "Sofa Chair", 5, 1500);

		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();

		session.save(p1);
		session.save(p2);
		session.save(p3);
		session.save(p4);

		tr.commit();
		session.close();
		sf.close();

	}

}
