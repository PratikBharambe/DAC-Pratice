package com.demo.comparators;

import java.util.Comparator;

import com.demo.beans.GraduateStudent;
import com.demo.beans.MasterStudent;
import com.demo.beans.Person;

public class MarksComparator implements Comparator<Person> {

	@Override
	public int compare(Person o1, Person o2) {
		
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
	}

}
