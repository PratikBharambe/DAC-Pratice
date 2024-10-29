mysql> source C:/Users/IET/Desktop/procedures.sql
Query OK, 0 rows affected, 1 warning (0.02 sec)

Query OK, 0 rows affected (0.05 sec)

mysql> call pro1();
+-------------+
| hello world |
+-------------+
| hello world |
+-------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> source C:/Users/IET/Desktop/procedures.sql
Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> call pro1(12, 23);
+------+
| sum  |
+------+
|   35 |
+------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> source C:/Users/IET/Desktop/procedures.sql
Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> set @a := '';
Query OK, 0 rows affected (0.00 sec)

mysql> select @a;
+------+
| @a   |
+------+
|      |
+------+
1 row in set (0.00 sec)

mysql> source C:/Users/IET/Desktop/procedures.sql
Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> call pro1(12, 23, @a);
Query OK, 0 rows affected (0.00 sec)

mysql> select @a;
+------+
| @a   |
+------+
|   35 |
+------+
1 row in set (0.00 sec)

mysql> select ename, job, deptno from emp where deptno  =10;
+--------+-----------+--------+
| ename  | job       | deptno |
+--------+-----------+--------+
| AARAV  | CLERK     |     10 |
| THOMAS | CLERK     |     10 |
| CLARK  | MANAGER   |     10 |
| KING   | PRESIDENT |     10 |
| MILLER | CLERK     |     10 |
+--------+-----------+--------+
5 rows in set (0.01 sec)

