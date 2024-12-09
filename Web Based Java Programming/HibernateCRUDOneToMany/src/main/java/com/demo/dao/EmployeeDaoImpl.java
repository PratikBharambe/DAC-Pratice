package com.demo.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.demo.beans.Department;
import com.demo.beans.Employee;

public class EmployeeDaoImpl implements EmployeeDao {

	private static SessionFactory sf;

	static {
		sf = HibernateUtil.getMyConnection();
	}

	@Override
	public void addNewEmployee(Employee e) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		Department d = session.get(Department.class, e.getD().getDeptid());
		session.save(e);
		e.setD(d);
		session.saveOrUpdate(e);
		tr.commit();
		session.close();
	}

	@Override
	public void close() {
		HibernateUtil.closeMyConnection();
	}

	@Override
	public boolean deleteById(int id) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		boolean status = false;
		Employee e = session.get(Employee.class, id);
		if(e != null) {
			session.delete(e);
			status = true;
		}
		tr.commit();
		session.close();
		return status;
	}

	@Override
	public boolean updateEmployee(int id, String name, double salary) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		boolean status = false;
		Employee e = session.get(Employee.class, id);
		if(e != null) {
			e.setEname(name);
			e.setSal(salary);
			session.saveOrUpdate(e);
			status = true;
		}
		tr.commit();
		session.close();
		return status;
	}

	@Override
	public Employee getById(int id) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		Employee e = session.get(Employee.class, id);
		tr.commit();
		session.close();
		return e;
	}

	@Override
	public List<Employee> getAllEmployees() {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		Query query = session.createQuery("from Employee");
		@SuppressWarnings("unchecked")
		List<Employee> elist = query.getResultList();
		tr.commit();
		session.close();
		return elist;
	}

	@Override
	public List<Employee> getAllEmployesSortedByName() {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		Query query = session.createQuery("from Employee e order by e.ename desc");
		@SuppressWarnings("unchecked")
		List<Employee> elist = query.getResultList();
		tr.commit();
		session.close();
		return elist;
	}

}
