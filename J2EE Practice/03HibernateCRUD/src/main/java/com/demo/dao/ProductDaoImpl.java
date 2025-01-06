package com.demo.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.demo.beans.Product;

public class ProductDaoImpl implements ProductDao {

	private static SessionFactory sf;

	static {
		sf = HibernateUtil.getConnection();
	}

	@Override
	public boolean saveProduct(Product product) {
		Session sess = sf.openSession();
		Transaction tr = sess.beginTransaction();
		sess.persist(product);
		tr.commit();
		sess.close();
		return false;
	}


	
}
