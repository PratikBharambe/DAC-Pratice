use dac16;

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
select ename, sal from emp where sal > (select avg(sal) from emp where deptno = 20);

-- 9.	Display information of employees who is having maximum number of people reporting to them.
select empno, ename, sal, job, deptno, hiredate from emp where empno = (select mgr from (select mgr, count(mgr) as mc from emp group by mgr order by mc desc limit 1) as nt);

-- 10.	Give a query to concatenate empno, ename and mgr with spaces between.
select concat(empno, " | ", ename, " | ", mgr) as "Employee Details" from emp;

-- 11.	List the employee who is hired the earliest and least.
--  for max
select empno, ename, sal, job, deptno, hiredate from emp where hiredate = (select max(hiredate) from emp);
--  for min
select empno, ename, sal, job, deptno, hiredate from emp where hiredate = (select min(hiredate) from emp);

-- 12.	What length of longest ename and by how many characters is it long than its nearest one?
select ename, length(ename) as len from emp group by ename order by len desc limit 2;

-- 13.	Which employees earn less than 30% of president s salary?
select empno, ename, sal, job, deptno, hiredate from emp where sal < (select 0.3 * sal as nc from emp where job = "president");

-- 14.	List the department spending highest on salary.
select deptno, sum(sal) as ss from emp group by deptno order by ss desc limit 1;

-- 15.	List the department having least number of staff.
select deptno, count(empno) as ce from emp group by deptno order by ce limit 1;

-- 16.	List the department having neither the highest not the lowest of avg salary.
select deptno from ( select deptno, avg(sal) as avs from emp group by deptno ) as dept WHERE 
avs < (select max(avs) from 
(select avg(sal) as avs from emp group by deptno) as sub) 
and avs > (select min(avs) from (select avg(sal) as avs from emp group by deptno) as sub);

-- 17.	Display details of all employees as Mr. Ford works under <manger name>.
select empno, ename, sal, job, deptno, hiredate from emp where mgr = (select empno from emp where ename = "ford");

-- 18.	Display employee information who have joined the organization before 'BLAKE'
select empno, ename, sal, job, deptno, hiredate from emp where hiredate < (select hiredate from emp where ename = "blake");

-- 20.	List the employee (s) who earns the highest.
select empno, ename, sal, job, deptno, hiredate from emp where sal = (select max(sal) from emp);

-- 21.	List the mgr in dept 10 along with their dept details 
-- as well manager refers to anyone to whom at least 1 person reports.
select empno, ename, sal, job, deptno, hiredate from emp where job = "manager" and deptno = 10;

-- 22.	In which year did the most people join the organization? Display the year and the number of employees.
select year(hiredate), count(empno) from emp where year(hiredate) = (select hd from (select year(hiredate) as hd, count(year(hiredate)) as hyc from emp group by year(hiredate) order by hyc desc limit 1) as nt) group by year(hiredate);

-- 25.	Display the details of all employees who report to BLAKE
select * from emp where mgr = (select empno from emp where ename = "blake");

-- 26.	Display the department no of all departments having more than 1 clerks
select deptno, count(empno) as count_of_clerk from emp where job = "clerk" group by deptno;

-- 28.	Display all employee names and the locations of their departments except ‘CHICAGO’
select empno, ename, sal, job, deptno, hiredate from emp where deptno = (select deptno from dept where loc = "chicago");
