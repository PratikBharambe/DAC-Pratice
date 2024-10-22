package com.demo.test;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import com.demo.beans.Course;

public class TestCourse {

	public static void main(String[] args) {

		Course c = new Course("DAC", 1, 120, 6);
		Class cls = c.getClass();

		Constructor[] cons = cls.getConstructors();
		for (Constructor c1 : cons) {
			System.out.println(c1.getParameterCount());
		}

		Method[] m = cls.getMethods();
		Method nm = null;

		for (Method m1 : m) {
			if (m1.getName().equals("m1"))
				nm = m1;
			System.out.println(m1.getParameterCount());
			System.out.println(m1.getName());
		}

		try {
			nm.invoke(c, 12);
		} catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
			System.out.println(e.getMessage());
		}

		Field[] fld = cls.getDeclaredFields();
		for (Field field : fld) {
			if (field.getName().equals("cname"))
				field.setAccessible(true);
			System.out.println(field.getName());
		}

		try {
			Field f = cls.getDeclaredField("cname");
			System.out.println("--------------------------Before changing----------------------");
			System.out.println(c);
			f.setAccessible(true);
			f.set(c, "xxxxx");// c.setCname("xxx")
			System.out.println("--------------------------After changing----------------------");
			System.out.println(c);
		} catch (NoSuchFieldException | SecurityException e) {
			System.out.println(e.getMessage());
		} catch (IllegalArgumentException e) {
			System.out.println(e.getMessage());
		} catch (IllegalAccessException e) {
			System.out.println(e.getMessage());
		}
	}

}
