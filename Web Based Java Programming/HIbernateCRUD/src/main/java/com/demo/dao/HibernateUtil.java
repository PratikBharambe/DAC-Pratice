package com.demo.dao;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	static SessionFactory sf;

	public static SessionFactory getConnection() {
		sf = new Configuration().configure().buildSessionFactory();
		if (sf != null)
			return sf;
		return null;
	}

	public static void closeConnection() {
		sf.close();
	}

}
