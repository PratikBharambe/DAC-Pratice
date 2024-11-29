package com.demo.test;

import java.util.HashSet;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.demo.beans.Course;
import com.demo.beans.Student;

public class TestManyToManyBidirectional {

	public static void main(String[] args) {
		
		SessionFactory sf = new Configuration().configure().buildSessionFactory();

		Student s1 = new Student();
		s1.setSid(1);
		s1.setSanme("Pratik");

		Student s2 = new Student();
		s2.setSid(2);
		s2.setSanme("Aniket");

		Student s3 = new Student();
		s3.setSid(3);
		s3.setSanme("Tulja");

		Student s4 = new Student();
		s4.setSid(4);
		s4.setSanme("Kruti");

		Course c1 = new Course();
		c1.setCid(10);
		c1.setCname("JAVA");

		Course c2 = new Course();
		c2.setCid(20);
		c2.setCname("C++");

		Course c3 = new Course();
		c3.setCid(30);
		c3.setCname("Python");

		Course c4 = new Course();
		c4.setCid(40);
		c4.setCname("Javascript");

		Set<Student> sset1 = new HashSet<>();
		sset1.add(s1);
		sset1.add(s2);
		sset1.add(s4);

		Set<Student> sset2 = new HashSet<>();
		sset2.add(s1);
		sset2.add(s2);

		Set<Student> sset3 = new HashSet<>();
		sset3.add(s3);
		sset3.add(s4);

		Set<Student> sset4 = new HashSet<>();
		sset4.add(s3);
		

		Set<Course> cset1 = new HashSet<>();
		cset1.add(c1);
		cset1.add(c2);

		Set<Course> cset2 = new HashSet<>();
		cset2.add(c3);
		cset2.add(c4);

		Set<Course> cset3 = new HashSet<>();
		cset3.add(c1);
		cset3.add(c3);
		
		s1.setClist(cset1);
		s2.setClist(cset1);
		s3.setClist(cset2);
		s4.setClist(cset3);
		
		c1.setSlist(sset1);
		c2.setSlist(sset2);
		c3.setSlist(sset3);
		c4.setSlist(sset4);
		
		
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		session.save(c1);
		session.save(c2);
		session.save(c3);
		session.save(c4);

		session.save(s1);
		session.save(s2);
		session.save(s3);
		session.save(s4);
		
		tr.commit();
		session.close();
		sf.close();

		
		
	}

}
