-- seleecting and using database
show databases;
use dac16;
show tables;

-- selection and projection
select * from emp;
select ename, job, hiredate, sal from emp;

-- where clause
select empno, ename, job, hiredate from emp where hiredate = "1981-07-19";

-- limit clause
select empno, ename , job from emp limit 3;

-- limit with pffset clause
select empno, ename , job from emp limit 3, 4;

-- order by clause
select empno, ename, job from emp order by ename; -- asending order
select empno, ename, job from emp order by ename desc; -- descding order

-- group by clause
select job, count(job) as cj from emp group by job order by cj desc;
select sal, count(sal) from emp group by sal;

-- sub-query
select count(nt.empno) from (select empno, ename, job, hiredate from emp where hiredate = "1981-07-19") as nt;
select nt.job, count(nt.job) as cj from (select empno, ename, job, hiredate from emp where hiredate = "1981-07-19") as nt group by nt.job order by cj desc;

-- like operator
select empno, ename, job from emp where ename like "g%";

-- now() aggregate function
select now() as Today_Date;

-- distinct keyword
select sal from emp;
select distinct sal from emp;
select distinct ename from emp;

-- if function
select empno, ename, sal, if(sal = 1750, "Found", "Not Found") as st from emp;

-- sub-query
select empno, ename, sal from (select empno, ename, sal, if(sal = 1750, "Found", "Not Found") as st from emp) as es where es.st = "Found";
