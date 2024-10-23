package com.demo.dao;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import com.demo.beans.GraduateStudent;
import com.demo.beans.MasterStudent;
import com.demo.beans.Person;
import com.demo.beans.Student;
import com.demo.comparators.MarksComparator;
import com.demo.comparators.NameComparator;

public class StudentDaoImpl implements StudentDao {
	private static List<Student> sLst;

	static {
		sLst = new ArrayList<>();
		sLst.add(new GraduateStudent(14, "Manjiri", "Pune", LocalDate.of(2000, 01, 03), new int[] { 88, 87 }, 89));
		sLst.add(new GraduateStudent(16, "Mugdha", "Pune", LocalDate.of(1999, 02, 13), new int[] { 78, 75 }, 77));
		sLst.add(new MasterStudent(4, "Sahil", "Mumbai", LocalDate.of(2002, 01, 03), new int[] { 88, 87 }, "accounts",
				"BCOM", 89));
	}

	@Override
	public void addNewStudent(Student s) {
		sLst.add(s);
	}

	@Override
	public List<Student> getAllStudents() {
		return sLst;
	}

	@Override
	public Student getById(int id) {
		int pos = sLst.indexOf(new Person(id));
		if (pos != -1) {
			// retrieves the student object from the given position
			return sLst.get(pos);
		}
		return null;
	}

	@Override
	public boolean deleteById(int id) {
		return sLst.remove(new Person(id));
	}

	@Override
	public boolean updateMarks(int id, int mks) {
		Student s = getById(id);
		if (s instanceof GraduateStudent) {
			((GraduateStudent) s).setSpsub(mks);
			return true;
		} else if (s instanceof MasterStudent) {
			((MasterStudent) s).setThesismarks(mks);
			return true;
		}
		return false;
	}

	@Override
	public List<Student> getByMarks(int mks) {
		List<Student> lst = new ArrayList<>();
		for (Student s : sLst) {
			if (s instanceof MasterStudent) {
				if (((MasterStudent) s).getThesismarks() > mks)
					lst.add(s);
			} else if (s instanceof GraduateStudent) {
				if (((GraduateStudent) s).getSpsub() > mks)
					lst.add(s);
			}

		}
		if (lst.size() > 0)
			return lst;
		else
			return null;
	}

	@Override
	public List<Student> sortById(int ch) {
		List<Student> sl = new ArrayList<>(sLst.size());
		for (Student student : sLst) {
			sl.add(student);
		}

//		sl.sort(null);

		if (ch == 1) {
			Collections.sort(sl);
		} else if (ch == 2) {
			Collections.sort(sl, Collections.reverseOrder());
		}
		return sl;
	}

	@Override
	public List<Student> sortByName(int ch) {
		List<Student> sl = new ArrayList<>(sLst.size());
		for (Student student : sLst) {
			sl.add(student);
		}
		
		// java 1.7 style
//		sl.sort(new NameComparator());
		
		// java 1.8 onwards style
		Comparator<Student> s = (s1, s2)-> s1.getPname().compareTo(s2.getPname());
		sl.sort(s);
		
		if (ch == 1) {
			return sl;
		} else if (ch == 2) {
			List<Student> reversedList = new ArrayList<>(sl);
			Collections.reverse(reversedList);
			return reversedList;
		}
		return sl;
	}

	@Override
	public List<Student> sortByMarks(int ch) {
		List<Student> sl = new ArrayList<>(sLst.size());
		for (Student student : sLst) {
			sl.add(student);
		}
//		sl.sort(new MarksComparator());
		Comparator<Student> sm = (o1, o2)->{
			int m1 = 0;
			int m2 = 0;
			
			if (o1 instanceof GraduateStudent) {
				m1 = ((GraduateStudent)o1).getSpsub();
			} else if (o1 instanceof MasterStudent) {
				m1 = ((MasterStudent)o1).getThesismarks();
			}
			
			if (o2 instanceof GraduateStudent) {
				m2 = ((GraduateStudent)o2).getSpsub();
			} else if (o2 instanceof MasterStudent) {
				m2 = ((MasterStudent)o2).getThesismarks();
			}
			
			return m1-m2;
		};
		sl.sort(sm);
		
		if (ch == 1) {
			return sl;
		} else if (ch == 2) {
			List<Student> reversedList = new ArrayList<>(sl);
			Collections.reverse(reversedList);
			return reversedList;
		}
		return sl;
	}

	@Override
	public List<Student> getByName(String name) {
		// java 1.7
		/*
		 * List<Student> lst =new ArrayList<>(); for(Student s:sLst) {
		 * if(s.getPname().equals(name)) { lst.add(s); } }
		 */
		// java 1.8
		List<Student> lst = sLst.stream().filter(ob -> ob.getPname().equals(name)).collect(Collectors.toList());
		if (lst.size() > 0) {
			return lst;
		}
		return null;
	}

}