mysql> source C:/Users/IET/Desktop/procedures.sql
Query OK, 0 rows affected (0.09 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> call pro1(1);
Empty set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> call pro1(10);
+--------+-----------+--------+
| ename  | job       | deptno |
+--------+-----------+--------+
| AARAV  | CLERK     |     10 |
| THOMAS | CLERK     |     10 |
| CLARK  | MANAGER   |     10 |
| KING   | PRESIDENT |     10 |
| MILLER | CLERK     |     10 |
+--------+-----------+--------+
5 rows in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> source C:/Users/IET/Desktop/procedures.sql
Query OK, 0 rows affected, 1 warning (0.03 sec)

Query OK, 0 rows affected (0.05 sec)

mysql> call pro1(11);
+-----------+
| not found |
+-----------+
| not found |
+-----------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> call pro1(10);
+--------+-----------+--------+
| ename  | job       | deptno |
+--------+-----------+--------+
| AARAV  | CLERK     |     10 |
| THOMAS | CLERK     |     10 |
| CLARK  | MANAGER   |     10 |
| KING   | PRESIDENT |     10 |
| MILLER | CLERK     |     10 |
+--------+-----------+--------+
5 rows in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> source C:/Users/IET/Desktop/procedures.sql
Query OK, 0 rows affected (0.10 sec)

Query OK, 0 rows affected (0.10 sec)

mysql> call pro1(10);
+----------+---------------------+------+
| ename    | job                 | sal  |
+----------+---------------------+------+
| GITA     | Compliance officers | 1750 |
| VRUSHALI | Compliance officers | 1750 |
| SHARMIN  | Public Relation     | 1750 |
| BANDISH  | Public Relation     | 1750 |
| SMITH    | CLERK               |  800 |
| AARAV    | CLERK               | 3350 |
| THOMAS   | CLERK               | 1750 |
| ALLEN    | SALESMAN            | 1600 |
| WARD     | SALESMAN            | 1250 |
| JONES    | MANAGER             | 2975 |
+----------+---------------------+------+
10 rows in set (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> call pro1(100);
+----------+---------------------+------+
| ename    | job                 | sal  |
+----------+---------------------+------+
| GITA     | Compliance officers | 1750 |
| VRUSHALI | Compliance officers | 1750 |
| SHARMIN  | Public Relation     | 1750 |
| BANDISH  | Public Relation     | 1750 |
| SMITH    | CLERK               |  800 |
| AARAV    | CLERK               | 3350 |
| THOMAS   | CLERK               | 1750 |
| ALLEN    | SALESMAN            | 1600 |
| WARD     | SALESMAN            | 1250 |
| JONES    | MANAGER             | 2975 |
| MARTIN   | SALESMAN            | 1250 |
| BLAKE    | MANAGER             | 2850 |
| CLARK    | MANAGER             | 2450 |
| SCOTT    | ANALYST             | 3000 |
| KING     | PRESIDENT           | 5000 |
| FRED     | vice PRESIDENT      | 5000 |
| TURNER   | SALESMAN            | 1500 |
| ADAMS    | CLERK               | 1100 |
| JAMES    | CLERK               |  950 |
| FORD     | ANALYST             | 3000 |
| HOFFMAN  | MANAGER             | 4150 |
| GRASS    | SALESMAN            | 2575 |
| MILLER   | CLERK               | 1300 |
| AARUSH   | SALESMAN            | 1350 |
| ALEX     | MANAGER             | 1250 |
| NATASHA  | CLERK               | 1750 |
| SANGITA  | Compliance officers | 1750 |
| SUPRIYA  | ANALYST             | 1750 |
+----------+---------------------+------+
28 rows in set (0.00 sec)

Query OK, 0 rows affected (0.06 sec)

mysql> source C:/Users/IET/Desktop/procedures.sql
Query OK, 0 rows affected, 1 warning (0.02 sec)

Query OK, 0 rows affected (0.04 sec)

mysql> call pro1(10);
+---------+---------------------+------+
| ename   | job                 | sal  |
+---------+---------------------+------+
| JAMES   | CLERK               |  950 |
| FORD    | ANALYST             | 3000 |
| HOFFMAN | MANAGER             | 4150 |
| GRASS   | SALESMAN            | 2575 |
| MILLER  | CLERK               | 1300 |
| AARUSH  | SALESMAN            | 1350 |
| ALEX    | MANAGER             | 1250 |
| NATASHA | CLERK               | 1750 |
| SANGITA | Compliance officers | 1750 |
| SUPRIYA | ANALYST             | 1750 |
+---------+---------------------+------+
10 rows in set (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> call pro1(5);
+---------+---------------------+------+
| ename   | job                 | sal  |
+---------+---------------------+------+
| AARUSH  | SALESMAN            | 1350 |
| ALEX    | MANAGER             | 1250 |
| NATASHA | CLERK               | 1750 |
| SANGITA | Compliance officers | 1750 |
| SUPRIYA | ANALYST             | 1750 |
+---------+---------------------+------+
5 rows in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> alter table dept drop column city;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select dname, deptno from dept;
+------------+--------+
| dname      | deptno |
+------------+--------+
| 1          |      1 |
| 2          |      2 |
| Accounting |     10 |
| RESEARCH   |     20 |
| SALES      |     30 |
| OPERATIONS |     40 |
| HR         |     50 |
+------------+--------+
7 rows in set (0.00 sec)

mysql> source C:/Users/IET/Desktop/procedures.sql
Query OK, 0 rows affected, 1 warning (0.03 sec)

Query OK, 0 rows affected (0.04 sec)

mysql> call pro1(10);
+--------------------------+
| Invalid number of values |
+--------------------------+
| Invalid number of values |
+--------------------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> source C:/Users/IET/Desktop/procedures.sql
Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> source C:/Users/IET/Desktop/procedures.sql
Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> source C:/Users/IET/Desktop/procedures.sql
Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> call pro1('dept');
+--------------------+
| @X                 |
+--------------------+
| SELECT * FROM dept |
+--------------------+
1 row in set (0.00 sec)

+--------+------------+----------+------------+------------+
| DEPTNO | DNAME      | LOC      | PWD        | STARTEDON  |
+--------+------------+----------+------------+------------+
|      1 | 1          | 1        | 1          | 1          |
|      2 | 2          | 2        | 2          | 2          |
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 |
+--------+------------+----------+------------+------------+
7 rows in set (0.01 sec)

Query OK, 0 rows affected (0.04 sec)

mysql> source C:/Users/IET/Desktop/procedures.sql
Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> call pro1("dname, deptno", "dept where deptno = 10");
+------------+--------+
| dname      | deptno |
+------------+--------+
| Accounting |     10 |
+------------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql>