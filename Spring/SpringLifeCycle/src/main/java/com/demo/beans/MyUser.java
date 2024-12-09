package com.demo.beans;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.beans.factory.BeanNameAware;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class MyUser
		implements ApplicationContextAware, BeanNameAware, BeanFactoryAware, InitializingBean, DisposableBean {

	private int id;
	private String name;

	public MyUser() {
		super();
	}

	public MyUser(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "MyUser [id=" + id + ", name=" + name + "]";
	}
	
	public void myinit() {
		System.out.println("My Init method.");
	}
	
	public void myDestroy() {
		System.out.println("My Destroy method.");
	}

	@Override
	public void destroy() throws Exception {
		System.out.println("Destroy method");
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		System.out.println("After property set");
	}

	@Override
	public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
		System.out.println("SetBeanFactory");
	}

	@Override
	public void setBeanName(String name) {
		System.out.println("Set bean name : " + name);
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		System.out.println("setApplicationContext");
	}

}
