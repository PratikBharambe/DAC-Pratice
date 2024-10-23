package com.demo.comparators;

import java.util.Comparator;

import com.demo.beans.Person;

public class NameComparator implements Comparator<Person> {

	@Override
	public int compare(Person o1, Person o2) {
		return o1.getPname().compareTo(o2.getPname());
	}

}

