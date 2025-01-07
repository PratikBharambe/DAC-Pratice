-- 1.	Display the Name and Title of the Employee who do not have a manager
select ename as "Employee Name" from emp where isnull(mgr);

-- 3.   Display the employee details who have joined on the same day when KING has joined.
select empno, ename, job, hiredate from emp where hiredate = (select hiredate from emp where ename = "king");

-- 4.	Find out the difference between maximum salary and salary earned by employee in deptno 10.
select empno, ename, job, sal , (select max(sal) from emp where deptno = 10)-sal as "Salary Difference" from emp where deptno = 10;

-- 5.	Find out the difference in Rs. Between average earning of dept 20 and 30.
select (select avg(sal) from emp where deptno = 20)-(select avg(sal) from emp where deptno = 30) as "Average salary difference";

-- 6.	Display name, salary, comm. For employee whose comm. > 5% of salary.
select ename, sal, comm from emp where comm > (0.05*sal);

-- 7.	Find out the employees whose salary is less than the average salary for dept 20.
select ename, sal, sal from emp where sal > (select avg(sal) from emp where deptno = 20);