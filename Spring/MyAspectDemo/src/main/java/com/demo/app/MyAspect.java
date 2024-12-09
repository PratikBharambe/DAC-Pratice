package com.demo.app;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class MyAspect {

	@Before("execution(* com.demo.beans.*.m*(..))")
	public void beforeAavice() {
		System.out.println("Before advice method get called");
	}
	
	@After("execution(* com.demo.beans.*.*(int))")
	public void afterAdvice() {
		System.out.println("After advice method get called");
	}
	
	@Around("execution(* com.demo.beans.*.*(..))")
	public Object aroundAdvice(ProceedingJoinPoint jp) throws Throwable {
		System.out.println("Inside around Advice before execution.");
		Object ob = jp.proceed(); // Actual method get call from here
		System.out.println("Inside around Advice after execution.");
		return ob;
	}
	
}
