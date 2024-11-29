package com.demo.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.demo.beans.Product;

public class ProductDaoImpl implements ProductDao {

	private static SessionFactory sf;

	static {
		sf = HibernateUtil.getConnection();
	}

	public ProductDaoImpl() {

	}

	@Override
	public boolean addNewEmployee(Product p) {

		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.save(p);
		tr.commit();
		session.close();
		return true;
	}

	@Override
	public void closeConnection() {
		HibernateUtil.closeConnection();
	}

	@Override
	public List<Product> getAllProduct() {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();

		Query query = session.createQuery("from Product");
		@SuppressWarnings("unchecked")
		List<Product> plist = query.getResultList();

		tr.commit();
		session.close();
		return plist;
	}

	@Override
	public boolean modifyProduct(int id, int newQty, double newPrice) {

		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();

		Product p = session.get(Product.class, id);
		p.setQty(newQty);
		p.setPrice(newPrice);
		session.update(p);

		tr.commit();
		session.close();

		return true;
	}

	@Override
	public Product getById(int id) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		Product p = session.get(Product.class, id);
		tr.commit();
		session.close();
		return p;
	}

	@Override
	public boolean deleteById(int id) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		Product p = session.get(Product.class, id);
		session.delete(p);
		tr.commit();
		session.close();
		return true;
	}

	@Override
	public List<Product> getAllProductsSortedByName() {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		Query query = session.createQuery("from Product p order by p.name");
		List<Product> plist = query.getResultList();
		
		tr.commit();
		session.close();
		return plist;
	}

}
