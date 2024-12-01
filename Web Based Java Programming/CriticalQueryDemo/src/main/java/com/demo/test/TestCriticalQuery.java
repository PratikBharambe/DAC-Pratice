package com.demo.test;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;

import com.demo.beans.Product;

public class TestCriticalQuery {

	public static void main(String[] args) {

		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();

		@SuppressWarnings("deprecation")
		Criteria cr = session.createCriteria(Product.class);
		@SuppressWarnings("unchecked")
		List<Product> plist = cr.list();
		plist.forEach(System.out::println);

		Criterion cr1 = Restrictions.gt("price", 2000.0);
		Criterion cr2 = Restrictions.gt("qty", 35);
		@SuppressWarnings("deprecation")
		Criteria cr3 = session.createCriteria(Product.class);
		LogicalExpression expr = Restrictions.or(cr1, cr2);
		cr3.add(expr);
		@SuppressWarnings("unchecked")
		List<Product> plist1 = cr3.list();
		plist1.forEach(System.out::println);

		@SuppressWarnings("deprecation")
		Criteria cr11 = session.createCriteria(Product.class);
		Criterion cr12 = Restrictions.gt("price", 1000.0);
		Criterion cr13 = Restrictions.lt("price", 3000.0);
		Criterion cr14 = Restrictions.lt("qty", 40);
		LogicalExpression expression = Restrictions.and(cr12, cr13);
		LogicalExpression expression1 = Restrictions.or(expression, cr14);
		cr11.add(expression1);
		@SuppressWarnings("unchecked")
		List<Product> plist11 = cr11.list();
		plist11.forEach(System.out::println);

		tr.commit();
		session.close();
		sf.close();

	}

}
