package com.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import com.demo.beans.Product;

import jakarta.persistence.Query;

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
		return true;
	}

	@Override
	public List<Product> getAllProduct() {
		Session sess = sf.openSession();
		Transaction tr = sess.beginTransaction();
		Query query = sess.createQuery("from Product", Product.class);
		List<Product> plist = query.getResultList();
		tr.commit();
		sess.close();
		return plist;
	}

	@Override
	public boolean updateProduct(Product product) {
		Session sess = sf.openSession();
		Transaction tr = sess.beginTransaction();
		Product p = sess.get(Product.class, product.getId());
		p.setName(product.getName());
		p.setQty(product.getQty());
		sess.merge(p);
		tr.commit();
		sess.close();
		return true;
	}

	@Override
	public boolean deleteProduct(int id) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		Product p = session.get(Product.class, id);
		session.remove(p);
		tr.commit();
		session.close();
		return true;
	}

	
	
}
