package com.demo.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.demo.beans.Department;
import com.demo.beans.Employee;

public class DepartmentDaoImpl implements DepartmentDao {
	
	private static SessionFactory sf;

	static {
		sf = HibernateUtil.getMyConnection();
	}

	@Override
	public void addNewDepartment(Department d) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.save(d);
		tr.commit();
		session.close();
	}

	@Override
	public boolean deleteDepartment(int id) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		boolean status = false;
		Department d = session.get(Department.class, id);
		if(d != null) {
			session.delete(d);
			status = true;
		}
		tr.commit();
		session.close();
		return status;
	}

	@Override
	public boolean UpdateDepartment(int id, String location) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		boolean status = false;
		Department d = session.get(Department.class, id);
		if(d != null) {
			d.setLocation(location);
			session.saveOrUpdate(d);
			status = true;
		}
		tr.commit();
		session.close();
		return status;
	}

	@Override
	public Department getDeptById(int id) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		Department d = session.get(Department.class, id);
		tr.commit();
		session.close();
		return d;
	}

	@Override
	public List<Department> getAllDepartment() {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		Query q = session.createQuery("from Department");
		@SuppressWarnings("unchecked")
		List<Department> dlist = q.getResultList();
		tr.commit();
		session.close();
		return dlist;
	}

}
