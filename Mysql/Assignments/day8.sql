mysql> create table y1 as select * from dept;
Query OK, 7 rows affected (0.09 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> desc dept;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| DEPTNO    | int         | NO   | PRI | NULL    |       |
| DNAME     | varchar(12) | YES  |     | NULL    |       |
| LOC       | varchar(10) | YES  |     | NULL    |       |
| PWD       | varchar(20) | YES  |     | NULL    |       |
| STARTEDON | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(10) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> desc y1;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| DEPTNO    | int         | NO   |     | NULL    |       |
| DNAME     | varchar(12) | YES  |     | NULL    |       |
| LOC       | varchar(10) | YES  |     | NULL    |       |
| PWD       | varchar(20) | YES  |     | NULL    |       |
| STARTEDON | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(10) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> select * from y1;
+--------+------------+----------+------------+------------+------+
| DEPTNO | DNAME      | LOC      | PWD        | STARTEDON  | city |
+--------+------------+----------+------------+------------+------+
|      1 | 1          | 1        | 1          | 1          | 1    |
|      2 | 2          | 2        | 2          | 2          | 2    |
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
+--------+------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

mysql> select * from dept;;
+--------+------------+----------+------------+------------+------+
| DEPTNO | DNAME      | LOC      | PWD        | STARTEDON  | city |
+--------+------------+----------+------------+------------+------+
|      1 | 1          | 1        | 1          | 1          | 1    |
|      2 | 2          | 2        | 2          | 2          | 2    |
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
+--------+------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

ERROR:
No query specified

mysql> create table y2 as select * from dept where 1 = 2;
Query OK, 0 rows affected (0.16 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc y1;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| DEPTNO    | int         | NO   |     | NULL    |       |
| DNAME     | varchar(12) | YES  |     | NULL    |       |
| LOC       | varchar(10) | YES  |     | NULL    |       |
| PWD       | varchar(20) | YES  |     | NULL    |       |
| STARTEDON | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(10) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> insert into y2 select * from dept;
Query OK, 7 rows affected (0.04 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> select * from y1;
+--------+------------+----------+------------+------------+------+
| DEPTNO | DNAME      | LOC      | PWD        | STARTEDON  | city |
+--------+------------+----------+------------+------------+------+
|      1 | 1          | 1        | 1          | 1          | 1    |
|      2 | 2          | 2        | 2          | 2          | 2    |
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
+--------+------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

mysql> select * from emp, dept;
+-------+----------+--------+---------------------+------+------------+------+------+--------+---------+--------------+------------+------------+----------+--------+------------+----------+------------+------------+------+
| EMPNO | ENAME    | GENDER | JOB                 | MGR  | HIREDATE   | SAL  | COMM | DEPTNO | BONUSID | USER NAME    | PWD        | PHONE      | isActive | DEPTNO | DNAME      | LOC      | PWD        | STARTEDON  | city |
+-------+----------+--------+---------------------+------+------------+------+------+--------+---------+--------------+------------+------------+----------+--------+------------+----------+------------+------------+------+
|  6001 | GITA     | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | GITA         | sales@2017 | NULL       |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  6001 | GITA     | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | GITA         | sales@2017 | NULL       |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  6001 | GITA     | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | GITA         | sales@2017 | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  6001 | GITA     | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | GITA         | sales@2017 | NULL       |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  6001 | GITA     | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | GITA         | sales@2017 | NULL       |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  6001 | GITA     | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | GITA         | sales@2017 | NULL       |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  6001 | GITA     | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | GITA         | sales@2017 | NULL       |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  6129 | VRUSHALI | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | VRUSHALI     | PUN@8877   | NULL       |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  6129 | VRUSHALI | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | VRUSHALI     | PUN@8877   | NULL       |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  6129 | VRUSHALI | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | VRUSHALI     | PUN@8877   | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  6129 | VRUSHALI | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | VRUSHALI     | PUN@8877   | NULL       |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  6129 | VRUSHALI | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | VRUSHALI     | PUN@8877   | NULL       |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  6129 | VRUSHALI | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | VRUSHALI     | PUN@8877   | NULL       |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  6129 | VRUSHALI | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | VRUSHALI     | PUN@8877   | NULL       |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  6473 | SHARMIN  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | SHARMIN      | a12recmpm  | NULL       |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  6473 | SHARMIN  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | SHARMIN      | a12recmpm  | NULL       |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  6473 | SHARMIN  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | SHARMIN      | a12recmpm  | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  6473 | SHARMIN  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | SHARMIN      | a12recmpm  | NULL       |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  6473 | SHARMIN  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | SHARMIN      | a12recmpm  | NULL       |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  6473 | SHARMIN  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | SHARMIN      | a12recmpm  | NULL       |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  6473 | SHARMIN  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | SHARMIN      | a12recmpm  | NULL       |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  6781 | BANDISH  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | BANDISH      | a12recmpm  | NULL       |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  6781 | BANDISH  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | BANDISH      | a12recmpm  | NULL       |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  6781 | BANDISH  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | BANDISH      | a12recmpm  | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  6781 | BANDISH  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | BANDISH      | a12recmpm  | NULL       |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  6781 | BANDISH  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | BANDISH      | a12recmpm  | NULL       |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  6781 | BANDISH  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | BANDISH      | a12recmpm  | NULL       |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  6781 | BANDISH  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | BANDISH      | a12recmpm  | NULL       |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7369 | SMITH    | M      | CLERK               | 7902 | 1980-12-17 |  800 | NULL |     20 |       2 | TRITONE      | a12recmpm  | 7032300023 |        0 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7369 | SMITH    | M      | CLERK               | 7902 | 1980-12-17 |  800 | NULL |     20 |       2 | TRITONE      | a12recmpm  | 7032300023 |        0 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7369 | SMITH    | M      | CLERK               | 7902 | 1980-12-17 |  800 | NULL |     20 |       2 | TRITONE      | a12recmpm  | 7032300023 |        0 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7369 | SMITH    | M      | CLERK               | 7902 | 1980-12-17 |  800 | NULL |     20 |       2 | TRITONE      | a12recmpm  | 7032300023 |        0 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7369 | SMITH    | M      | CLERK               | 7902 | 1980-12-17 |  800 | NULL |     20 |       2 | TRITONE      | a12recmpm  | 7032300023 |        0 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7369 | SMITH    | M      | CLERK               | 7902 | 1980-12-17 |  800 | NULL |     20 |       2 | TRITONE      | a12recmpm  | 7032300023 |        0 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7369 | SMITH    | M      | CLERK               | 7902 | 1980-12-17 |  800 | NULL |     20 |       2 | TRITONE      | a12recmpm  | 7032300023 |        0 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7415 | AARAV    | M      | CLERK               | 7902 | 1981-12-31 | 3350 | NULL |     10 |    NULL | AARAV        | NULL       | 7032300084 |        0 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7415 | AARAV    | M      | CLERK               | 7902 | 1981-12-31 | 3350 | NULL |     10 |    NULL | AARAV        | NULL       | 7032300084 |        0 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7415 | AARAV    | M      | CLERK               | 7902 | 1981-12-31 | 3350 | NULL |     10 |    NULL | AARAV        | NULL       | 7032300084 |        0 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7415 | AARAV    | M      | CLERK               | 7902 | 1981-12-31 | 3350 | NULL |     10 |    NULL | AARAV        | NULL       | 7032300084 |        0 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7415 | AARAV    | M      | CLERK               | 7902 | 1981-12-31 | 3350 | NULL |     10 |    NULL | AARAV        | NULL       | 7032300084 |        0 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7415 | AARAV    | M      | CLERK               | 7902 | 1981-12-31 | 3350 | NULL |     10 |    NULL | AARAV        | NULL       | 7032300084 |        0 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7415 | AARAV    | M      | CLERK               | 7902 | 1981-12-31 | 3350 | NULL |     10 |    NULL | AARAV        | NULL       | 7032300084 |        0 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7421 | THOMAS   | M      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     10 |       1 | THOMAS       | r50mpm     | 7032300011 |        0 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7421 | THOMAS   | M      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     10 |       1 | THOMAS       | r50mpm     | 7032300011 |        0 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7421 | THOMAS   | M      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     10 |       1 | THOMAS       | r50mpm     | 7032300011 |        0 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7421 | THOMAS   | M      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     10 |       1 | THOMAS       | r50mpm     | 7032300011 |        0 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7421 | THOMAS   | M      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     10 |       1 | THOMAS       | r50mpm     | 7032300011 |        0 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7421 | THOMAS   | M      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     10 |       1 | THOMAS       | r50mpm     | 7032300011 |        0 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7421 | THOMAS   | M      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     10 |       1 | THOMAS       | r50mpm     | 7032300011 |        0 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7499 | ALLEN    | M      | SALESMAN            | 7698 | 1981-02-20 | 1600 |  300 |     30 |       4 | ALWAYS TESTE | sales@2017 | 7032300096 |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7499 | ALLEN    | M      | SALESMAN            | 7698 | 1981-02-20 | 1600 |  300 |     30 |       4 | ALWAYS TESTE | sales@2017 | 7032300096 |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7499 | ALLEN    | M      | SALESMAN            | 7698 | 1981-02-20 | 1600 |  300 |     30 |       4 | ALWAYS TESTE | sales@2017 | 7032300096 |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7499 | ALLEN    | M      | SALESMAN            | 7698 | 1981-02-20 | 1600 |  300 |     30 |       4 | ALWAYS TESTE | sales@2017 | 7032300096 |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7499 | ALLEN    | M      | SALESMAN            | 7698 | 1981-02-20 | 1600 |  300 |     30 |       4 | ALWAYS TESTE | sales@2017 | 7032300096 |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7499 | ALLEN    | M      | SALESMAN            | 7698 | 1981-02-20 | 1600 |  300 |     30 |       4 | ALWAYS TESTE | sales@2017 | 7032300096 |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7499 | ALLEN    | M      | SALESMAN            | 7698 | 1981-02-20 | 1600 |  300 |     30 |       4 | ALWAYS TESTE | sales@2017 | 7032300096 |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7521 | WARD     | M      | SALESMAN            | 7698 | 1981-02-22 | 1250 |  500 |     30 |       1 | WARD         | sales@2017 | 7132300034 |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7521 | WARD     | M      | SALESMAN            | 7698 | 1981-02-22 | 1250 |  500 |     30 |       1 | WARD         | sales@2017 | 7132300034 |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7521 | WARD     | M      | SALESMAN            | 7698 | 1981-02-22 | 1250 |  500 |     30 |       1 | WARD         | sales@2017 | 7132300034 |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7521 | WARD     | M      | SALESMAN            | 7698 | 1981-02-22 | 1250 |  500 |     30 |       1 | WARD         | sales@2017 | 7132300034 |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7521 | WARD     | M      | SALESMAN            | 7698 | 1981-02-22 | 1250 |  500 |     30 |       1 | WARD         | sales@2017 | 7132300034 |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7521 | WARD     | M      | SALESMAN            | 7698 | 1981-02-22 | 1250 |  500 |     30 |       1 | WARD         | sales@2017 | 7132300034 |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7521 | WARD     | M      | SALESMAN            | 7698 | 1981-02-22 | 1250 |  500 |     30 |       1 | WARD         | sales@2017 | 7132300034 |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7566 | JONES    | M      | MANAGER             | 7839 | 1981-04-02 | 2975 | NULL |     20 |       4 | HONEYCOMB    | a12recmpm  | 7132300039 |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7566 | JONES    | M      | MANAGER             | 7839 | 1981-04-02 | 2975 | NULL |     20 |       4 | HONEYCOMB    | a12recmpm  | 7132300039 |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7566 | JONES    | M      | MANAGER             | 7839 | 1981-04-02 | 2975 | NULL |     20 |       4 | HONEYCOMB    | a12recmpm  | 7132300039 |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7566 | JONES    | M      | MANAGER             | 7839 | 1981-04-02 | 2975 | NULL |     20 |       4 | HONEYCOMB    | a12recmpm  | 7132300039 |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7566 | JONES    | M      | MANAGER             | 7839 | 1981-04-02 | 2975 | NULL |     20 |       4 | HONEYCOMB    | a12recmpm  | 7132300039 |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7566 | JONES    | M      | MANAGER             | 7839 | 1981-04-02 | 2975 | NULL |     20 |       4 | HONEYCOMB    | a12recmpm  | 7132300039 |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7566 | JONES    | M      | MANAGER             | 7839 | 1981-04-02 | 2975 | NULL |     20 |       4 | HONEYCOMB    | a12recmpm  | 7132300039 |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7654 | MARTIN   | M      | SALESMAN            | 7698 | 1981-09-28 | 1250 | 1400 |     30 |       6 | LIFE RACER   | sales@2017 | 7132300050 |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7654 | MARTIN   | M      | SALESMAN            | 7698 | 1981-09-28 | 1250 | 1400 |     30 |       6 | LIFE RACER   | sales@2017 | 7132300050 |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7654 | MARTIN   | M      | SALESMAN            | 7698 | 1981-09-28 | 1250 | 1400 |     30 |       6 | LIFE RACER   | sales@2017 | 7132300050 |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7654 | MARTIN   | M      | SALESMAN            | 7698 | 1981-09-28 | 1250 | 1400 |     30 |       6 | LIFE RACER   | sales@2017 | 7132300050 |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7654 | MARTIN   | M      | SALESMAN            | 7698 | 1981-09-28 | 1250 | 1400 |     30 |       6 | LIFE RACER   | sales@2017 | 7132300050 |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7654 | MARTIN   | M      | SALESMAN            | 7698 | 1981-09-28 | 1250 | 1400 |     30 |       6 | LIFE RACER   | sales@2017 | 7132300050 |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7654 | MARTIN   | M      | SALESMAN            | 7698 | 1981-09-28 | 1250 | 1400 |     30 |       6 | LIFE RACER   | sales@2017 | 7132300050 |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7698 | BLAKE    | M      | MANAGER             | 7839 | 1981-05-01 | 2850 | NULL |     30 |       1 | BIG BEN      | sales@2017 | 7132300027 |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7698 | BLAKE    | M      | MANAGER             | 7839 | 1981-05-01 | 2850 | NULL |     30 |       1 | BIG BEN      | sales@2017 | 7132300027 |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7698 | BLAKE    | M      | MANAGER             | 7839 | 1981-05-01 | 2850 | NULL |     30 |       1 | BIG BEN      | sales@2017 | 7132300027 |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7698 | BLAKE    | M      | MANAGER             | 7839 | 1981-05-01 | 2850 | NULL |     30 |       1 | BIG BEN      | sales@2017 | 7132300027 |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7698 | BLAKE    | M      | MANAGER             | 7839 | 1981-05-01 | 2850 | NULL |     30 |       1 | BIG BEN      | sales@2017 | 7132300027 |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7698 | BLAKE    | M      | MANAGER             | 7839 | 1981-05-01 | 2850 | NULL |     30 |       1 | BIG BEN      | sales@2017 | 7132300027 |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7698 | BLAKE    | M      | MANAGER             | 7839 | 1981-05-01 | 2850 | NULL |     30 |       1 | BIG BEN      | sales@2017 | 7132300027 |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7782 | CLARK    | M      | MANAGER             | 7839 | 1981-06-09 | 2450 | NULL |     10 |       3 | CLARK        | r50mpm     | 7032300001 |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7782 | CLARK    | M      | MANAGER             | 7839 | 1981-06-09 | 2450 | NULL |     10 |       3 | CLARK        | r50mpm     | 7032300001 |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7782 | CLARK    | M      | MANAGER             | 7839 | 1981-06-09 | 2450 | NULL |     10 |       3 | CLARK        | r50mpm     | 7032300001 |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7782 | CLARK    | M      | MANAGER             | 7839 | 1981-06-09 | 2450 | NULL |     10 |       3 | CLARK        | r50mpm     | 7032300001 |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7782 | CLARK    | M      | MANAGER             | 7839 | 1981-06-09 | 2450 | NULL |     10 |       3 | CLARK        | r50mpm     | 7032300001 |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7782 | CLARK    | M      | MANAGER             | 7839 | 1981-06-09 | 2450 | NULL |     10 |       3 | CLARK        | r50mpm     | 7032300001 |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7782 | CLARK    | M      | MANAGER             | 7839 | 1981-06-09 | 2450 | NULL |     10 |       3 | CLARK        | r50mpm     | 7032300001 |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7788 | SCOTT    | M      | ANALYST             | 7566 | 1982-12-09 | 3000 | NULL |     20 |       3 | WHITE SAND   | a12recmpm  | NULL       |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7788 | SCOTT    | M      | ANALYST             | 7566 | 1982-12-09 | 3000 | NULL |     20 |       3 | WHITE SAND   | a12recmpm  | NULL       |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7788 | SCOTT    | M      | ANALYST             | 7566 | 1982-12-09 | 3000 | NULL |     20 |       3 | WHITE SAND   | a12recmpm  | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7788 | SCOTT    | M      | ANALYST             | 7566 | 1982-12-09 | 3000 | NULL |     20 |       3 | WHITE SAND   | a12recmpm  | NULL       |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7788 | SCOTT    | M      | ANALYST             | 7566 | 1982-12-09 | 3000 | NULL |     20 |       3 | WHITE SAND   | a12recmpm  | NULL       |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7788 | SCOTT    | M      | ANALYST             | 7566 | 1982-12-09 | 3000 | NULL |     20 |       3 | WHITE SAND   | a12recmpm  | NULL       |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7788 | SCOTT    | M      | ANALYST             | 7566 | 1982-12-09 | 3000 | NULL |     20 |       3 | WHITE SAND   | a12recmpm  | NULL       |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7839 | KING     | M      | PRESIDENT           | NULL | 1981-11-17 | 5000 | NULL |     10 |       1 | KING         | r50mpm     | 7132300081 |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7839 | KING     | M      | PRESIDENT           | NULL | 1981-11-17 | 5000 | NULL |     10 |       1 | KING         | r50mpm     | 7132300081 |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7839 | KING     | M      | PRESIDENT           | NULL | 1981-11-17 | 5000 | NULL |     10 |       1 | KING         | r50mpm     | 7132300081 |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7839 | KING     | M      | PRESIDENT           | NULL | 1981-11-17 | 5000 | NULL |     10 |       1 | KING         | r50mpm     | 7132300081 |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7839 | KING     | M      | PRESIDENT           | NULL | 1981-11-17 | 5000 | NULL |     10 |       1 | KING         | r50mpm     | 7132300081 |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7839 | KING     | M      | PRESIDENT           | NULL | 1981-11-17 | 5000 | NULL |     10 |       1 | KING         | r50mpm     | 7132300081 |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7839 | KING     | M      | PRESIDENT           | NULL | 1981-11-17 | 5000 | NULL |     10 |       1 | KING         | r50mpm     | 7132300081 |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7840 | FRED     | M      | vice PRESIDENT      | 7839 | 1983-08-09 | 5000 | NULL |     20 |       1 | SAND STONE   | a12recmpm  | NULL       |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7840 | FRED     | M      | vice PRESIDENT      | 7839 | 1983-08-09 | 5000 | NULL |     20 |       1 | SAND STONE   | a12recmpm  | NULL       |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7840 | FRED     | M      | vice PRESIDENT      | 7839 | 1983-08-09 | 5000 | NULL |     20 |       1 | SAND STONE   | a12recmpm  | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7840 | FRED     | M      | vice PRESIDENT      | 7839 | 1983-08-09 | 5000 | NULL |     20 |       1 | SAND STONE   | a12recmpm  | NULL       |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7840 | FRED     | M      | vice PRESIDENT      | 7839 | 1983-08-09 | 5000 | NULL |     20 |       1 | SAND STONE   | a12recmpm  | NULL       |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7840 | FRED     | M      | vice PRESIDENT      | 7839 | 1983-08-09 | 5000 | NULL |     20 |       1 | SAND STONE   | a12recmpm  | NULL       |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7840 | FRED     | M      | vice PRESIDENT      | 7839 | 1983-08-09 | 5000 | NULL |     20 |       1 | SAND STONE   | a12recmpm  | NULL       |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7844 | TURNER   | M      | SALESMAN            | 7698 | 1981-09-08 | 1500 |    0 |     30 |       5 | SAND DUST    | sales@2017 | NULL       |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7844 | TURNER   | M      | SALESMAN            | 7698 | 1981-09-08 | 1500 |    0 |     30 |       5 | SAND DUST    | sales@2017 | NULL       |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7844 | TURNER   | M      | SALESMAN            | 7698 | 1981-09-08 | 1500 |    0 |     30 |       5 | SAND DUST    | sales@2017 | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7844 | TURNER   | M      | SALESMAN            | 7698 | 1981-09-08 | 1500 |    0 |     30 |       5 | SAND DUST    | sales@2017 | NULL       |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7844 | TURNER   | M      | SALESMAN            | 7698 | 1981-09-08 | 1500 |    0 |     30 |       5 | SAND DUST    | sales@2017 | NULL       |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7844 | TURNER   | M      | SALESMAN            | 7698 | 1981-09-08 | 1500 |    0 |     30 |       5 | SAND DUST    | sales@2017 | NULL       |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7844 | TURNER   | M      | SALESMAN            | 7698 | 1981-09-08 | 1500 |    0 |     30 |       5 | SAND DUST    | sales@2017 | NULL       |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7876 | ADAMS    | M      | CLERK               | 7788 | 1983-01-12 | 1100 | NULL |     20 |       1 | CRAZY ANYONE | a12recmpm  | 7132300086 |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7876 | ADAMS    | M      | CLERK               | 7788 | 1983-01-12 | 1100 | NULL |     20 |       1 | CRAZY ANYONE | a12recmpm  | 7132300086 |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7876 | ADAMS    | M      | CLERK               | 7788 | 1983-01-12 | 1100 | NULL |     20 |       1 | CRAZY ANYONE | a12recmpm  | 7132300086 |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7876 | ADAMS    | M      | CLERK               | 7788 | 1983-01-12 | 1100 | NULL |     20 |       1 | CRAZY ANYONE | a12recmpm  | 7132300086 |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7876 | ADAMS    | M      | CLERK               | 7788 | 1983-01-12 | 1100 | NULL |     20 |       1 | CRAZY ANYONE | a12recmpm  | 7132300086 |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7876 | ADAMS    | M      | CLERK               | 7788 | 1983-01-12 | 1100 | NULL |     20 |       1 | CRAZY ANYONE | a12recmpm  | 7132300086 |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7876 | ADAMS    | M      | CLERK               | 7788 | 1983-01-12 | 1100 | NULL |     20 |       1 | CRAZY ANYONE | a12recmpm  | 7132300086 |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7900 | JAMES    | M      | CLERK               | 7698 | 1981-12-03 |  950 | NULL |     30 |       2 | CRAZY LEADER | sales@2017 | 7132300042 |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7900 | JAMES    | M      | CLERK               | 7698 | 1981-12-03 |  950 | NULL |     30 |       2 | CRAZY LEADER | sales@2017 | 7132300042 |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7900 | JAMES    | M      | CLERK               | 7698 | 1981-12-03 |  950 | NULL |     30 |       2 | CRAZY LEADER | sales@2017 | 7132300042 |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7900 | JAMES    | M      | CLERK               | 7698 | 1981-12-03 |  950 | NULL |     30 |       2 | CRAZY LEADER | sales@2017 | 7132300042 |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7900 | JAMES    | M      | CLERK               | 7698 | 1981-12-03 |  950 | NULL |     30 |       2 | CRAZY LEADER | sales@2017 | 7132300042 |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7900 | JAMES    | M      | CLERK               | 7698 | 1981-12-03 |  950 | NULL |     30 |       2 | CRAZY LEADER | sales@2017 | 7132300042 |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7900 | JAMES    | M      | CLERK               | 7698 | 1981-12-03 |  950 | NULL |     30 |       2 | CRAZY LEADER | sales@2017 | 7132300042 |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7902 | FORD     | M      | ANALYST             | 7566 | 1981-12-03 | 3000 | NULL |     20 |       4 | CONBRIO      | a12recmpm  | NULL       |        0 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7902 | FORD     | M      | ANALYST             | 7566 | 1981-12-03 | 3000 | NULL |     20 |       4 | CONBRIO      | a12recmpm  | NULL       |        0 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7902 | FORD     | M      | ANALYST             | 7566 | 1981-12-03 | 3000 | NULL |     20 |       4 | CONBRIO      | a12recmpm  | NULL       |        0 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7902 | FORD     | M      | ANALYST             | 7566 | 1981-12-03 | 3000 | NULL |     20 |       4 | CONBRIO      | a12recmpm  | NULL       |        0 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7902 | FORD     | M      | ANALYST             | 7566 | 1981-12-03 | 3000 | NULL |     20 |       4 | CONBRIO      | a12recmpm  | NULL       |        0 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7902 | FORD     | M      | ANALYST             | 7566 | 1981-12-03 | 3000 | NULL |     20 |       4 | CONBRIO      | a12recmpm  | NULL       |        0 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7902 | FORD     | M      | ANALYST             | 7566 | 1981-12-03 | 3000 | NULL |     20 |       4 | CONBRIO      | a12recmpm  | NULL       |        0 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7919 | HOFFMAN  | M      | MANAGER             | 7566 | 1982-03-24 | 4150 | NULL |     30 |       3 | INTERVAL     | sales@2017 | NULL       |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7919 | HOFFMAN  | M      | MANAGER             | 7566 | 1982-03-24 | 4150 | NULL |     30 |       3 | INTERVAL     | sales@2017 | NULL       |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7919 | HOFFMAN  | M      | MANAGER             | 7566 | 1982-03-24 | 4150 | NULL |     30 |       3 | INTERVAL     | sales@2017 | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7919 | HOFFMAN  | M      | MANAGER             | 7566 | 1982-03-24 | 4150 | NULL |     30 |       3 | INTERVAL     | sales@2017 | NULL       |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7919 | HOFFMAN  | M      | MANAGER             | 7566 | 1982-03-24 | 4150 | NULL |     30 |       3 | INTERVAL     | sales@2017 | NULL       |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7919 | HOFFMAN  | M      | MANAGER             | 7566 | 1982-03-24 | 4150 | NULL |     30 |       3 | INTERVAL     | sales@2017 | NULL       |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7919 | HOFFMAN  | M      | MANAGER             | 7566 | 1982-03-24 | 4150 | NULL |     30 |       3 | INTERVAL     | sales@2017 | NULL       |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7920 | GRASS    | M      | SALESMAN            | 7919 | 1980-02-14 | 2575 | 2700 |     30 |       5 | GRASS        | sales@2017 | NULL       |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7920 | GRASS    | M      | SALESMAN            | 7919 | 1980-02-14 | 2575 | 2700 |     30 |       5 | GRASS        | sales@2017 | NULL       |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7920 | GRASS    | M      | SALESMAN            | 7919 | 1980-02-14 | 2575 | 2700 |     30 |       5 | GRASS        | sales@2017 | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7920 | GRASS    | M      | SALESMAN            | 7919 | 1980-02-14 | 2575 | 2700 |     30 |       5 | GRASS        | sales@2017 | NULL       |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7920 | GRASS    | M      | SALESMAN            | 7919 | 1980-02-14 | 2575 | 2700 |     30 |       5 | GRASS        | sales@2017 | NULL       |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7920 | GRASS    | M      | SALESMAN            | 7919 | 1980-02-14 | 2575 | 2700 |     30 |       5 | GRASS        | sales@2017 | NULL       |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7920 | GRASS    | M      | SALESMAN            | 7919 | 1980-02-14 | 2575 | 2700 |     30 |       5 | GRASS        | sales@2017 | NULL       |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7934 | MILLER   | M      | CLERK               | 7782 | 1982-01-23 | 1300 | NULL |     10 |       2 | QUARTERNOTE  | r50mpm     | 7132300055 |        0 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7934 | MILLER   | M      | CLERK               | 7782 | 1982-01-23 | 1300 | NULL |     10 |       2 | QUARTERNOTE  | r50mpm     | 7132300055 |        0 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7934 | MILLER   | M      | CLERK               | 7782 | 1982-01-23 | 1300 | NULL |     10 |       2 | QUARTERNOTE  | r50mpm     | 7132300055 |        0 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7934 | MILLER   | M      | CLERK               | 7782 | 1982-01-23 | 1300 | NULL |     10 |       2 | QUARTERNOTE  | r50mpm     | 7132300055 |        0 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7934 | MILLER   | M      | CLERK               | 7782 | 1982-01-23 | 1300 | NULL |     10 |       2 | QUARTERNOTE  | r50mpm     | 7132300055 |        0 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7934 | MILLER   | M      | CLERK               | 7782 | 1982-01-23 | 1300 | NULL |     10 |       2 | QUARTERNOTE  | r50mpm     | 7132300055 |        0 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7934 | MILLER   | M      | CLERK               | 7782 | 1982-01-23 | 1300 | NULL |     10 |       2 | QUARTERNOTE  | r50mpm     | 7132300055 |        0 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7945 | AARUSH   | M      | SALESMAN            | 7902 | 1980-02-14 | 1350 | 2700 |     30 |    NULL | AARUSH       | ABCDEF     | NULL       |        0 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7945 | AARUSH   | M      | SALESMAN            | 7902 | 1980-02-14 | 1350 | 2700 |     30 |    NULL | AARUSH       | ABCDEF     | NULL       |        0 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7945 | AARUSH   | M      | SALESMAN            | 7902 | 1980-02-14 | 1350 | 2700 |     30 |    NULL | AARUSH       | ABCDEF     | NULL       |        0 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7945 | AARUSH   | M      | SALESMAN            | 7902 | 1980-02-14 | 1350 | 2700 |     30 |    NULL | AARUSH       | ABCDEF     | NULL       |        0 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7945 | AARUSH   | M      | SALESMAN            | 7902 | 1980-02-14 | 1350 | 2700 |     30 |    NULL | AARUSH       | ABCDEF     | NULL       |        0 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7945 | AARUSH   | M      | SALESMAN            | 7902 | 1980-02-14 | 1350 | 2700 |     30 |    NULL | AARUSH       | ABCDEF     | NULL       |        0 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7945 | AARUSH   | M      | SALESMAN            | 7902 | 1980-02-14 | 1350 | 2700 |     30 |    NULL | AARUSH       | ABCDEF     | NULL       |        0 |      1 | 1          | 1        | 1          | 1          | 1    |
|  7949 | ALEX     | M      | MANAGER             | 7698 | 1982-01-24 | 1250 |  500 |     30 |       5 | QUARTERREST  | sales@2017 | 7156567183 |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  7949 | ALEX     | M      | MANAGER             | 7698 | 1982-01-24 | 1250 |  500 |     30 |       5 | QUARTERREST  | sales@2017 | 7156567183 |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  7949 | ALEX     | M      | MANAGER             | 7698 | 1982-01-24 | 1250 |  500 |     30 |       5 | QUARTERREST  | sales@2017 | 7156567183 |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7949 | ALEX     | M      | MANAGER             | 7698 | 1982-01-24 | 1250 |  500 |     30 |       5 | QUARTERREST  | sales@2017 | 7156567183 |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7949 | ALEX     | M      | MANAGER             | 7698 | 1982-01-24 | 1250 |  500 |     30 |       5 | QUARTERREST  | sales@2017 | 7156567183 |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7949 | ALEX     | M      | MANAGER             | 7698 | 1982-01-24 | 1250 |  500 |     30 |       5 | QUARTERREST  | sales@2017 | 7156567183 |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  7949 | ALEX     | M      | MANAGER             | 7698 | 1982-01-24 | 1250 |  500 |     30 |       5 | QUARTERREST  | sales@2017 | 7156567183 |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  8433 | NATASHA  | F      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | NATASHA      | sales@2017 | NULL       |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  8433 | NATASHA  | F      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | NATASHA      | sales@2017 | NULL       |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  8433 | NATASHA  | F      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | NATASHA      | sales@2017 | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  8433 | NATASHA  | F      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | NATASHA      | sales@2017 | NULL       |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  8433 | NATASHA  | F      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | NATASHA      | sales@2017 | NULL       |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  8433 | NATASHA  | F      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | NATASHA      | sales@2017 | NULL       |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  8433 | NATASHA  | F      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | NATASHA      | sales@2017 | NULL       |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  9400 | SANGITA  | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SANGITA      | NULL       | NULL       |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  9400 | SANGITA  | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SANGITA      | NULL       | NULL       |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  9400 | SANGITA  | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SANGITA      | NULL       | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  9400 | SANGITA  | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SANGITA      | NULL       | NULL       |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  9400 | SANGITA  | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SANGITA      | NULL       | NULL       |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  9400 | SANGITA  | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SANGITA      | NULL       | NULL       |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  9400 | SANGITA  | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SANGITA      | NULL       | NULL       |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
|  9473 | SUPRIYA  | F      | ANALYST             | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SUPRIYA      | XYZ@1234   | NULL       |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  9473 | SUPRIYA  | F      | ANALYST             | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SUPRIYA      | XYZ@1234   | NULL       |        1 |     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|  9473 | SUPRIYA  | F      | ANALYST             | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SUPRIYA      | XYZ@1234   | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  9473 | SUPRIYA  | F      | ANALYST             | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SUPRIYA      | XYZ@1234   | NULL       |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  9473 | SUPRIYA  | F      | ANALYST             | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SUPRIYA      | XYZ@1234   | NULL       |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  9473 | SUPRIYA  | F      | ANALYST             | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SUPRIYA      | XYZ@1234   | NULL       |        1 |      2 | 2          | 2        | 2          | 2          | 2    |
|  9473 | SUPRIYA  | F      | ANALYST             | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SUPRIYA      | XYZ@1234   | NULL       |        1 |      1 | 1          | 1        | 1          | 1          | 1    |
+-------+----------+--------+---------------------+------+------------+------+------+--------+---------+--------------+------------+------------+----------+--------+------------+----------+------------+------------+------+
196 rows in set (0.02 sec)

mysql> select ename, dname from emp, dept;
+----------+------------+
| ename    | dname      |
+----------+------------+
| GITA     | HR         |
| GITA     | OPERATIONS |
| GITA     | SALES      |
| GITA     | RESEARCH   |
| GITA     | Accounting |
| GITA     | 2          |
| GITA     | 1          |
| VRUSHALI | HR         |
| VRUSHALI | OPERATIONS |
| VRUSHALI | SALES      |
| VRUSHALI | RESEARCH   |
| VRUSHALI | Accounting |
| VRUSHALI | 2          |
| VRUSHALI | 1          |
| SHARMIN  | HR         |
| SHARMIN  | OPERATIONS |
| SHARMIN  | SALES      |
| SHARMIN  | RESEARCH   |
| SHARMIN  | Accounting |
| SHARMIN  | 2          |
| SHARMIN  | 1          |
| BANDISH  | HR         |
| BANDISH  | OPERATIONS |
| BANDISH  | SALES      |
| BANDISH  | RESEARCH   |
| BANDISH  | Accounting |
| BANDISH  | 2          |
| BANDISH  | 1          |
| SMITH    | HR         |
| SMITH    | OPERATIONS |
| SMITH    | SALES      |
| SMITH    | RESEARCH   |
| SMITH    | Accounting |
| SMITH    | 2          |
| SMITH    | 1          |
| AARAV    | HR         |
| AARAV    | OPERATIONS |
| AARAV    | SALES      |
| AARAV    | RESEARCH   |
| AARAV    | Accounting |
| AARAV    | 2          |
| AARAV    | 1          |
| THOMAS   | HR         |
| THOMAS   | OPERATIONS |
| THOMAS   | SALES      |
| THOMAS   | RESEARCH   |
| THOMAS   | Accounting |
| THOMAS   | 2          |
| THOMAS   | 1          |
| ALLEN    | HR         |
| ALLEN    | OPERATIONS |
| ALLEN    | SALES      |
| ALLEN    | RESEARCH   |
| ALLEN    | Accounting |
| ALLEN    | 2          |
| ALLEN    | 1          |
| WARD     | HR         |
| WARD     | OPERATIONS |
| WARD     | SALES      |
| WARD     | RESEARCH   |
| WARD     | Accounting |
| WARD     | 2          |
| WARD     | 1          |
| JONES    | HR         |
| JONES    | OPERATIONS |
| JONES    | SALES      |
| JONES    | RESEARCH   |
| JONES    | Accounting |
| JONES    | 2          |
| JONES    | 1          |
| MARTIN   | HR         |
| MARTIN   | OPERATIONS |
| MARTIN   | SALES      |
| MARTIN   | RESEARCH   |
| MARTIN   | Accounting |
| MARTIN   | 2          |
| MARTIN   | 1          |
| BLAKE    | HR         |
| BLAKE    | OPERATIONS |
| BLAKE    | SALES      |
| BLAKE    | RESEARCH   |
| BLAKE    | Accounting |
| BLAKE    | 2          |
| BLAKE    | 1          |
| CLARK    | HR         |
| CLARK    | OPERATIONS |
| CLARK    | SALES      |
| CLARK    | RESEARCH   |
| CLARK    | Accounting |
| CLARK    | 2          |
| CLARK    | 1          |
| SCOTT    | HR         |
| SCOTT    | OPERATIONS |
| SCOTT    | SALES      |
| SCOTT    | RESEARCH   |
| SCOTT    | Accounting |
| SCOTT    | 2          |
| SCOTT    | 1          |
| KING     | HR         |
| KING     | OPERATIONS |
| KING     | SALES      |
| KING     | RESEARCH   |
| KING     | Accounting |
| KING     | 2          |
| KING     | 1          |
| FRED     | HR         |
| FRED     | OPERATIONS |
| FRED     | SALES      |
| FRED     | RESEARCH   |
| FRED     | Accounting |
| FRED     | 2          |
| FRED     | 1          |
| TURNER   | HR         |
| TURNER   | OPERATIONS |
| TURNER   | SALES      |
| TURNER   | RESEARCH   |
| TURNER   | Accounting |
| TURNER   | 2          |
| TURNER   | 1          |
| ADAMS    | HR         |
| ADAMS    | OPERATIONS |
| ADAMS    | SALES      |
| ADAMS    | RESEARCH   |
| ADAMS    | Accounting |
| ADAMS    | 2          |
| ADAMS    | 1          |
| JAMES    | HR         |
| JAMES    | OPERATIONS |
| JAMES    | SALES      |
| JAMES    | RESEARCH   |
| JAMES    | Accounting |
| JAMES    | 2          |
| JAMES    | 1          |
| FORD     | HR         |
| FORD     | OPERATIONS |
| FORD     | SALES      |
| FORD     | RESEARCH   |
| FORD     | Accounting |
| FORD     | 2          |
| FORD     | 1          |
| HOFFMAN  | HR         |
| HOFFMAN  | OPERATIONS |
| HOFFMAN  | SALES      |
| HOFFMAN  | RESEARCH   |
| HOFFMAN  | Accounting |
| HOFFMAN  | 2          |
| HOFFMAN  | 1          |
| GRASS    | HR         |
| GRASS    | OPERATIONS |
| GRASS    | SALES      |
| GRASS    | RESEARCH   |
| GRASS    | Accounting |
| GRASS    | 2          |
| GRASS    | 1          |
| MILLER   | HR         |
| MILLER   | OPERATIONS |
| MILLER   | SALES      |
| MILLER   | RESEARCH   |
| MILLER   | Accounting |
| MILLER   | 2          |
| MILLER   | 1          |
| AARUSH   | HR         |
| AARUSH   | OPERATIONS |
| AARUSH   | SALES      |
| AARUSH   | RESEARCH   |
| AARUSH   | Accounting |
| AARUSH   | 2          |
| AARUSH   | 1          |
| ALEX     | HR         |
| ALEX     | OPERATIONS |
| ALEX     | SALES      |
| ALEX     | RESEARCH   |
| ALEX     | Accounting |
| ALEX     | 2          |
| ALEX     | 1          |
| NATASHA  | HR         |
| NATASHA  | OPERATIONS |
| NATASHA  | SALES      |
| NATASHA  | RESEARCH   |
| NATASHA  | Accounting |
| NATASHA  | 2          |
| NATASHA  | 1          |
| SANGITA  | HR         |
| SANGITA  | OPERATIONS |
| SANGITA  | SALES      |
| SANGITA  | RESEARCH   |
| SANGITA  | Accounting |
| SANGITA  | 2          |
| SANGITA  | 1          |
| SUPRIYA  | HR         |
| SUPRIYA  | OPERATIONS |
| SUPRIYA  | SALES      |
| SUPRIYA  | RESEARCH   |
| SUPRIYA  | Accounting |
| SUPRIYA  | 2          |
| SUPRIYA  | 1          |
+----------+------------+
196 rows in set (0.00 sec)

mysql> select ename,emp.deptno, dept.deptno, dname from emp, dept;
+----------+--------+--------+------------+
| ename    | deptno | deptno | dname      |
+----------+--------+--------+------------+
| GITA     |     30 |     50 | HR         |
| GITA     |     30 |     40 | OPERATIONS |
| GITA     |     30 |     30 | SALES      |
| GITA     |     30 |     20 | RESEARCH   |
| GITA     |     30 |     10 | Accounting |
| GITA     |     30 |      2 | 2          |
| GITA     |     30 |      1 | 1          |
| VRUSHALI |     50 |     50 | HR         |
| VRUSHALI |     50 |     40 | OPERATIONS |
| VRUSHALI |     50 |     30 | SALES      |
| VRUSHALI |     50 |     20 | RESEARCH   |
| VRUSHALI |     50 |     10 | Accounting |
| VRUSHALI |     50 |      2 | 2          |
| VRUSHALI |     50 |      1 | 1          |
| SHARMIN  |     20 |     50 | HR         |
| SHARMIN  |     20 |     40 | OPERATIONS |
| SHARMIN  |     20 |     30 | SALES      |
| SHARMIN  |     20 |     20 | RESEARCH   |
| SHARMIN  |     20 |     10 | Accounting |
| SHARMIN  |     20 |      2 | 2          |
| SHARMIN  |     20 |      1 | 1          |
| BANDISH  |     20 |     50 | HR         |
| BANDISH  |     20 |     40 | OPERATIONS |
| BANDISH  |     20 |     30 | SALES      |
| BANDISH  |     20 |     20 | RESEARCH   |
| BANDISH  |     20 |     10 | Accounting |
| BANDISH  |     20 |      2 | 2          |
| BANDISH  |     20 |      1 | 1          |
| SMITH    |     20 |     50 | HR         |
| SMITH    |     20 |     40 | OPERATIONS |
| SMITH    |     20 |     30 | SALES      |
| SMITH    |     20 |     20 | RESEARCH   |
| SMITH    |     20 |     10 | Accounting |
| SMITH    |     20 |      2 | 2          |
| SMITH    |     20 |      1 | 1          |
| AARAV    |     10 |     50 | HR         |
| AARAV    |     10 |     40 | OPERATIONS |
| AARAV    |     10 |     30 | SALES      |
| AARAV    |     10 |     20 | RESEARCH   |
| AARAV    |     10 |     10 | Accounting |
| AARAV    |     10 |      2 | 2          |
| AARAV    |     10 |      1 | 1          |
| THOMAS   |     10 |     50 | HR         |
| THOMAS   |     10 |     40 | OPERATIONS |
| THOMAS   |     10 |     30 | SALES      |
| THOMAS   |     10 |     20 | RESEARCH   |
| THOMAS   |     10 |     10 | Accounting |
| THOMAS   |     10 |      2 | 2          |
| THOMAS   |     10 |      1 | 1          |
| ALLEN    |     30 |     50 | HR         |
| ALLEN    |     30 |     40 | OPERATIONS |
| ALLEN    |     30 |     30 | SALES      |
| ALLEN    |     30 |     20 | RESEARCH   |
| ALLEN    |     30 |     10 | Accounting |
| ALLEN    |     30 |      2 | 2          |
| ALLEN    |     30 |      1 | 1          |
| WARD     |     30 |     50 | HR         |
| WARD     |     30 |     40 | OPERATIONS |
| WARD     |     30 |     30 | SALES      |
| WARD     |     30 |     20 | RESEARCH   |
| WARD     |     30 |     10 | Accounting |
| WARD     |     30 |      2 | 2          |
| WARD     |     30 |      1 | 1          |
| JONES    |     20 |     50 | HR         |
| JONES    |     20 |     40 | OPERATIONS |
| JONES    |     20 |     30 | SALES      |
| JONES    |     20 |     20 | RESEARCH   |
| JONES    |     20 |     10 | Accounting |
| JONES    |     20 |      2 | 2          |
| JONES    |     20 |      1 | 1          |
| MARTIN   |     30 |     50 | HR         |
| MARTIN   |     30 |     40 | OPERATIONS |
| MARTIN   |     30 |     30 | SALES      |
| MARTIN   |     30 |     20 | RESEARCH   |
| MARTIN   |     30 |     10 | Accounting |
| MARTIN   |     30 |      2 | 2          |
| MARTIN   |     30 |      1 | 1          |
| BLAKE    |     30 |     50 | HR         |
| BLAKE    |     30 |     40 | OPERATIONS |
| BLAKE    |     30 |     30 | SALES      |
| BLAKE    |     30 |     20 | RESEARCH   |
| BLAKE    |     30 |     10 | Accounting |
| BLAKE    |     30 |      2 | 2          |
| BLAKE    |     30 |      1 | 1          |
| CLARK    |     10 |     50 | HR         |
| CLARK    |     10 |     40 | OPERATIONS |
| CLARK    |     10 |     30 | SALES      |
| CLARK    |     10 |     20 | RESEARCH   |
| CLARK    |     10 |     10 | Accounting |
| CLARK    |     10 |      2 | 2          |
| CLARK    |     10 |      1 | 1          |
| SCOTT    |     20 |     50 | HR         |
| SCOTT    |     20 |     40 | OPERATIONS |
| SCOTT    |     20 |     30 | SALES      |
| SCOTT    |     20 |     20 | RESEARCH   |
| SCOTT    |     20 |     10 | Accounting |
| SCOTT    |     20 |      2 | 2          |
| SCOTT    |     20 |      1 | 1          |
| KING     |     10 |     50 | HR         |
| KING     |     10 |     40 | OPERATIONS |
| KING     |     10 |     30 | SALES      |
| KING     |     10 |     20 | RESEARCH   |
| KING     |     10 |     10 | Accounting |
| KING     |     10 |      2 | 2          |
| KING     |     10 |      1 | 1          |
| FRED     |     20 |     50 | HR         |
| FRED     |     20 |     40 | OPERATIONS |
| FRED     |     20 |     30 | SALES      |
| FRED     |     20 |     20 | RESEARCH   |
| FRED     |     20 |     10 | Accounting |
| FRED     |     20 |      2 | 2          |
| FRED     |     20 |      1 | 1          |
| TURNER   |     30 |     50 | HR         |
| TURNER   |     30 |     40 | OPERATIONS |
| TURNER   |     30 |     30 | SALES      |
| TURNER   |     30 |     20 | RESEARCH   |
| TURNER   |     30 |     10 | Accounting |
| TURNER   |     30 |      2 | 2          |
| TURNER   |     30 |      1 | 1          |
| ADAMS    |     20 |     50 | HR         |
| ADAMS    |     20 |     40 | OPERATIONS |
| ADAMS    |     20 |     30 | SALES      |
| ADAMS    |     20 |     20 | RESEARCH   |
| ADAMS    |     20 |     10 | Accounting |
| ADAMS    |     20 |      2 | 2          |
| ADAMS    |     20 |      1 | 1          |
| JAMES    |     30 |     50 | HR         |
| JAMES    |     30 |     40 | OPERATIONS |
| JAMES    |     30 |     30 | SALES      |
| JAMES    |     30 |     20 | RESEARCH   |
| JAMES    |     30 |     10 | Accounting |
| JAMES    |     30 |      2 | 2          |
| JAMES    |     30 |      1 | 1          |
| FORD     |     20 |     50 | HR         |
| FORD     |     20 |     40 | OPERATIONS |
| FORD     |     20 |     30 | SALES      |
| FORD     |     20 |     20 | RESEARCH   |
| FORD     |     20 |     10 | Accounting |
| FORD     |     20 |      2 | 2          |
| FORD     |     20 |      1 | 1          |
| HOFFMAN  |     30 |     50 | HR         |
| HOFFMAN  |     30 |     40 | OPERATIONS |
| HOFFMAN  |     30 |     30 | SALES      |
| HOFFMAN  |     30 |     20 | RESEARCH   |
| HOFFMAN  |     30 |     10 | Accounting |
| HOFFMAN  |     30 |      2 | 2          |
| HOFFMAN  |     30 |      1 | 1          |
| GRASS    |     30 |     50 | HR         |
| GRASS    |     30 |     40 | OPERATIONS |
| GRASS    |     30 |     30 | SALES      |
| GRASS    |     30 |     20 | RESEARCH   |
| GRASS    |     30 |     10 | Accounting |
| GRASS    |     30 |      2 | 2          |
| GRASS    |     30 |      1 | 1          |
| MILLER   |     10 |     50 | HR         |
| MILLER   |     10 |     40 | OPERATIONS |
| MILLER   |     10 |     30 | SALES      |
| MILLER   |     10 |     20 | RESEARCH   |
| MILLER   |     10 |     10 | Accounting |
| MILLER   |     10 |      2 | 2          |
| MILLER   |     10 |      1 | 1          |
| AARUSH   |     30 |     50 | HR         |
| AARUSH   |     30 |     40 | OPERATIONS |
| AARUSH   |     30 |     30 | SALES      |
| AARUSH   |     30 |     20 | RESEARCH   |
| AARUSH   |     30 |     10 | Accounting |
| AARUSH   |     30 |      2 | 2          |
| AARUSH   |     30 |      1 | 1          |
| ALEX     |     30 |     50 | HR         |
| ALEX     |     30 |     40 | OPERATIONS |
| ALEX     |     30 |     30 | SALES      |
| ALEX     |     30 |     20 | RESEARCH   |
| ALEX     |     30 |     10 | Accounting |
| ALEX     |     30 |      2 | 2          |
| ALEX     |     30 |      1 | 1          |
| NATASHA  |     30 |     50 | HR         |
| NATASHA  |     30 |     40 | OPERATIONS |
| NATASHA  |     30 |     30 | SALES      |
| NATASHA  |     30 |     20 | RESEARCH   |
| NATASHA  |     30 |     10 | Accounting |
| NATASHA  |     30 |      2 | 2          |
| NATASHA  |     30 |      1 | 1          |
| SANGITA  |     50 |     50 | HR         |
| SANGITA  |     50 |     40 | OPERATIONS |
| SANGITA  |     50 |     30 | SALES      |
| SANGITA  |     50 |     20 | RESEARCH   |
| SANGITA  |     50 |     10 | Accounting |
| SANGITA  |     50 |      2 | 2          |
| SANGITA  |     50 |      1 | 1          |
| SUPRIYA  |     50 |     50 | HR         |
| SUPRIYA  |     50 |     40 | OPERATIONS |
| SUPRIYA  |     50 |     30 | SALES      |
| SUPRIYA  |     50 |     20 | RESEARCH   |
| SUPRIYA  |     50 |     10 | Accounting |
| SUPRIYA  |     50 |      2 | 2          |
| SUPRIYA  |     50 |      1 | 1          |
+----------+--------+--------+------------+
196 rows in set (0.00 sec)

mysql> select * from menucard;
+------+------------------------------+------+
| ID   | NAME                         | RATE |
+------+------------------------------+------+
|   14 | Onion Hamburger              |  115 |
|    6 | Extra Long Cheeseburger      |  100 |
|    2 | Double Stacker               |  125 |
|    8 | Double Cheeseburger          |  100 |
|   13 | Cheese Hamburger             |  125 |
|    4 | Hamburger                    |   85 |
|   11 | Classic Grilled Dog          |   95 |
|    1 | Chili Cheese Grilled Dog     |  115 |
|    7 | Flame Grilled Chicken Burger |  135 |
|    3 | Original Chicken Sandwich    |   55 |
|    9 | McALLO TIKKI                 |   45 |
|   12 | Veg Maharaja Mac             |   75 |
|    5 | Big Spicy Chicken Wrap       |  100 |
|   15 | Cheese Onion Hamburger       |  145 |
|   10 | McVeggie Schezwan            |   85 |
+------+------------------------------+------+
15 rows in set (0.03 sec)

mysql> select * from softdrink;
+------+----------------------+------+
| ID   | NAME                 | RATE |
+------+----------------------+------+
|    1 | Coca-Cola            |   45 |
|    2 | Mello Yello          |   75 |
|    3 | Diet Coke            |   60 |
|    4 | Frozen Fanta Cherry  |   65 |
|    5 | Iced Tea             |   35 |
+------+----------------------+------+
5 rows in set (0.04 sec)

mysql> select * from menucard, softdrink;
+------+------------------------------+------+------+----------------------+------+
| ID   | NAME                         | RATE | ID   | NAME                 | RATE |
+------+------------------------------+------+------+----------------------+------+
|   14 | Onion Hamburger              |  115 |    5 | Iced Tea             |   35 |
|   14 | Onion Hamburger              |  115 |    4 | Frozen Fanta Cherry  |   65 |
|   14 | Onion Hamburger              |  115 |    3 | Diet Coke            |   60 |
|   14 | Onion Hamburger              |  115 |    2 | Mello Yello          |   75 |
|   14 | Onion Hamburger              |  115 |    1 | Coca-Cola            |   45 |
|    6 | Extra Long Cheeseburger      |  100 |    5 | Iced Tea             |   35 |
|    6 | Extra Long Cheeseburger      |  100 |    4 | Frozen Fanta Cherry  |   65 |
|    6 | Extra Long Cheeseburger      |  100 |    3 | Diet Coke            |   60 |
|    6 | Extra Long Cheeseburger      |  100 |    2 | Mello Yello          |   75 |
|    6 | Extra Long Cheeseburger      |  100 |    1 | Coca-Cola            |   45 |
|    2 | Double Stacker               |  125 |    5 | Iced Tea             |   35 |
|    2 | Double Stacker               |  125 |    4 | Frozen Fanta Cherry  |   65 |
|    2 | Double Stacker               |  125 |    3 | Diet Coke            |   60 |
|    2 | Double Stacker               |  125 |    2 | Mello Yello          |   75 |
|    2 | Double Stacker               |  125 |    1 | Coca-Cola            |   45 |
|    8 | Double Cheeseburger          |  100 |    5 | Iced Tea             |   35 |
|    8 | Double Cheeseburger          |  100 |    4 | Frozen Fanta Cherry  |   65 |
|    8 | Double Cheeseburger          |  100 |    3 | Diet Coke            |   60 |
|    8 | Double Cheeseburger          |  100 |    2 | Mello Yello          |   75 |
|    8 | Double Cheeseburger          |  100 |    1 | Coca-Cola            |   45 |
|   13 | Cheese Hamburger             |  125 |    5 | Iced Tea             |   35 |
|   13 | Cheese Hamburger             |  125 |    4 | Frozen Fanta Cherry  |   65 |
|   13 | Cheese Hamburger             |  125 |    3 | Diet Coke            |   60 |
|   13 | Cheese Hamburger             |  125 |    2 | Mello Yello          |   75 |
|   13 | Cheese Hamburger             |  125 |    1 | Coca-Cola            |   45 |
|    4 | Hamburger                    |   85 |    5 | Iced Tea             |   35 |
|    4 | Hamburger                    |   85 |    4 | Frozen Fanta Cherry  |   65 |
|    4 | Hamburger                    |   85 |    3 | Diet Coke            |   60 |
|    4 | Hamburger                    |   85 |    2 | Mello Yello          |   75 |
|    4 | Hamburger                    |   85 |    1 | Coca-Cola            |   45 |
|   11 | Classic Grilled Dog          |   95 |    5 | Iced Tea             |   35 |
|   11 | Classic Grilled Dog          |   95 |    4 | Frozen Fanta Cherry  |   65 |
|   11 | Classic Grilled Dog          |   95 |    3 | Diet Coke            |   60 |
|   11 | Classic Grilled Dog          |   95 |    2 | Mello Yello          |   75 |
|   11 | Classic Grilled Dog          |   95 |    1 | Coca-Cola            |   45 |
|    1 | Chili Cheese Grilled Dog     |  115 |    5 | Iced Tea             |   35 |
|    1 | Chili Cheese Grilled Dog     |  115 |    4 | Frozen Fanta Cherry  |   65 |
|    1 | Chili Cheese Grilled Dog     |  115 |    3 | Diet Coke            |   60 |
|    1 | Chili Cheese Grilled Dog     |  115 |    2 | Mello Yello          |   75 |
|    1 | Chili Cheese Grilled Dog     |  115 |    1 | Coca-Cola            |   45 |
|    7 | Flame Grilled Chicken Burger |  135 |    5 | Iced Tea             |   35 |
|    7 | Flame Grilled Chicken Burger |  135 |    4 | Frozen Fanta Cherry  |   65 |
|    7 | Flame Grilled Chicken Burger |  135 |    3 | Diet Coke            |   60 |
|    7 | Flame Grilled Chicken Burger |  135 |    2 | Mello Yello          |   75 |
|    7 | Flame Grilled Chicken Burger |  135 |    1 | Coca-Cola            |   45 |
|    3 | Original Chicken Sandwich    |   55 |    5 | Iced Tea             |   35 |
|    3 | Original Chicken Sandwich    |   55 |    4 | Frozen Fanta Cherry  |   65 |
|    3 | Original Chicken Sandwich    |   55 |    3 | Diet Coke            |   60 |
|    3 | Original Chicken Sandwich    |   55 |    2 | Mello Yello          |   75 |
|    3 | Original Chicken Sandwich    |   55 |    1 | Coca-Cola            |   45 |
|    9 | McALLO TIKKI                 |   45 |    5 | Iced Tea             |   35 |
|    9 | McALLO TIKKI                 |   45 |    4 | Frozen Fanta Cherry  |   65 |
|    9 | McALLO TIKKI                 |   45 |    3 | Diet Coke            |   60 |
|    9 | McALLO TIKKI                 |   45 |    2 | Mello Yello          |   75 |
|    9 | McALLO TIKKI                 |   45 |    1 | Coca-Cola            |   45 |
|   12 | Veg Maharaja Mac             |   75 |    5 | Iced Tea             |   35 |
|   12 | Veg Maharaja Mac             |   75 |    4 | Frozen Fanta Cherry  |   65 |
|   12 | Veg Maharaja Mac             |   75 |    3 | Diet Coke            |   60 |
|   12 | Veg Maharaja Mac             |   75 |    2 | Mello Yello          |   75 |
|   12 | Veg Maharaja Mac             |   75 |    1 | Coca-Cola            |   45 |
|    5 | Big Spicy Chicken Wrap       |  100 |    5 | Iced Tea             |   35 |
|    5 | Big Spicy Chicken Wrap       |  100 |    4 | Frozen Fanta Cherry  |   65 |
|    5 | Big Spicy Chicken Wrap       |  100 |    3 | Diet Coke            |   60 |
|    5 | Big Spicy Chicken Wrap       |  100 |    2 | Mello Yello          |   75 |
|    5 | Big Spicy Chicken Wrap       |  100 |    1 | Coca-Cola            |   45 |
|   15 | Cheese Onion Hamburger       |  145 |    5 | Iced Tea             |   35 |
|   15 | Cheese Onion Hamburger       |  145 |    4 | Frozen Fanta Cherry  |   65 |
|   15 | Cheese Onion Hamburger       |  145 |    3 | Diet Coke            |   60 |
|   15 | Cheese Onion Hamburger       |  145 |    2 | Mello Yello          |   75 |
|   15 | Cheese Onion Hamburger       |  145 |    1 | Coca-Cola            |   45 |
|   10 | McVeggie Schezwan            |   85 |    5 | Iced Tea             |   35 |
|   10 | McVeggie Schezwan            |   85 |    4 | Frozen Fanta Cherry  |   65 |
|   10 | McVeggie Schezwan            |   85 |    3 | Diet Coke            |   60 |
|   10 | McVeggie Schezwan            |   85 |    2 | Mello Yello          |   75 |
|   10 | McVeggie Schezwan            |   85 |    1 | Coca-Cola            |   45 |
+------+------------------------------+------+------+----------------------+------+
75 rows in set (0.00 sec)

mysql> select m.* from menucard m, softdrink s;
+------+------------------------------+------+
| ID   | NAME                         | RATE |
+------+------------------------------+------+
|   14 | Onion Hamburger              |  115 |
|   14 | Onion Hamburger              |  115 |
|   14 | Onion Hamburger              |  115 |
|   14 | Onion Hamburger              |  115 |
|   14 | Onion Hamburger              |  115 |
|    6 | Extra Long Cheeseburger      |  100 |
|    6 | Extra Long Cheeseburger      |  100 |
|    6 | Extra Long Cheeseburger      |  100 |
|    6 | Extra Long Cheeseburger      |  100 |
|    6 | Extra Long Cheeseburger      |  100 |
|    2 | Double Stacker               |  125 |
|    2 | Double Stacker               |  125 |
|    2 | Double Stacker               |  125 |
|    2 | Double Stacker               |  125 |
|    2 | Double Stacker               |  125 |
|    8 | Double Cheeseburger          |  100 |
|    8 | Double Cheeseburger          |  100 |
|    8 | Double Cheeseburger          |  100 |
|    8 | Double Cheeseburger          |  100 |
|    8 | Double Cheeseburger          |  100 |
|   13 | Cheese Hamburger             |  125 |
|   13 | Cheese Hamburger             |  125 |
|   13 | Cheese Hamburger             |  125 |
|   13 | Cheese Hamburger             |  125 |
|   13 | Cheese Hamburger             |  125 |
|    4 | Hamburger                    |   85 |
|    4 | Hamburger                    |   85 |
|    4 | Hamburger                    |   85 |
|    4 | Hamburger                    |   85 |
|    4 | Hamburger                    |   85 |
|   11 | Classic Grilled Dog          |   95 |
|   11 | Classic Grilled Dog          |   95 |
|   11 | Classic Grilled Dog          |   95 |
|   11 | Classic Grilled Dog          |   95 |
|   11 | Classic Grilled Dog          |   95 |
|    1 | Chili Cheese Grilled Dog     |  115 |
|    1 | Chili Cheese Grilled Dog     |  115 |
|    1 | Chili Cheese Grilled Dog     |  115 |
|    1 | Chili Cheese Grilled Dog     |  115 |
|    1 | Chili Cheese Grilled Dog     |  115 |
|    7 | Flame Grilled Chicken Burger |  135 |
|    7 | Flame Grilled Chicken Burger |  135 |
|    7 | Flame Grilled Chicken Burger |  135 |
|    7 | Flame Grilled Chicken Burger |  135 |
|    7 | Flame Grilled Chicken Burger |  135 |
|    3 | Original Chicken Sandwich    |   55 |
|    3 | Original Chicken Sandwich    |   55 |
|    3 | Original Chicken Sandwich    |   55 |
|    3 | Original Chicken Sandwich    |   55 |
|    3 | Original Chicken Sandwich    |   55 |
|    9 | McALLO TIKKI                 |   45 |
|    9 | McALLO TIKKI                 |   45 |
|    9 | McALLO TIKKI                 |   45 |
|    9 | McALLO TIKKI                 |   45 |
|    9 | McALLO TIKKI                 |   45 |
|   12 | Veg Maharaja Mac             |   75 |
|   12 | Veg Maharaja Mac             |   75 |
|   12 | Veg Maharaja Mac             |   75 |
|   12 | Veg Maharaja Mac             |   75 |
|   12 | Veg Maharaja Mac             |   75 |
|    5 | Big Spicy Chicken Wrap       |  100 |
|    5 | Big Spicy Chicken Wrap       |  100 |
|    5 | Big Spicy Chicken Wrap       |  100 |
|    5 | Big Spicy Chicken Wrap       |  100 |
|    5 | Big Spicy Chicken Wrap       |  100 |
|   15 | Cheese Onion Hamburger       |  145 |
|   15 | Cheese Onion Hamburger       |  145 |
|   15 | Cheese Onion Hamburger       |  145 |
|   15 | Cheese Onion Hamburger       |  145 |
|   15 | Cheese Onion Hamburger       |  145 |
|   10 | McVeggie Schezwan            |   85 |
|   10 | McVeggie Schezwan            |   85 |
|   10 | McVeggie Schezwan            |   85 |
|   10 | McVeggie Schezwan            |   85 |
|   10 | McVeggie Schezwan            |   85 |
+------+------------------------------+------+
75 rows in set (0.00 sec)

mysql> select m.*, s.* from menucard m, softdrink s;
+------+------------------------------+------+------+----------------------+------+
| ID   | NAME                         | RATE | ID   | NAME                 | RATE |
+------+------------------------------+------+------+----------------------+------+
|   14 | Onion Hamburger              |  115 |    5 | Iced Tea             |   35 |
|   14 | Onion Hamburger              |  115 |    4 | Frozen Fanta Cherry  |   65 |
|   14 | Onion Hamburger              |  115 |    3 | Diet Coke            |   60 |
|   14 | Onion Hamburger              |  115 |    2 | Mello Yello          |   75 |
|   14 | Onion Hamburger              |  115 |    1 | Coca-Cola            |   45 |
|    6 | Extra Long Cheeseburger      |  100 |    5 | Iced Tea             |   35 |
|    6 | Extra Long Cheeseburger      |  100 |    4 | Frozen Fanta Cherry  |   65 |
|    6 | Extra Long Cheeseburger      |  100 |    3 | Diet Coke            |   60 |
|    6 | Extra Long Cheeseburger      |  100 |    2 | Mello Yello          |   75 |
|    6 | Extra Long Cheeseburger      |  100 |    1 | Coca-Cola            |   45 |
|    2 | Double Stacker               |  125 |    5 | Iced Tea             |   35 |
|    2 | Double Stacker               |  125 |    4 | Frozen Fanta Cherry  |   65 |
|    2 | Double Stacker               |  125 |    3 | Diet Coke            |   60 |
|    2 | Double Stacker               |  125 |    2 | Mello Yello          |   75 |
|    2 | Double Stacker               |  125 |    1 | Coca-Cola            |   45 |
|    8 | Double Cheeseburger          |  100 |    5 | Iced Tea             |   35 |
|    8 | Double Cheeseburger          |  100 |    4 | Frozen Fanta Cherry  |   65 |
|    8 | Double Cheeseburger          |  100 |    3 | Diet Coke            |   60 |
|    8 | Double Cheeseburger          |  100 |    2 | Mello Yello          |   75 |
|    8 | Double Cheeseburger          |  100 |    1 | Coca-Cola            |   45 |
|   13 | Cheese Hamburger             |  125 |    5 | Iced Tea             |   35 |
|   13 | Cheese Hamburger             |  125 |    4 | Frozen Fanta Cherry  |   65 |
|   13 | Cheese Hamburger             |  125 |    3 | Diet Coke            |   60 |
|   13 | Cheese Hamburger             |  125 |    2 | Mello Yello          |   75 |
|   13 | Cheese Hamburger             |  125 |    1 | Coca-Cola            |   45 |
|    4 | Hamburger                    |   85 |    5 | Iced Tea             |   35 |
|    4 | Hamburger                    |   85 |    4 | Frozen Fanta Cherry  |   65 |
|    4 | Hamburger                    |   85 |    3 | Diet Coke            |   60 |
|    4 | Hamburger                    |   85 |    2 | Mello Yello          |   75 |
|    4 | Hamburger                    |   85 |    1 | Coca-Cola            |   45 |
|   11 | Classic Grilled Dog          |   95 |    5 | Iced Tea             |   35 |
|   11 | Classic Grilled Dog          |   95 |    4 | Frozen Fanta Cherry  |   65 |
|   11 | Classic Grilled Dog          |   95 |    3 | Diet Coke            |   60 |
|   11 | Classic Grilled Dog          |   95 |    2 | Mello Yello          |   75 |
|   11 | Classic Grilled Dog          |   95 |    1 | Coca-Cola            |   45 |
|    1 | Chili Cheese Grilled Dog     |  115 |    5 | Iced Tea             |   35 |
|    1 | Chili Cheese Grilled Dog     |  115 |    4 | Frozen Fanta Cherry  |   65 |
|    1 | Chili Cheese Grilled Dog     |  115 |    3 | Diet Coke            |   60 |
|    1 | Chili Cheese Grilled Dog     |  115 |    2 | Mello Yello          |   75 |
|    1 | Chili Cheese Grilled Dog     |  115 |    1 | Coca-Cola            |   45 |
|    7 | Flame Grilled Chicken Burger |  135 |    5 | Iced Tea             |   35 |
|    7 | Flame Grilled Chicken Burger |  135 |    4 | Frozen Fanta Cherry  |   65 |
|    7 | Flame Grilled Chicken Burger |  135 |    3 | Diet Coke            |   60 |
|    7 | Flame Grilled Chicken Burger |  135 |    2 | Mello Yello          |   75 |
|    7 | Flame Grilled Chicken Burger |  135 |    1 | Coca-Cola            |   45 |
|    3 | Original Chicken Sandwich    |   55 |    5 | Iced Tea             |   35 |
|    3 | Original Chicken Sandwich    |   55 |    4 | Frozen Fanta Cherry  |   65 |
|    3 | Original Chicken Sandwich    |   55 |    3 | Diet Coke            |   60 |
|    3 | Original Chicken Sandwich    |   55 |    2 | Mello Yello          |   75 |
|    3 | Original Chicken Sandwich    |   55 |    1 | Coca-Cola            |   45 |
|    9 | McALLO TIKKI                 |   45 |    5 | Iced Tea             |   35 |
|    9 | McALLO TIKKI                 |   45 |    4 | Frozen Fanta Cherry  |   65 |
|    9 | McALLO TIKKI                 |   45 |    3 | Diet Coke            |   60 |
|    9 | McALLO TIKKI                 |   45 |    2 | Mello Yello          |   75 |
|    9 | McALLO TIKKI                 |   45 |    1 | Coca-Cola            |   45 |
|   12 | Veg Maharaja Mac             |   75 |    5 | Iced Tea             |   35 |
|   12 | Veg Maharaja Mac             |   75 |    4 | Frozen Fanta Cherry  |   65 |
|   12 | Veg Maharaja Mac             |   75 |    3 | Diet Coke            |   60 |
|   12 | Veg Maharaja Mac             |   75 |    2 | Mello Yello          |   75 |
|   12 | Veg Maharaja Mac             |   75 |    1 | Coca-Cola            |   45 |
|    5 | Big Spicy Chicken Wrap       |  100 |    5 | Iced Tea             |   35 |
|    5 | Big Spicy Chicken Wrap       |  100 |    4 | Frozen Fanta Cherry  |   65 |
|    5 | Big Spicy Chicken Wrap       |  100 |    3 | Diet Coke            |   60 |
|    5 | Big Spicy Chicken Wrap       |  100 |    2 | Mello Yello          |   75 |
|    5 | Big Spicy Chicken Wrap       |  100 |    1 | Coca-Cola            |   45 |
|   15 | Cheese Onion Hamburger       |  145 |    5 | Iced Tea             |   35 |
|   15 | Cheese Onion Hamburger       |  145 |    4 | Frozen Fanta Cherry  |   65 |
|   15 | Cheese Onion Hamburger       |  145 |    3 | Diet Coke            |   60 |
|   15 | Cheese Onion Hamburger       |  145 |    2 | Mello Yello          |   75 |
|   15 | Cheese Onion Hamburger       |  145 |    1 | Coca-Cola            |   45 |
|   10 | McVeggie Schezwan            |   85 |    5 | Iced Tea             |   35 |
|   10 | McVeggie Schezwan            |   85 |    4 | Frozen Fanta Cherry  |   65 |
|   10 | McVeggie Schezwan            |   85 |    3 | Diet Coke            |   60 |
|   10 | McVeggie Schezwan            |   85 |    2 | Mello Yello          |   75 |
|   10 | McVeggie Schezwan            |   85 |    1 | Coca-Cola            |   45 |
+------+------------------------------+------+------+----------------------+------+
75 rows in set (0.00 sec)

mysql> select *, m.rate + s.rate  from menucard m, softdrink s;
+------+------------------------------+------+------+----------------------+------+-----------------+
| ID   | NAME                         | RATE | ID   | NAME                 | RATE | m.rate + s.rate |
+------+------------------------------+------+------+----------------------+------+-----------------+
|   14 | Onion Hamburger              |  115 |    5 | Iced Tea             |   35 |             150 |
|   14 | Onion Hamburger              |  115 |    4 | Frozen Fanta Cherry  |   65 |             180 |
|   14 | Onion Hamburger              |  115 |    3 | Diet Coke            |   60 |             175 |
|   14 | Onion Hamburger              |  115 |    2 | Mello Yello          |   75 |             190 |
|   14 | Onion Hamburger              |  115 |    1 | Coca-Cola            |   45 |             160 |
|    6 | Extra Long Cheeseburger      |  100 |    5 | Iced Tea             |   35 |             135 |
|    6 | Extra Long Cheeseburger      |  100 |    4 | Frozen Fanta Cherry  |   65 |             165 |
|    6 | Extra Long Cheeseburger      |  100 |    3 | Diet Coke            |   60 |             160 |
|    6 | Extra Long Cheeseburger      |  100 |    2 | Mello Yello          |   75 |             175 |
|    6 | Extra Long Cheeseburger      |  100 |    1 | Coca-Cola            |   45 |             145 |
|    2 | Double Stacker               |  125 |    5 | Iced Tea             |   35 |             160 |
|    2 | Double Stacker               |  125 |    4 | Frozen Fanta Cherry  |   65 |             190 |
|    2 | Double Stacker               |  125 |    3 | Diet Coke            |   60 |             185 |
|    2 | Double Stacker               |  125 |    2 | Mello Yello          |   75 |             200 |
|    2 | Double Stacker               |  125 |    1 | Coca-Cola            |   45 |             170 |
|    8 | Double Cheeseburger          |  100 |    5 | Iced Tea             |   35 |             135 |
|    8 | Double Cheeseburger          |  100 |    4 | Frozen Fanta Cherry  |   65 |             165 |
|    8 | Double Cheeseburger          |  100 |    3 | Diet Coke            |   60 |             160 |
|    8 | Double Cheeseburger          |  100 |    2 | Mello Yello          |   75 |             175 |
|    8 | Double Cheeseburger          |  100 |    1 | Coca-Cola            |   45 |             145 |
|   13 | Cheese Hamburger             |  125 |    5 | Iced Tea             |   35 |             160 |
|   13 | Cheese Hamburger             |  125 |    4 | Frozen Fanta Cherry  |   65 |             190 |
|   13 | Cheese Hamburger             |  125 |    3 | Diet Coke            |   60 |             185 |
|   13 | Cheese Hamburger             |  125 |    2 | Mello Yello          |   75 |             200 |
|   13 | Cheese Hamburger             |  125 |    1 | Coca-Cola            |   45 |             170 |
|    4 | Hamburger                    |   85 |    5 | Iced Tea             |   35 |             120 |
|    4 | Hamburger                    |   85 |    4 | Frozen Fanta Cherry  |   65 |             150 |
|    4 | Hamburger                    |   85 |    3 | Diet Coke            |   60 |             145 |
|    4 | Hamburger                    |   85 |    2 | Mello Yello          |   75 |             160 |
|    4 | Hamburger                    |   85 |    1 | Coca-Cola            |   45 |             130 |
|   11 | Classic Grilled Dog          |   95 |    5 | Iced Tea             |   35 |             130 |
|   11 | Classic Grilled Dog          |   95 |    4 | Frozen Fanta Cherry  |   65 |             160 |
|   11 | Classic Grilled Dog          |   95 |    3 | Diet Coke            |   60 |             155 |
|   11 | Classic Grilled Dog          |   95 |    2 | Mello Yello          |   75 |             170 |
|   11 | Classic Grilled Dog          |   95 |    1 | Coca-Cola            |   45 |             140 |
|    1 | Chili Cheese Grilled Dog     |  115 |    5 | Iced Tea             |   35 |             150 |
|    1 | Chili Cheese Grilled Dog     |  115 |    4 | Frozen Fanta Cherry  |   65 |             180 |
|    1 | Chili Cheese Grilled Dog     |  115 |    3 | Diet Coke            |   60 |             175 |
|    1 | Chili Cheese Grilled Dog     |  115 |    2 | Mello Yello          |   75 |             190 |
|    1 | Chili Cheese Grilled Dog     |  115 |    1 | Coca-Cola            |   45 |             160 |
|    7 | Flame Grilled Chicken Burger |  135 |    5 | Iced Tea             |   35 |             170 |
|    7 | Flame Grilled Chicken Burger |  135 |    4 | Frozen Fanta Cherry  |   65 |             200 |
|    7 | Flame Grilled Chicken Burger |  135 |    3 | Diet Coke            |   60 |             195 |
|    7 | Flame Grilled Chicken Burger |  135 |    2 | Mello Yello          |   75 |             210 |
|    7 | Flame Grilled Chicken Burger |  135 |    1 | Coca-Cola            |   45 |             180 |
|    3 | Original Chicken Sandwich    |   55 |    5 | Iced Tea             |   35 |              90 |
|    3 | Original Chicken Sandwich    |   55 |    4 | Frozen Fanta Cherry  |   65 |             120 |
|    3 | Original Chicken Sandwich    |   55 |    3 | Diet Coke            |   60 |             115 |
|    3 | Original Chicken Sandwich    |   55 |    2 | Mello Yello          |   75 |             130 |
|    3 | Original Chicken Sandwich    |   55 |    1 | Coca-Cola            |   45 |             100 |
|    9 | McALLO TIKKI                 |   45 |    5 | Iced Tea             |   35 |              80 |
|    9 | McALLO TIKKI                 |   45 |    4 | Frozen Fanta Cherry  |   65 |             110 |
|    9 | McALLO TIKKI                 |   45 |    3 | Diet Coke            |   60 |             105 |
|    9 | McALLO TIKKI                 |   45 |    2 | Mello Yello          |   75 |             120 |
|    9 | McALLO TIKKI                 |   45 |    1 | Coca-Cola            |   45 |              90 |
|   12 | Veg Maharaja Mac             |   75 |    5 | Iced Tea             |   35 |             110 |
|   12 | Veg Maharaja Mac             |   75 |    4 | Frozen Fanta Cherry  |   65 |             140 |
|   12 | Veg Maharaja Mac             |   75 |    3 | Diet Coke            |   60 |             135 |
|   12 | Veg Maharaja Mac             |   75 |    2 | Mello Yello          |   75 |             150 |
|   12 | Veg Maharaja Mac             |   75 |    1 | Coca-Cola            |   45 |             120 |
|    5 | Big Spicy Chicken Wrap       |  100 |    5 | Iced Tea             |   35 |             135 |
|    5 | Big Spicy Chicken Wrap       |  100 |    4 | Frozen Fanta Cherry  |   65 |             165 |
|    5 | Big Spicy Chicken Wrap       |  100 |    3 | Diet Coke            |   60 |             160 |
|    5 | Big Spicy Chicken Wrap       |  100 |    2 | Mello Yello          |   75 |             175 |
|    5 | Big Spicy Chicken Wrap       |  100 |    1 | Coca-Cola            |   45 |             145 |
|   15 | Cheese Onion Hamburger       |  145 |    5 | Iced Tea             |   35 |             180 |
|   15 | Cheese Onion Hamburger       |  145 |    4 | Frozen Fanta Cherry  |   65 |             210 |
|   15 | Cheese Onion Hamburger       |  145 |    3 | Diet Coke            |   60 |             205 |
|   15 | Cheese Onion Hamburger       |  145 |    2 | Mello Yello          |   75 |             220 |
|   15 | Cheese Onion Hamburger       |  145 |    1 | Coca-Cola            |   45 |             190 |
|   10 | McVeggie Schezwan            |   85 |    5 | Iced Tea             |   35 |             120 |
|   10 | McVeggie Schezwan            |   85 |    4 | Frozen Fanta Cherry  |   65 |             150 |
|   10 | McVeggie Schezwan            |   85 |    3 | Diet Coke            |   60 |             145 |
|   10 | McVeggie Schezwan            |   85 |    2 | Mello Yello          |   75 |             160 |
|   10 | McVeggie Schezwan            |   85 |    1 | Coca-Cola            |   45 |             130 |
+------+------------------------------+------+------+----------------------+------+-----------------+
75 rows in set (0.00 sec)

mysql> select m.rate + s.rate R1, m.*, s.*  from menucard m, softdrink s;
+------+------+------------------------------+------+------+----------------------+------+
| R1   | ID   | NAME                         | RATE | ID   | NAME                 | RATE |
+------+------+------------------------------+------+------+----------------------+------+
|  150 |   14 | Onion Hamburger              |  115 |    5 | Iced Tea             |   35 |
|  180 |   14 | Onion Hamburger              |  115 |    4 | Frozen Fanta Cherry  |   65 |
|  175 |   14 | Onion Hamburger              |  115 |    3 | Diet Coke            |   60 |
|  190 |   14 | Onion Hamburger              |  115 |    2 | Mello Yello          |   75 |
|  160 |   14 | Onion Hamburger              |  115 |    1 | Coca-Cola            |   45 |
|  135 |    6 | Extra Long Cheeseburger      |  100 |    5 | Iced Tea             |   35 |
|  165 |    6 | Extra Long Cheeseburger      |  100 |    4 | Frozen Fanta Cherry  |   65 |
|  160 |    6 | Extra Long Cheeseburger      |  100 |    3 | Diet Coke            |   60 |
|  175 |    6 | Extra Long Cheeseburger      |  100 |    2 | Mello Yello          |   75 |
|  145 |    6 | Extra Long Cheeseburger      |  100 |    1 | Coca-Cola            |   45 |
|  160 |    2 | Double Stacker               |  125 |    5 | Iced Tea             |   35 |
|  190 |    2 | Double Stacker               |  125 |    4 | Frozen Fanta Cherry  |   65 |
|  185 |    2 | Double Stacker               |  125 |    3 | Diet Coke            |   60 |
|  200 |    2 | Double Stacker               |  125 |    2 | Mello Yello          |   75 |
|  170 |    2 | Double Stacker               |  125 |    1 | Coca-Cola            |   45 |
|  135 |    8 | Double Cheeseburger          |  100 |    5 | Iced Tea             |   35 |
|  165 |    8 | Double Cheeseburger          |  100 |    4 | Frozen Fanta Cherry  |   65 |
|  160 |    8 | Double Cheeseburger          |  100 |    3 | Diet Coke            |   60 |
|  175 |    8 | Double Cheeseburger          |  100 |    2 | Mello Yello          |   75 |
|  145 |    8 | Double Cheeseburger          |  100 |    1 | Coca-Cola            |   45 |
|  160 |   13 | Cheese Hamburger             |  125 |    5 | Iced Tea             |   35 |
|  190 |   13 | Cheese Hamburger             |  125 |    4 | Frozen Fanta Cherry  |   65 |
|  185 |   13 | Cheese Hamburger             |  125 |    3 | Diet Coke            |   60 |
|  200 |   13 | Cheese Hamburger             |  125 |    2 | Mello Yello          |   75 |
|  170 |   13 | Cheese Hamburger             |  125 |    1 | Coca-Cola            |   45 |
|  120 |    4 | Hamburger                    |   85 |    5 | Iced Tea             |   35 |
|  150 |    4 | Hamburger                    |   85 |    4 | Frozen Fanta Cherry  |   65 |
|  145 |    4 | Hamburger                    |   85 |    3 | Diet Coke            |   60 |
|  160 |    4 | Hamburger                    |   85 |    2 | Mello Yello          |   75 |
|  130 |    4 | Hamburger                    |   85 |    1 | Coca-Cola            |   45 |
|  130 |   11 | Classic Grilled Dog          |   95 |    5 | Iced Tea             |   35 |
|  160 |   11 | Classic Grilled Dog          |   95 |    4 | Frozen Fanta Cherry  |   65 |
|  155 |   11 | Classic Grilled Dog          |   95 |    3 | Diet Coke            |   60 |
|  170 |   11 | Classic Grilled Dog          |   95 |    2 | Mello Yello          |   75 |
|  140 |   11 | Classic Grilled Dog          |   95 |    1 | Coca-Cola            |   45 |
|  150 |    1 | Chili Cheese Grilled Dog     |  115 |    5 | Iced Tea             |   35 |
|  180 |    1 | Chili Cheese Grilled Dog     |  115 |    4 | Frozen Fanta Cherry  |   65 |
|  175 |    1 | Chili Cheese Grilled Dog     |  115 |    3 | Diet Coke            |   60 |
|  190 |    1 | Chili Cheese Grilled Dog     |  115 |    2 | Mello Yello          |   75 |
|  160 |    1 | Chili Cheese Grilled Dog     |  115 |    1 | Coca-Cola            |   45 |
|  170 |    7 | Flame Grilled Chicken Burger |  135 |    5 | Iced Tea             |   35 |
|  200 |    7 | Flame Grilled Chicken Burger |  135 |    4 | Frozen Fanta Cherry  |   65 |
|  195 |    7 | Flame Grilled Chicken Burger |  135 |    3 | Diet Coke            |   60 |
|  210 |    7 | Flame Grilled Chicken Burger |  135 |    2 | Mello Yello          |   75 |
|  180 |    7 | Flame Grilled Chicken Burger |  135 |    1 | Coca-Cola            |   45 |
|   90 |    3 | Original Chicken Sandwich    |   55 |    5 | Iced Tea             |   35 |
|  120 |    3 | Original Chicken Sandwich    |   55 |    4 | Frozen Fanta Cherry  |   65 |
|  115 |    3 | Original Chicken Sandwich    |   55 |    3 | Diet Coke            |   60 |
|  130 |    3 | Original Chicken Sandwich    |   55 |    2 | Mello Yello          |   75 |
|  100 |    3 | Original Chicken Sandwich    |   55 |    1 | Coca-Cola            |   45 |
|   80 |    9 | McALLO TIKKI                 |   45 |    5 | Iced Tea             |   35 |
|  110 |    9 | McALLO TIKKI                 |   45 |    4 | Frozen Fanta Cherry  |   65 |
|  105 |    9 | McALLO TIKKI                 |   45 |    3 | Diet Coke            |   60 |
|  120 |    9 | McALLO TIKKI                 |   45 |    2 | Mello Yello          |   75 |
|   90 |    9 | McALLO TIKKI                 |   45 |    1 | Coca-Cola            |   45 |
|  110 |   12 | Veg Maharaja Mac             |   75 |    5 | Iced Tea             |   35 |
|  140 |   12 | Veg Maharaja Mac             |   75 |    4 | Frozen Fanta Cherry  |   65 |
|  135 |   12 | Veg Maharaja Mac             |   75 |    3 | Diet Coke            |   60 |
|  150 |   12 | Veg Maharaja Mac             |   75 |    2 | Mello Yello          |   75 |
|  120 |   12 | Veg Maharaja Mac             |   75 |    1 | Coca-Cola            |   45 |
|  135 |    5 | Big Spicy Chicken Wrap       |  100 |    5 | Iced Tea             |   35 |
|  165 |    5 | Big Spicy Chicken Wrap       |  100 |    4 | Frozen Fanta Cherry  |   65 |
|  160 |    5 | Big Spicy Chicken Wrap       |  100 |    3 | Diet Coke            |   60 |
|  175 |    5 | Big Spicy Chicken Wrap       |  100 |    2 | Mello Yello          |   75 |
|  145 |    5 | Big Spicy Chicken Wrap       |  100 |    1 | Coca-Cola            |   45 |
|  180 |   15 | Cheese Onion Hamburger       |  145 |    5 | Iced Tea             |   35 |
|  210 |   15 | Cheese Onion Hamburger       |  145 |    4 | Frozen Fanta Cherry  |   65 |
|  205 |   15 | Cheese Onion Hamburger       |  145 |    3 | Diet Coke            |   60 |
|  220 |   15 | Cheese Onion Hamburger       |  145 |    2 | Mello Yello          |   75 |
|  190 |   15 | Cheese Onion Hamburger       |  145 |    1 | Coca-Cola            |   45 |
|  120 |   10 | McVeggie Schezwan            |   85 |    5 | Iced Tea             |   35 |
|  150 |   10 | McVeggie Schezwan            |   85 |    4 | Frozen Fanta Cherry  |   65 |
|  145 |   10 | McVeggie Schezwan            |   85 |    3 | Diet Coke            |   60 |
|  160 |   10 | McVeggie Schezwan            |   85 |    2 | Mello Yello          |   75 |
|  130 |   10 | McVeggie Schezwan            |   85 |    1 | Coca-Cola            |   45 |
+------+------+------------------------------+------+------+----------------------+------+
75 rows in set (0.00 sec)

mysql> select count(*) from emp;
+----------+
| count(*) |
+----------+
|       28 |
+----------+
1 row in set (0.00 sec)

mysql> select count(*) totalemployees, name , rate from emp, softdrink s group by name, rate;
+----------------+----------------------+------+
| totalemployees | name                 | rate |
+----------------+----------------------+------+
|             28 | Iced Tea             |   35 |
|             28 | Frozen Fanta Cherry  |   65 |
|             28 | Diet Coke            |   60 |
|             28 | Mello Yello          |   75 |
|             28 | Coca-Cola            |   45 |
+----------------+----------------------+------+
5 rows in set (0.00 sec)

mysql> select count(*) totalemployees, name , rate, count(*)*rate r1 from emp, softdrink s group by name, rate;
+----------------+----------------------+------+------+
| totalemployees | name                 | rate | r1   |
+----------------+----------------------+------+------+
|             28 | Iced Tea             |   35 |  980 |
|             28 | Frozen Fanta Cherry  |   65 | 1820 |
|             28 | Diet Coke            |   60 | 1680 |
|             28 | Mello Yello          |   75 | 2100 |
|             28 | Coca-Cola            |   45 | 1260 |
+----------------+----------------------+------+------+
5 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql> select ename, emp.deptno, dept.deptno, dname from emp, dept;
+----------+--------+--------+------------+
| ename    | deptno | deptno | dname      |
+----------+--------+--------+------------+
| GITA     |     30 |     50 | HR         |
| GITA     |     30 |     40 | OPERATIONS |
| GITA     |     30 |     30 | SALES      |
| GITA     |     30 |     20 | RESEARCH   |
| GITA     |     30 |     10 | Accounting |
| GITA     |     30 |      2 | 2          |
| GITA     |     30 |      1 | 1          |
| VRUSHALI |     50 |     50 | HR         |
| VRUSHALI |     50 |     40 | OPERATIONS |
| VRUSHALI |     50 |     30 | SALES      |
| VRUSHALI |     50 |     20 | RESEARCH   |
| VRUSHALI |     50 |     10 | Accounting |
| VRUSHALI |     50 |      2 | 2          |
| VRUSHALI |     50 |      1 | 1          |
| SHARMIN  |     20 |     50 | HR         |
| SHARMIN  |     20 |     40 | OPERATIONS |
| SHARMIN  |     20 |     30 | SALES      |
| SHARMIN  |     20 |     20 | RESEARCH   |
| SHARMIN  |     20 |     10 | Accounting |
| SHARMIN  |     20 |      2 | 2          |
| SHARMIN  |     20 |      1 | 1          |
| BANDISH  |     20 |     50 | HR         |
| BANDISH  |     20 |     40 | OPERATIONS |
| BANDISH  |     20 |     30 | SALES      |
| BANDISH  |     20 |     20 | RESEARCH   |
| BANDISH  |     20 |     10 | Accounting |
| BANDISH  |     20 |      2 | 2          |
| BANDISH  |     20 |      1 | 1          |
| SMITH    |     20 |     50 | HR         |
| SMITH    |     20 |     40 | OPERATIONS |
| SMITH    |     20 |     30 | SALES      |
| SMITH    |     20 |     20 | RESEARCH   |
| SMITH    |     20 |     10 | Accounting |
| SMITH    |     20 |      2 | 2          |
| SMITH    |     20 |      1 | 1          |
| AARAV    |     10 |     50 | HR         |
| AARAV    |     10 |     40 | OPERATIONS |
| AARAV    |     10 |     30 | SALES      |
| AARAV    |     10 |     20 | RESEARCH   |
| AARAV    |     10 |     10 | Accounting |
| AARAV    |     10 |      2 | 2          |
| AARAV    |     10 |      1 | 1          |
| THOMAS   |     10 |     50 | HR         |
| THOMAS   |     10 |     40 | OPERATIONS |
| THOMAS   |     10 |     30 | SALES      |
| THOMAS   |     10 |     20 | RESEARCH   |
| THOMAS   |     10 |     10 | Accounting |
| THOMAS   |     10 |      2 | 2          |
| THOMAS   |     10 |      1 | 1          |
| ALLEN    |     30 |     50 | HR         |
| ALLEN    |     30 |     40 | OPERATIONS |
| ALLEN    |     30 |     30 | SALES      |
| ALLEN    |     30 |     20 | RESEARCH   |
| ALLEN    |     30 |     10 | Accounting |
| ALLEN    |     30 |      2 | 2          |
| ALLEN    |     30 |      1 | 1          |
| WARD     |     30 |     50 | HR         |
| WARD     |     30 |     40 | OPERATIONS |
| WARD     |     30 |     30 | SALES      |
| WARD     |     30 |     20 | RESEARCH   |
| WARD     |     30 |     10 | Accounting |
| WARD     |     30 |      2 | 2          |
| WARD     |     30 |      1 | 1          |
| JONES    |     20 |     50 | HR         |
| JONES    |     20 |     40 | OPERATIONS |
| JONES    |     20 |     30 | SALES      |
| JONES    |     20 |     20 | RESEARCH   |
| JONES    |     20 |     10 | Accounting |
| JONES    |     20 |      2 | 2          |
| JONES    |     20 |      1 | 1          |
| MARTIN   |     30 |     50 | HR         |
| MARTIN   |     30 |     40 | OPERATIONS |
| MARTIN   |     30 |     30 | SALES      |
| MARTIN   |     30 |     20 | RESEARCH   |
| MARTIN   |     30 |     10 | Accounting |
| MARTIN   |     30 |      2 | 2          |
| MARTIN   |     30 |      1 | 1          |
| BLAKE    |     30 |     50 | HR         |
| BLAKE    |     30 |     40 | OPERATIONS |
| BLAKE    |     30 |     30 | SALES      |
| BLAKE    |     30 |     20 | RESEARCH   |
| BLAKE    |     30 |     10 | Accounting |
| BLAKE    |     30 |      2 | 2          |
| BLAKE    |     30 |      1 | 1          |
| CLARK    |     10 |     50 | HR         |
| CLARK    |     10 |     40 | OPERATIONS |
| CLARK    |     10 |     30 | SALES      |
| CLARK    |     10 |     20 | RESEARCH   |
| CLARK    |     10 |     10 | Accounting |
| CLARK    |     10 |      2 | 2          |
| CLARK    |     10 |      1 | 1          |
| SCOTT    |     20 |     50 | HR         |
| SCOTT    |     20 |     40 | OPERATIONS |
| SCOTT    |     20 |     30 | SALES      |
| SCOTT    |     20 |     20 | RESEARCH   |
| SCOTT    |     20 |     10 | Accounting |
| SCOTT    |     20 |      2 | 2          |
| SCOTT    |     20 |      1 | 1          |
| KING     |     10 |     50 | HR         |
| KING     |     10 |     40 | OPERATIONS |
| KING     |     10 |     30 | SALES      |
| KING     |     10 |     20 | RESEARCH   |
| KING     |     10 |     10 | Accounting |
| KING     |     10 |      2 | 2          |
| KING     |     10 |      1 | 1          |
| FRED     |     20 |     50 | HR         |
| FRED     |     20 |     40 | OPERATIONS |
| FRED     |     20 |     30 | SALES      |
| FRED     |     20 |     20 | RESEARCH   |
| FRED     |     20 |     10 | Accounting |
| FRED     |     20 |      2 | 2          |
| FRED     |     20 |      1 | 1          |
| TURNER   |     30 |     50 | HR         |
| TURNER   |     30 |     40 | OPERATIONS |
| TURNER   |     30 |     30 | SALES      |
| TURNER   |     30 |     20 | RESEARCH   |
| TURNER   |     30 |     10 | Accounting |
| TURNER   |     30 |      2 | 2          |
| TURNER   |     30 |      1 | 1          |
| ADAMS    |     20 |     50 | HR         |
| ADAMS    |     20 |     40 | OPERATIONS |
| ADAMS    |     20 |     30 | SALES      |
| ADAMS    |     20 |     20 | RESEARCH   |
| ADAMS    |     20 |     10 | Accounting |
| ADAMS    |     20 |      2 | 2          |
| ADAMS    |     20 |      1 | 1          |
| JAMES    |     30 |     50 | HR         |
| JAMES    |     30 |     40 | OPERATIONS |
| JAMES    |     30 |     30 | SALES      |
| JAMES    |     30 |     20 | RESEARCH   |
| JAMES    |     30 |     10 | Accounting |
| JAMES    |     30 |      2 | 2          |
| JAMES    |     30 |      1 | 1          |
| FORD     |     20 |     50 | HR         |
| FORD     |     20 |     40 | OPERATIONS |
| FORD     |     20 |     30 | SALES      |
| FORD     |     20 |     20 | RESEARCH   |
| FORD     |     20 |     10 | Accounting |
| FORD     |     20 |      2 | 2          |
| FORD     |     20 |      1 | 1          |
| HOFFMAN  |     30 |     50 | HR         |
| HOFFMAN  |     30 |     40 | OPERATIONS |
| HOFFMAN  |     30 |     30 | SALES      |
| HOFFMAN  |     30 |     20 | RESEARCH   |
| HOFFMAN  |     30 |     10 | Accounting |
| HOFFMAN  |     30 |      2 | 2          |
| HOFFMAN  |     30 |      1 | 1          |
| GRASS    |     30 |     50 | HR         |
| GRASS    |     30 |     40 | OPERATIONS |
| GRASS    |     30 |     30 | SALES      |
| GRASS    |     30 |     20 | RESEARCH   |
| GRASS    |     30 |     10 | Accounting |
| GRASS    |     30 |      2 | 2          |
| GRASS    |     30 |      1 | 1          |
| MILLER   |     10 |     50 | HR         |
| MILLER   |     10 |     40 | OPERATIONS |
| MILLER   |     10 |     30 | SALES      |
| MILLER   |     10 |     20 | RESEARCH   |
| MILLER   |     10 |     10 | Accounting |
| MILLER   |     10 |      2 | 2          |
| MILLER   |     10 |      1 | 1          |
| AARUSH   |     30 |     50 | HR         |
| AARUSH   |     30 |     40 | OPERATIONS |
| AARUSH   |     30 |     30 | SALES      |
| AARUSH   |     30 |     20 | RESEARCH   |
| AARUSH   |     30 |     10 | Accounting |
| AARUSH   |     30 |      2 | 2          |
| AARUSH   |     30 |      1 | 1          |
| ALEX     |     30 |     50 | HR         |
| ALEX     |     30 |     40 | OPERATIONS |
| ALEX     |     30 |     30 | SALES      |
| ALEX     |     30 |     20 | RESEARCH   |
| ALEX     |     30 |     10 | Accounting |
| ALEX     |     30 |      2 | 2          |
| ALEX     |     30 |      1 | 1          |
| NATASHA  |     30 |     50 | HR         |
| NATASHA  |     30 |     40 | OPERATIONS |
| NATASHA  |     30 |     30 | SALES      |
| NATASHA  |     30 |     20 | RESEARCH   |
| NATASHA  |     30 |     10 | Accounting |
| NATASHA  |     30 |      2 | 2          |
| NATASHA  |     30 |      1 | 1          |
| SANGITA  |     50 |     50 | HR         |
| SANGITA  |     50 |     40 | OPERATIONS |
| SANGITA  |     50 |     30 | SALES      |
| SANGITA  |     50 |     20 | RESEARCH   |
| SANGITA  |     50 |     10 | Accounting |
| SANGITA  |     50 |      2 | 2          |
| SANGITA  |     50 |      1 | 1          |
| SUPRIYA  |     50 |     50 | HR         |
| SUPRIYA  |     50 |     40 | OPERATIONS |
| SUPRIYA  |     50 |     30 | SALES      |
| SUPRIYA  |     50 |     20 | RESEARCH   |
| SUPRIYA  |     50 |     10 | Accounting |
| SUPRIYA  |     50 |      2 | 2          |
| SUPRIYA  |     50 |      1 | 1          |
+----------+--------+--------+------------+
196 rows in set (0.00 sec)

mysql> select count(*) totalemployees, name , rate, count(*)*rate r1 from emp, softdrink s group by name, rate;
+----------------+----------------------+------+------+
| totalemployees | name                 | rate | r1   |
+----------------+----------------------+------+------+
|             28 | Iced Tea             |   35 |  980 |
|             28 | Frozen Fanta Cherry  |   65 | 1820 |
|             28 | Diet Coke            |   60 | 1680 |
|             28 | Mello Yello          |   75 | 2100 |
|             28 | Coca-Cola            |   45 | 1260 |
+----------------+----------------------+------+------+
5 rows in set (0.00 sec)

mysql> select ename, emp.deptno, dept.deptno, dname from emp, dept where emp.deptno = dept.deptno;
+----------+--------+--------+------------+
| ename    | deptno | deptno | dname      |
+----------+--------+--------+------------+
| AARAV    |     10 |     10 | Accounting |
| THOMAS   |     10 |     10 | Accounting |
| CLARK    |     10 |     10 | Accounting |
| KING     |     10 |     10 | Accounting |
| MILLER   |     10 |     10 | Accounting |
| SHARMIN  |     20 |     20 | RESEARCH   |
| BANDISH  |     20 |     20 | RESEARCH   |
| SMITH    |     20 |     20 | RESEARCH   |
| JONES    |     20 |     20 | RESEARCH   |
| SCOTT    |     20 |     20 | RESEARCH   |
| FRED     |     20 |     20 | RESEARCH   |
| ADAMS    |     20 |     20 | RESEARCH   |
| FORD     |     20 |     20 | RESEARCH   |
| GITA     |     30 |     30 | SALES      |
| ALLEN    |     30 |     30 | SALES      |
| WARD     |     30 |     30 | SALES      |
| MARTIN   |     30 |     30 | SALES      |
| BLAKE    |     30 |     30 | SALES      |
| TURNER   |     30 |     30 | SALES      |
| JAMES    |     30 |     30 | SALES      |
| HOFFMAN  |     30 |     30 | SALES      |
| GRASS    |     30 |     30 | SALES      |
| AARUSH   |     30 |     30 | SALES      |
| ALEX     |     30 |     30 | SALES      |
| NATASHA  |     30 |     30 | SALES      |
| VRUSHALI |     50 |     50 | HR         |
| SANGITA  |     50 |     50 | HR         |
| SUPRIYA  |     50 |     50 | HR         |
+----------+--------+--------+------------+
28 rows in set (0.00 sec)

mysql> select ename, emp.deptno, dept.deptno, dname from emp inner join dept on emp.deptno = dept.deptno;
+----------+--------+--------+------------+
| ename    | deptno | deptno | dname      |
+----------+--------+--------+------------+
| AARAV    |     10 |     10 | Accounting |
| THOMAS   |     10 |     10 | Accounting |
| CLARK    |     10 |     10 | Accounting |
| KING     |     10 |     10 | Accounting |
| MILLER   |     10 |     10 | Accounting |
| SHARMIN  |     20 |     20 | RESEARCH   |
| BANDISH  |     20 |     20 | RESEARCH   |
| SMITH    |     20 |     20 | RESEARCH   |
| JONES    |     20 |     20 | RESEARCH   |
| SCOTT    |     20 |     20 | RESEARCH   |
| FRED     |     20 |     20 | RESEARCH   |
| ADAMS    |     20 |     20 | RESEARCH   |
| FORD     |     20 |     20 | RESEARCH   |
| GITA     |     30 |     30 | SALES      |
| ALLEN    |     30 |     30 | SALES      |
| WARD     |     30 |     30 | SALES      |
| MARTIN   |     30 |     30 | SALES      |
| BLAKE    |     30 |     30 | SALES      |
| TURNER   |     30 |     30 | SALES      |
| JAMES    |     30 |     30 | SALES      |
| HOFFMAN  |     30 |     30 | SALES      |
| GRASS    |     30 |     30 | SALES      |
| AARUSH   |     30 |     30 | SALES      |
| ALEX     |     30 |     30 | SALES      |
| NATASHA  |     30 |     30 | SALES      |
| VRUSHALI |     50 |     50 | HR         |
| SANGITA  |     50 |     50 | HR         |
| SUPRIYA  |     50 |     50 | HR         |
+----------+--------+--------+------------+
28 rows in set (0.00 sec)

mysql> select ename, emp.deptno, dept.deptno, dname from emp inner join dept using(deptno);
+----------+--------+--------+------------+
| ename    | deptno | deptno | dname      |
+----------+--------+--------+------------+
| AARAV    |     10 |     10 | Accounting |
| THOMAS   |     10 |     10 | Accounting |
| CLARK    |     10 |     10 | Accounting |
| KING     |     10 |     10 | Accounting |
| MILLER   |     10 |     10 | Accounting |
| SHARMIN  |     20 |     20 | RESEARCH   |
| BANDISH  |     20 |     20 | RESEARCH   |
| SMITH    |     20 |     20 | RESEARCH   |
| JONES    |     20 |     20 | RESEARCH   |
| SCOTT    |     20 |     20 | RESEARCH   |
| FRED     |     20 |     20 | RESEARCH   |
| ADAMS    |     20 |     20 | RESEARCH   |
| FORD     |     20 |     20 | RESEARCH   |
| GITA     |     30 |     30 | SALES      |
| ALLEN    |     30 |     30 | SALES      |
| WARD     |     30 |     30 | SALES      |
| MARTIN   |     30 |     30 | SALES      |
| BLAKE    |     30 |     30 | SALES      |
| TURNER   |     30 |     30 | SALES      |
| JAMES    |     30 |     30 | SALES      |
| HOFFMAN  |     30 |     30 | SALES      |
| GRASS    |     30 |     30 | SALES      |
| AARUSH   |     30 |     30 | SALES      |
| ALEX     |     30 |     30 | SALES      |
| NATASHA  |     30 |     30 | SALES      |
| VRUSHALI |     50 |     50 | HR         |
| SANGITA  |     50 |     50 | HR         |
| SUPRIYA  |     50 |     50 | HR         |
+----------+--------+--------+------------+
28 rows in set (0.00 sec)

mysql> select * from emp join dept on emp.deptno = dept.deptno;
+-------+----------+--------+---------------------+------+------------+------+------+--------+---------+--------------+------------+------------+----------+--------+------------+----------+------------+------------+------+
| EMPNO | ENAME    | GENDER | JOB                 | MGR  | HIREDATE   | SAL  | COMM | DEPTNO | BONUSID | USER NAME    | PWD        | PHONE      | isActive | DEPTNO | DNAME      | LOC      | PWD        | STARTEDON  | city |
+-------+----------+--------+---------------------+------+------------+------+------+--------+---------+--------------+------------+------------+----------+--------+------------+----------+------------+------------+------+
|  7415 | AARAV    | M      | CLERK               | 7902 | 1981-12-31 | 3350 | NULL |     10 |    NULL | AARAV        | NULL       | 7032300084 |        0 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7421 | THOMAS   | M      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     10 |       1 | THOMAS       | r50mpm     | 7032300011 |        0 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7782 | CLARK    | M      | MANAGER             | 7839 | 1981-06-09 | 2450 | NULL |     10 |       3 | CLARK        | r50mpm     | 7032300001 |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7839 | KING     | M      | PRESIDENT           | NULL | 1981-11-17 | 5000 | NULL |     10 |       1 | KING         | r50mpm     | 7132300081 |        1 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  7934 | MILLER   | M      | CLERK               | 7782 | 1982-01-23 | 1300 | NULL |     10 |       2 | QUARTERNOTE  | r50mpm     | 7132300055 |        0 |     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|  6473 | SHARMIN  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | SHARMIN      | a12recmpm  | NULL       |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  6781 | BANDISH  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | BANDISH      | a12recmpm  | NULL       |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7369 | SMITH    | M      | CLERK               | 7902 | 1980-12-17 |  800 | NULL |     20 |       2 | TRITONE      | a12recmpm  | 7032300023 |        0 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7566 | JONES    | M      | MANAGER             | 7839 | 1981-04-02 | 2975 | NULL |     20 |       4 | HONEYCOMB    | a12recmpm  | 7132300039 |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7788 | SCOTT    | M      | ANALYST             | 7566 | 1982-12-09 | 3000 | NULL |     20 |       3 | WHITE SAND   | a12recmpm  | NULL       |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7840 | FRED     | M      | vice PRESIDENT      | 7839 | 1983-08-09 | 5000 | NULL |     20 |       1 | SAND STONE   | a12recmpm  | NULL       |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7876 | ADAMS    | M      | CLERK               | 7788 | 1983-01-12 | 1100 | NULL |     20 |       1 | CRAZY ANYONE | a12recmpm  | 7132300086 |        1 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  7902 | FORD     | M      | ANALYST             | 7566 | 1981-12-03 | 3000 | NULL |     20 |       4 | CONBRIO      | a12recmpm  | NULL       |        0 |     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|  6001 | GITA     | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | GITA         | sales@2017 | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7499 | ALLEN    | M      | SALESMAN            | 7698 | 1981-02-20 | 1600 |  300 |     30 |       4 | ALWAYS TESTE | sales@2017 | 7032300096 |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7521 | WARD     | M      | SALESMAN            | 7698 | 1981-02-22 | 1250 |  500 |     30 |       1 | WARD         | sales@2017 | 7132300034 |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7654 | MARTIN   | M      | SALESMAN            | 7698 | 1981-09-28 | 1250 | 1400 |     30 |       6 | LIFE RACER   | sales@2017 | 7132300050 |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7698 | BLAKE    | M      | MANAGER             | 7839 | 1981-05-01 | 2850 | NULL |     30 |       1 | BIG BEN      | sales@2017 | 7132300027 |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7844 | TURNER   | M      | SALESMAN            | 7698 | 1981-09-08 | 1500 |    0 |     30 |       5 | SAND DUST    | sales@2017 | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7900 | JAMES    | M      | CLERK               | 7698 | 1981-12-03 |  950 | NULL |     30 |       2 | CRAZY LEADER | sales@2017 | 7132300042 |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7919 | HOFFMAN  | M      | MANAGER             | 7566 | 1982-03-24 | 4150 | NULL |     30 |       3 | INTERVAL     | sales@2017 | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7920 | GRASS    | M      | SALESMAN            | 7919 | 1980-02-14 | 2575 | 2700 |     30 |       5 | GRASS        | sales@2017 | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7945 | AARUSH   | M      | SALESMAN            | 7902 | 1980-02-14 | 1350 | 2700 |     30 |    NULL | AARUSH       | ABCDEF     | NULL       |        0 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  7949 | ALEX     | M      | MANAGER             | 7698 | 1982-01-24 | 1250 |  500 |     30 |       5 | QUARTERREST  | sales@2017 | 7156567183 |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  8433 | NATASHA  | F      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | NATASHA      | sales@2017 | NULL       |        1 |     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|  6129 | VRUSHALI | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | VRUSHALI     | PUN@8877   | NULL       |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  9400 | SANGITA  | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SANGITA      | NULL       | NULL       |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|  9473 | SUPRIYA  | F      | ANALYST             | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SUPRIYA      | XYZ@1234   | NULL       |        1 |     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
+-------+----------+--------+---------------------+------+------------+------+------+--------+---------+--------------+------------+------------+----------+--------+------------+----------+------------+------------+------+
28 rows in set (0.00 sec)

mysql> select * from emp join dept using(deptno);
+--------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+------------+----------+------------+----------+------------+------------+------+
| DEPTNO | EMPNO | ENAME    | GENDER | JOB                 | MGR  | HIREDATE   | SAL  | COMM | BONUSID | USER NAME    | PWD        | PHONE      | isActive | DNAME      | LOC      | PWD        | STARTEDON  | city |
+--------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+------------+----------+------------+----------+------------+------------+------+
|     10 |  7415 | AARAV    | M      | CLERK               | 7902 | 1981-12-31 | 3350 | NULL |    NULL | AARAV        | NULL       | 7032300084 |        0 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     10 |  7421 | THOMAS   | M      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |       1 | THOMAS       | r50mpm     | 7032300011 |        0 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     10 |  7782 | CLARK    | M      | MANAGER             | 7839 | 1981-06-09 | 2450 | NULL |       3 | CLARK        | r50mpm     | 7032300001 |        1 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     10 |  7839 | KING     | M      | PRESIDENT           | NULL | 1981-11-17 | 5000 | NULL |       1 | KING         | r50mpm     | 7132300081 |        1 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     10 |  7934 | MILLER   | M      | CLERK               | 7782 | 1982-01-23 | 1300 | NULL |       2 | QUARTERNOTE  | r50mpm     | 7132300055 |        0 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     20 |  6473 | SHARMIN  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |       1 | SHARMIN      | a12recmpm  | NULL       |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  6781 | BANDISH  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |       1 | BANDISH      | a12recmpm  | NULL       |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7369 | SMITH    | M      | CLERK               | 7902 | 1980-12-17 |  800 | NULL |       2 | TRITONE      | a12recmpm  | 7032300023 |        0 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7566 | JONES    | M      | MANAGER             | 7839 | 1981-04-02 | 2975 | NULL |       4 | HONEYCOMB    | a12recmpm  | 7132300039 |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7788 | SCOTT    | M      | ANALYST             | 7566 | 1982-12-09 | 3000 | NULL |       3 | WHITE SAND   | a12recmpm  | NULL       |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7840 | FRED     | M      | vice PRESIDENT      | 7839 | 1983-08-09 | 5000 | NULL |       1 | SAND STONE   | a12recmpm  | NULL       |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7876 | ADAMS    | M      | CLERK               | 7788 | 1983-01-12 | 1100 | NULL |       1 | CRAZY ANYONE | a12recmpm  | 7132300086 |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7902 | FORD     | M      | ANALYST             | 7566 | 1981-12-03 | 3000 | NULL |       4 | CONBRIO      | a12recmpm  | NULL       |        0 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     30 |  6001 | GITA     | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |       1 | GITA         | sales@2017 | NULL       |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7499 | ALLEN    | M      | SALESMAN            | 7698 | 1981-02-20 | 1600 |  300 |       4 | ALWAYS TESTE | sales@2017 | 7032300096 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7521 | WARD     | M      | SALESMAN            | 7698 | 1981-02-22 | 1250 |  500 |       1 | WARD         | sales@2017 | 7132300034 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7654 | MARTIN   | M      | SALESMAN            | 7698 | 1981-09-28 | 1250 | 1400 |       6 | LIFE RACER   | sales@2017 | 7132300050 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7698 | BLAKE    | M      | MANAGER             | 7839 | 1981-05-01 | 2850 | NULL |       1 | BIG BEN      | sales@2017 | 7132300027 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7844 | TURNER   | M      | SALESMAN            | 7698 | 1981-09-08 | 1500 |    0 |       5 | SAND DUST    | sales@2017 | NULL       |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7900 | JAMES    | M      | CLERK               | 7698 | 1981-12-03 |  950 | NULL |       2 | CRAZY LEADER | sales@2017 | 7132300042 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7919 | HOFFMAN  | M      | MANAGER             | 7566 | 1982-03-24 | 4150 | NULL |       3 | INTERVAL     | sales@2017 | NULL       |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7920 | GRASS    | M      | SALESMAN            | 7919 | 1980-02-14 | 2575 | 2700 |       5 | GRASS        | sales@2017 | NULL       |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7945 | AARUSH   | M      | SALESMAN            | 7902 | 1980-02-14 | 1350 | 2700 |    NULL | AARUSH       | ABCDEF     | NULL       |        0 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7949 | ALEX     | M      | MANAGER             | 7698 | 1982-01-24 | 1250 |  500 |       5 | QUARTERREST  | sales@2017 | 7156567183 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  8433 | NATASHA  | F      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |       1 | NATASHA      | sales@2017 | NULL       |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     50 |  6129 | VRUSHALI | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |       1 | VRUSHALI     | PUN@8877   | NULL       |        1 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|     50 |  9400 | SANGITA  | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |       1 | SANGITA      | NULL       | NULL       |        1 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|     50 |  9473 | SUPRIYA  | F      | ANALYST             | 7920 | 1981-07-19 | 1750 | NULL |       1 | SUPRIYA      | XYZ@1234   | NULL       |        1 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
+--------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+------------+----------+------------+----------+------------+------------+------+
28 rows in set (0.00 sec)

mysql> select * from emp simple join dept using(deptno);
+--------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+------------+----------+------------+----------+------------+------------+------+
| DEPTNO | EMPNO | ENAME    | GENDER | JOB                 | MGR  | HIREDATE   | SAL  | COMM | BONUSID | USER NAME    | PWD        | PHONE      | isActive | DNAME      | LOC      | PWD        | STARTEDON  | city |
+--------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+------------+----------+------------+----------+------------+------------+------+
|     10 |  7415 | AARAV    | M      | CLERK               | 7902 | 1981-12-31 | 3350 | NULL |    NULL | AARAV        | NULL       | 7032300084 |        0 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     10 |  7421 | THOMAS   | M      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |       1 | THOMAS       | r50mpm     | 7032300011 |        0 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     10 |  7782 | CLARK    | M      | MANAGER             | 7839 | 1981-06-09 | 2450 | NULL |       3 | CLARK        | r50mpm     | 7032300001 |        1 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     10 |  7839 | KING     | M      | PRESIDENT           | NULL | 1981-11-17 | 5000 | NULL |       1 | KING         | r50mpm     | 7132300081 |        1 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     10 |  7934 | MILLER   | M      | CLERK               | 7782 | 1982-01-23 | 1300 | NULL |       2 | QUARTERNOTE  | r50mpm     | 7132300055 |        0 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     20 |  6473 | SHARMIN  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |       1 | SHARMIN      | a12recmpm  | NULL       |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  6781 | BANDISH  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |       1 | BANDISH      | a12recmpm  | NULL       |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7369 | SMITH    | M      | CLERK               | 7902 | 1980-12-17 |  800 | NULL |       2 | TRITONE      | a12recmpm  | 7032300023 |        0 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7566 | JONES    | M      | MANAGER             | 7839 | 1981-04-02 | 2975 | NULL |       4 | HONEYCOMB    | a12recmpm  | 7132300039 |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7788 | SCOTT    | M      | ANALYST             | 7566 | 1982-12-09 | 3000 | NULL |       3 | WHITE SAND   | a12recmpm  | NULL       |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7840 | FRED     | M      | vice PRESIDENT      | 7839 | 1983-08-09 | 5000 | NULL |       1 | SAND STONE   | a12recmpm  | NULL       |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7876 | ADAMS    | M      | CLERK               | 7788 | 1983-01-12 | 1100 | NULL |       1 | CRAZY ANYONE | a12recmpm  | 7132300086 |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7902 | FORD     | M      | ANALYST             | 7566 | 1981-12-03 | 3000 | NULL |       4 | CONBRIO      | a12recmpm  | NULL       |        0 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     30 |  6001 | GITA     | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |       1 | GITA         | sales@2017 | NULL       |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7499 | ALLEN    | M      | SALESMAN            | 7698 | 1981-02-20 | 1600 |  300 |       4 | ALWAYS TESTE | sales@2017 | 7032300096 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7521 | WARD     | M      | SALESMAN            | 7698 | 1981-02-22 | 1250 |  500 |       1 | WARD         | sales@2017 | 7132300034 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7654 | MARTIN   | M      | SALESMAN            | 7698 | 1981-09-28 | 1250 | 1400 |       6 | LIFE RACER   | sales@2017 | 7132300050 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7698 | BLAKE    | M      | MANAGER             | 7839 | 1981-05-01 | 2850 | NULL |       1 | BIG BEN      | sales@2017 | 7132300027 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7844 | TURNER   | M      | SALESMAN            | 7698 | 1981-09-08 | 1500 |    0 |       5 | SAND DUST    | sales@2017 | NULL       |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7900 | JAMES    | M      | CLERK               | 7698 | 1981-12-03 |  950 | NULL |       2 | CRAZY LEADER | sales@2017 | 7132300042 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7919 | HOFFMAN  | M      | MANAGER             | 7566 | 1982-03-24 | 4150 | NULL |       3 | INTERVAL     | sales@2017 | NULL       |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7920 | GRASS    | M      | SALESMAN            | 7919 | 1980-02-14 | 2575 | 2700 |       5 | GRASS        | sales@2017 | NULL       |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7945 | AARUSH   | M      | SALESMAN            | 7902 | 1980-02-14 | 1350 | 2700 |    NULL | AARUSH       | ABCDEF     | NULL       |        0 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7949 | ALEX     | M      | MANAGER             | 7698 | 1982-01-24 | 1250 |  500 |       5 | QUARTERREST  | sales@2017 | 7156567183 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  8433 | NATASHA  | F      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |       1 | NATASHA      | sales@2017 | NULL       |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     50 |  6129 | VRUSHALI | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |       1 | VRUSHALI     | PUN@8877   | NULL       |        1 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|     50 |  9400 | SANGITA  | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |       1 | SANGITA      | NULL       | NULL       |        1 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|     50 |  9473 | SUPRIYA  | F      | ANALYST             | 7920 | 1981-07-19 | 1750 | NULL |       1 | SUPRIYA      | XYZ@1234   | NULL       |        1 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
+--------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+------------+----------+------------+----------+------------+------------+------+
28 rows in set (0.00 sec)

mysql> select * from emp inner join dept using(deptno);
+--------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+------------+----------+------------+----------+------------+------------+------+
| DEPTNO | EMPNO | ENAME    | GENDER | JOB                 | MGR  | HIREDATE   | SAL  | COMM | BONUSID | USER NAME    | PWD        | PHONE      | isActive | DNAME      | LOC      | PWD        | STARTEDON  | city |
+--------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+------------+----------+------------+----------+------------+------------+------+
|     10 |  7415 | AARAV    | M      | CLERK               | 7902 | 1981-12-31 | 3350 | NULL |    NULL | AARAV        | NULL       | 7032300084 |        0 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     10 |  7421 | THOMAS   | M      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |       1 | THOMAS       | r50mpm     | 7032300011 |        0 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     10 |  7782 | CLARK    | M      | MANAGER             | 7839 | 1981-06-09 | 2450 | NULL |       3 | CLARK        | r50mpm     | 7032300001 |        1 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     10 |  7839 | KING     | M      | PRESIDENT           | NULL | 1981-11-17 | 5000 | NULL |       1 | KING         | r50mpm     | 7132300081 |        1 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     10 |  7934 | MILLER   | M      | CLERK               | 7782 | 1982-01-23 | 1300 | NULL |       2 | QUARTERNOTE  | r50mpm     | 7132300055 |        0 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     20 |  6473 | SHARMIN  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |       1 | SHARMIN      | a12recmpm  | NULL       |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  6781 | BANDISH  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |       1 | BANDISH      | a12recmpm  | NULL       |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7369 | SMITH    | M      | CLERK               | 7902 | 1980-12-17 |  800 | NULL |       2 | TRITONE      | a12recmpm  | 7032300023 |        0 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7566 | JONES    | M      | MANAGER             | 7839 | 1981-04-02 | 2975 | NULL |       4 | HONEYCOMB    | a12recmpm  | 7132300039 |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7788 | SCOTT    | M      | ANALYST             | 7566 | 1982-12-09 | 3000 | NULL |       3 | WHITE SAND   | a12recmpm  | NULL       |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7840 | FRED     | M      | vice PRESIDENT      | 7839 | 1983-08-09 | 5000 | NULL |       1 | SAND STONE   | a12recmpm  | NULL       |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7876 | ADAMS    | M      | CLERK               | 7788 | 1983-01-12 | 1100 | NULL |       1 | CRAZY ANYONE | a12recmpm  | 7132300086 |        1 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     20 |  7902 | FORD     | M      | ANALYST             | 7566 | 1981-12-03 | 3000 | NULL |       4 | CONBRIO      | a12recmpm  | NULL       |        0 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     30 |  6001 | GITA     | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |       1 | GITA         | sales@2017 | NULL       |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7499 | ALLEN    | M      | SALESMAN            | 7698 | 1981-02-20 | 1600 |  300 |       4 | ALWAYS TESTE | sales@2017 | 7032300096 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7521 | WARD     | M      | SALESMAN            | 7698 | 1981-02-22 | 1250 |  500 |       1 | WARD         | sales@2017 | 7132300034 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7654 | MARTIN   | M      | SALESMAN            | 7698 | 1981-09-28 | 1250 | 1400 |       6 | LIFE RACER   | sales@2017 | 7132300050 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7698 | BLAKE    | M      | MANAGER             | 7839 | 1981-05-01 | 2850 | NULL |       1 | BIG BEN      | sales@2017 | 7132300027 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7844 | TURNER   | M      | SALESMAN            | 7698 | 1981-09-08 | 1500 |    0 |       5 | SAND DUST    | sales@2017 | NULL       |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7900 | JAMES    | M      | CLERK               | 7698 | 1981-12-03 |  950 | NULL |       2 | CRAZY LEADER | sales@2017 | 7132300042 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7919 | HOFFMAN  | M      | MANAGER             | 7566 | 1982-03-24 | 4150 | NULL |       3 | INTERVAL     | sales@2017 | NULL       |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7920 | GRASS    | M      | SALESMAN            | 7919 | 1980-02-14 | 2575 | 2700 |       5 | GRASS        | sales@2017 | NULL       |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7945 | AARUSH   | M      | SALESMAN            | 7902 | 1980-02-14 | 1350 | 2700 |    NULL | AARUSH       | ABCDEF     | NULL       |        0 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  7949 | ALEX     | M      | MANAGER             | 7698 | 1982-01-24 | 1250 |  500 |       5 | QUARTERREST  | sales@2017 | 7156567183 |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     30 |  8433 | NATASHA  | F      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |       1 | NATASHA      | sales@2017 | NULL       |        1 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     50 |  6129 | VRUSHALI | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |       1 | VRUSHALI     | PUN@8877   | NULL       |        1 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|     50 |  9400 | SANGITA  | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |       1 | SANGITA      | NULL       | NULL       |        1 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
|     50 |  9473 | SUPRIYA  | F      | ANALYST             | 7920 | 1981-07-19 | 1750 | NULL |       1 | SUPRIYA      | XYZ@1234   | NULL       |        1 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
+--------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+------------+----------+------------+----------+------------+------------+------+
28 rows in set (0.00 sec)

mysql> select * from emp natural join dept;
+--------+------------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+----------+------------+----------+------------+------+
| DEPTNO | PWD        | EMPNO | ENAME    | GENDER | JOB                 | MGR  | HIREDATE   | SAL  | COMM | BONUSID | USER NAME    | PHONE      | isActive | DNAME      | LOC      | STARTEDON  | city |
+--------+------------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+----------+------------+----------+------------+------+
|     10 | r50mpm     |  7421 | THOMAS   | M      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |       1 | THOMAS       | 7032300011 |        0 | Accounting | NEW YORK | 24/03/1989 | NULL |
|     10 | r50mpm     |  7782 | CLARK    | M      | MANAGER             | 7839 | 1981-06-09 | 2450 | NULL |       3 | CLARK        | 7032300001 |        1 | Accounting | NEW YORK | 24/03/1989 | NULL |
|     10 | r50mpm     |  7839 | KING     | M      | PRESIDENT           | NULL | 1981-11-17 | 5000 | NULL |       1 | KING         | 7132300081 |        1 | Accounting | NEW YORK | 24/03/1989 | NULL |
|     10 | r50mpm     |  7934 | MILLER   | M      | CLERK               | 7782 | 1982-01-23 | 1300 | NULL |       2 | QUARTERNOTE  | 7132300055 |        0 | Accounting | NEW YORK | 24/03/1989 | NULL |
|     20 | a12recmpm  |  6473 | SHARMIN  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |       1 | SHARMIN      | NULL       |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  6781 | BANDISH  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |       1 | BANDISH      | NULL       |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7369 | SMITH    | M      | CLERK               | 7902 | 1980-12-17 |  800 | NULL |       2 | TRITONE      | 7032300023 |        0 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7566 | JONES    | M      | MANAGER             | 7839 | 1981-04-02 | 2975 | NULL |       4 | HONEYCOMB    | 7132300039 |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7788 | SCOTT    | M      | ANALYST             | 7566 | 1982-12-09 | 3000 | NULL |       3 | WHITE SAND   | NULL       |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7840 | FRED     | M      | vice PRESIDENT      | 7839 | 1983-08-09 | 5000 | NULL |       1 | SAND STONE   | NULL       |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7876 | ADAMS    | M      | CLERK               | 7788 | 1983-01-12 | 1100 | NULL |       1 | CRAZY ANYONE | 7132300086 |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7902 | FORD     | M      | ANALYST             | 7566 | 1981-12-03 | 3000 | NULL |       4 | CONBRIO      | NULL       |        0 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     30 | sales@2017 |  6001 | GITA     | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |       1 | GITA         | NULL       |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7499 | ALLEN    | M      | SALESMAN            | 7698 | 1981-02-20 | 1600 |  300 |       4 | ALWAYS TESTE | 7032300096 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7521 | WARD     | M      | SALESMAN            | 7698 | 1981-02-22 | 1250 |  500 |       1 | WARD         | 7132300034 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7654 | MARTIN   | M      | SALESMAN            | 7698 | 1981-09-28 | 1250 | 1400 |       6 | LIFE RACER   | 7132300050 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7698 | BLAKE    | M      | MANAGER             | 7839 | 1981-05-01 | 2850 | NULL |       1 | BIG BEN      | 7132300027 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7844 | TURNER   | M      | SALESMAN            | 7698 | 1981-09-08 | 1500 |    0 |       5 | SAND DUST    | NULL       |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7900 | JAMES    | M      | CLERK               | 7698 | 1981-12-03 |  950 | NULL |       2 | CRAZY LEADER | 7132300042 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7919 | HOFFMAN  | M      | MANAGER             | 7566 | 1982-03-24 | 4150 | NULL |       3 | INTERVAL     | NULL       |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7920 | GRASS    | M      | SALESMAN            | 7919 | 1980-02-14 | 2575 | 2700 |       5 | GRASS        | NULL       |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7949 | ALEX     | M      | MANAGER             | 7698 | 1982-01-24 | 1250 |  500 |       5 | QUARTERREST  | 7156567183 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  8433 | NATASHA  | F      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |       1 | NATASHA      | NULL       |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     50 | PUN@8877   |  6129 | VRUSHALI | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |       1 | VRUSHALI     | NULL       |        1 | HR         | PUNE     | 22/12/1989 | NULL |
+--------+------------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+----------+------------+----------+------------+------+
24 rows in set (0.00 sec)

mysql> select * from emp natural join dept;
+--------+------------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+----------+------------+----------+------------+------+
| DEPTNO | PWD        | EMPNO | ENAME    | GENDER | JOB                 | MGR  | HIREDATE   | SAL  | COMM | BONUSID | USER NAME    | PHONE      | isActive | DNAME      | LOC      | STARTEDON  | city |
+--------+------------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+----------+------------+----------+------------+------+
|     10 | r50mpm     |  7421 | THOMAS   | M      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |       1 | THOMAS       | 7032300011 |        0 | Accounting | NEW YORK | 24/03/1989 | NULL |
|     10 | r50mpm     |  7782 | CLARK    | M      | MANAGER             | 7839 | 1981-06-09 | 2450 | NULL |       3 | CLARK        | 7032300001 |        1 | Accounting | NEW YORK | 24/03/1989 | NULL |
|     10 | r50mpm     |  7839 | KING     | M      | PRESIDENT           | NULL | 1981-11-17 | 5000 | NULL |       1 | KING         | 7132300081 |        1 | Accounting | NEW YORK | 24/03/1989 | NULL |
|     10 | r50mpm     |  7934 | MILLER   | M      | CLERK               | 7782 | 1982-01-23 | 1300 | NULL |       2 | QUARTERNOTE  | 7132300055 |        0 | Accounting | NEW YORK | 24/03/1989 | NULL |
|     20 | a12recmpm  |  6473 | SHARMIN  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |       1 | SHARMIN      | NULL       |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  6781 | BANDISH  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |       1 | BANDISH      | NULL       |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7369 | SMITH    | M      | CLERK               | 7902 | 1980-12-17 |  800 | NULL |       2 | TRITONE      | 7032300023 |        0 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7566 | JONES    | M      | MANAGER             | 7839 | 1981-04-02 | 2975 | NULL |       4 | HONEYCOMB    | 7132300039 |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7788 | SCOTT    | M      | ANALYST             | 7566 | 1982-12-09 | 3000 | NULL |       3 | WHITE SAND   | NULL       |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7840 | FRED     | M      | vice PRESIDENT      | 7839 | 1983-08-09 | 5000 | NULL |       1 | SAND STONE   | NULL       |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7876 | ADAMS    | M      | CLERK               | 7788 | 1983-01-12 | 1100 | NULL |       1 | CRAZY ANYONE | 7132300086 |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7902 | FORD     | M      | ANALYST             | 7566 | 1981-12-03 | 3000 | NULL |       4 | CONBRIO      | NULL       |        0 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     30 | sales@2017 |  6001 | GITA     | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |       1 | GITA         | NULL       |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7499 | ALLEN    | M      | SALESMAN            | 7698 | 1981-02-20 | 1600 |  300 |       4 | ALWAYS TESTE | 7032300096 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7521 | WARD     | M      | SALESMAN            | 7698 | 1981-02-22 | 1250 |  500 |       1 | WARD         | 7132300034 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7654 | MARTIN   | M      | SALESMAN            | 7698 | 1981-09-28 | 1250 | 1400 |       6 | LIFE RACER   | 7132300050 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7698 | BLAKE    | M      | MANAGER             | 7839 | 1981-05-01 | 2850 | NULL |       1 | BIG BEN      | 7132300027 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7844 | TURNER   | M      | SALESMAN            | 7698 | 1981-09-08 | 1500 |    0 |       5 | SAND DUST    | NULL       |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7900 | JAMES    | M      | CLERK               | 7698 | 1981-12-03 |  950 | NULL |       2 | CRAZY LEADER | 7132300042 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7919 | HOFFMAN  | M      | MANAGER             | 7566 | 1982-03-24 | 4150 | NULL |       3 | INTERVAL     | NULL       |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7920 | GRASS    | M      | SALESMAN            | 7919 | 1980-02-14 | 2575 | 2700 |       5 | GRASS        | NULL       |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7949 | ALEX     | M      | MANAGER             | 7698 | 1982-01-24 | 1250 |  500 |       5 | QUARTERREST  | 7156567183 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  8433 | NATASHA  | F      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |       1 | NATASHA      | NULL       |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     50 | PUN@8877   |  6129 | VRUSHALI | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |       1 | VRUSHALI     | NULL       |        1 | HR         | PUNE     | 22/12/1989 | NULL |
+--------+------------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+----------+------------+----------+------------+------+
24 rows in set (0.00 sec)

mysql> desc emp;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| EMPNO     | int         | NO   | PRI | NULL    |       |
| ENAME     | varchar(12) | YES  |     | NULL    |       |
| GENDER    | char(1)     | YES  |     | NULL    |       |
| JOB       | varchar(20) | YES  |     | NULL    |       |
| MGR       | int         | YES  | MUL | NULL    |       |
| HIREDATE  | date        | YES  |     | NULL    |       |
| SAL       | int         | YES  |     | NULL    |       |
| COMM      | int         | YES  |     | NULL    |       |
| DEPTNO    | int         | NO   | MUL | NULL    |       |
| BONUSID   | int         | YES  |     | NULL    |       |
| USER NAME | varchar(20) | YES  |     | NULL    |       |
| PWD       | varchar(20) | YES  |     | NULL    |       |
| PHONE     | varchar(45) | YES  |     | NULL    |       |
| isActive  | tinyint(1)  | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
14 rows in set (0.00 sec)

mysql> desc dept;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| DEPTNO    | int         | NO   | PRI | NULL    |       |
| DNAME     | varchar(12) | YES  |     | NULL    |       |
| LOC       | varchar(10) | YES  |     | NULL    |       |
| PWD       | varchar(20) | YES  |     | NULL    |       |
| STARTEDON | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(10) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> select * from emp inner join dept using(deptno, pwd);
+--------+------------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+----------+------------+----------+------------+------+
| DEPTNO | PWD        | EMPNO | ENAME    | GENDER | JOB                 | MGR  | HIREDATE   | SAL  | COMM | BONUSID | USER NAME    | PHONE      | isActive | DNAME      | LOC      | STARTEDON  | city |
+--------+------------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+----------+------------+----------+------------+------+
|     10 | r50mpm     |  7421 | THOMAS   | M      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |       1 | THOMAS       | 7032300011 |        0 | Accounting | NEW YORK | 24/03/1989 | NULL |
|     10 | r50mpm     |  7782 | CLARK    | M      | MANAGER             | 7839 | 1981-06-09 | 2450 | NULL |       3 | CLARK        | 7032300001 |        1 | Accounting | NEW YORK | 24/03/1989 | NULL |
|     10 | r50mpm     |  7839 | KING     | M      | PRESIDENT           | NULL | 1981-11-17 | 5000 | NULL |       1 | KING         | 7132300081 |        1 | Accounting | NEW YORK | 24/03/1989 | NULL |
|     10 | r50mpm     |  7934 | MILLER   | M      | CLERK               | 7782 | 1982-01-23 | 1300 | NULL |       2 | QUARTERNOTE  | 7132300055 |        0 | Accounting | NEW YORK | 24/03/1989 | NULL |
|     20 | a12recmpm  |  6473 | SHARMIN  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |       1 | SHARMIN      | NULL       |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  6781 | BANDISH  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |       1 | BANDISH      | NULL       |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7369 | SMITH    | M      | CLERK               | 7902 | 1980-12-17 |  800 | NULL |       2 | TRITONE      | 7032300023 |        0 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7566 | JONES    | M      | MANAGER             | 7839 | 1981-04-02 | 2975 | NULL |       4 | HONEYCOMB    | 7132300039 |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7788 | SCOTT    | M      | ANALYST             | 7566 | 1982-12-09 | 3000 | NULL |       3 | WHITE SAND   | NULL       |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7840 | FRED     | M      | vice PRESIDENT      | 7839 | 1983-08-09 | 5000 | NULL |       1 | SAND STONE   | NULL       |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7876 | ADAMS    | M      | CLERK               | 7788 | 1983-01-12 | 1100 | NULL |       1 | CRAZY ANYONE | 7132300086 |        1 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     20 | a12recmpm  |  7902 | FORD     | M      | ANALYST             | 7566 | 1981-12-03 | 3000 | NULL |       4 | CONBRIO      | NULL       |        0 | RESEARCH   | DALLAS   | 12/04/1989 | NULL |
|     30 | sales@2017 |  6001 | GITA     | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |       1 | GITA         | NULL       |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7499 | ALLEN    | M      | SALESMAN            | 7698 | 1981-02-20 | 1600 |  300 |       4 | ALWAYS TESTE | 7032300096 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7521 | WARD     | M      | SALESMAN            | 7698 | 1981-02-22 | 1250 |  500 |       1 | WARD         | 7132300034 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7654 | MARTIN   | M      | SALESMAN            | 7698 | 1981-09-28 | 1250 | 1400 |       6 | LIFE RACER   | 7132300050 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7698 | BLAKE    | M      | MANAGER             | 7839 | 1981-05-01 | 2850 | NULL |       1 | BIG BEN      | 7132300027 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7844 | TURNER   | M      | SALESMAN            | 7698 | 1981-09-08 | 1500 |    0 |       5 | SAND DUST    | NULL       |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7900 | JAMES    | M      | CLERK               | 7698 | 1981-12-03 |  950 | NULL |       2 | CRAZY LEADER | 7132300042 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7919 | HOFFMAN  | M      | MANAGER             | 7566 | 1982-03-24 | 4150 | NULL |       3 | INTERVAL     | NULL       |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7920 | GRASS    | M      | SALESMAN            | 7919 | 1980-02-14 | 2575 | 2700 |       5 | GRASS        | NULL       |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  7949 | ALEX     | M      | MANAGER             | 7698 | 1982-01-24 | 1250 |  500 |       5 | QUARTERREST  | 7156567183 |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     30 | sales@2017 |  8433 | NATASHA  | F      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |       1 | NATASHA      | NULL       |        1 | SALES      | CHICAGO  | 13/04/1989 | NULL |
|     50 | PUN@8877   |  6129 | VRUSHALI | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |       1 | VRUSHALI     | NULL       |        1 | HR         | PUNE     | 22/12/1989 | NULL |
+--------+------------+-------+----------+--------+---------------------+------+------------+------+------+---------+--------------+------------+----------+------------+----------+------------+------+
24 rows in set (0.00 sec)

mysql> select * from dept;
+--------+------------+----------+------------+------------+------+
| DEPTNO | DNAME      | LOC      | PWD        | STARTEDON  | city |
+--------+------------+----------+------------+------------+------+
|      1 | 1          | 1        | 1          | 1          | 1    |
|      2 | 2          | 2        | 2          | 2          | 2    |
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
+--------+------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

mysql> select * from r;
+------+
| c1   |
+------+
|   -2 |
|    1 |
|    2 |
|   -1 |
|    3 |
|   -2 |
|    1 |
|    2 |
|    1 |
+------+
9 rows in set (0.04 sec)

mysql> select * from dept natural join r;
+--------+------------+----------+------------+------------+------+------+
| DEPTNO | DNAME      | LOC      | PWD        | STARTEDON  | city | c1   |
+--------+------------+----------+------------+------------+------+------+
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |   -2 |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |   -2 |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |   -2 |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |   -2 |
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |   -2 |
|      2 | 2          | 2        | 2          | 2          | 2    |   -2 |
|      1 | 1          | 1        | 1          | 1          | 1    |   -2 |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |    1 |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |    1 |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |    1 |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |    1 |
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |    1 |
|      2 | 2          | 2        | 2          | 2          | 2    |    1 |
|      1 | 1          | 1        | 1          | 1          | 1    |    1 |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |    2 |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |    2 |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |    2 |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |    2 |
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |    2 |
|      2 | 2          | 2        | 2          | 2          | 2    |    2 |
|      1 | 1          | 1        | 1          | 1          | 1    |    2 |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |   -1 |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |   -1 |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |   -1 |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |   -1 |
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |   -1 |
|      2 | 2          | 2        | 2          | 2          | 2    |   -1 |
|      1 | 1          | 1        | 1          | 1          | 1    |   -1 |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |    3 |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |    3 |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |    3 |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |    3 |
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |    3 |
|      2 | 2          | 2        | 2          | 2          | 2    |    3 |
|      1 | 1          | 1        | 1          | 1          | 1    |    3 |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |   -2 |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |   -2 |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |   -2 |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |   -2 |
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |   -2 |
|      2 | 2          | 2        | 2          | 2          | 2    |   -2 |
|      1 | 1          | 1        | 1          | 1          | 1    |   -2 |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |    1 |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |    1 |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |    1 |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |    1 |
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |    1 |
|      2 | 2          | 2        | 2          | 2          | 2    |    1 |
|      1 | 1          | 1        | 1          | 1          | 1    |    1 |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |    2 |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |    2 |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |    2 |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |    2 |
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |    2 |
|      2 | 2          | 2        | 2          | 2          | 2    |    2 |
|      1 | 1          | 1        | 1          | 1          | 1    |    2 |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |    1 |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |    1 |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |    1 |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |    1 |
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |    1 |
|      2 | 2          | 2        | 2          | 2          | 2    |    1 |
|      1 | 1          | 1        | 1          | 1          | 1    |    1 |
+--------+------------+----------+------------+------------+------+------+
63 rows in set (0.00 sec)

mysql> select * from table a;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table a' at line 1
mysql> select * from tablea;
+------+------+
| id   | name |
+------+------+
|    5 | aa   |
|    1 | a    |
|    2 | b    |
|    3 | y    |
| NULL | d    |
|    5 | NULL |
|    1 | NULL |
|    1 | b    |
|    8 | a    |
+------+------+
9 rows in set (0.03 sec)

mysql> select * from tableb;
+------+------+
| id   | name |
+------+------+
|    1 | a    |
|    2 | x    |
|    4 | b    |
| NULL | c    |
|    6 | NULL |
| NULL | NULL |
|    7 | z    |
|    2 | NULL |
|    5 | z    |
|    9 | u    |
+------+------+
10 rows in set (0.04 sec)

mysql> select * from salesperson;
+------+--------+
| SID  | SNAME  |
+------+--------+
| 1001 | ALAN   |
| 1002 | CALVIN |
| 1003 | CLIVE  |
| 1004 | DENNIS |
| 1005 | EVAN   |
| 1006 | FOX    |
| 1007 | PETER  |
+------+--------+
7 rows in set (0.04 sec)

mysql> select * from salespeople;
+------+---------+----------+------+
| SNUM | SNAME   | CITY     | COMM |
+------+---------+----------+------+
| 1001 | Rajan   | London   | 0.12 |
| 1002 | Natasha | San Jose | 0.13 |
| 1003 | Alax    | New York |  0.1 |
| 1004 | Monika  | London   | 0.11 |
| 1005 | Moor    | London   | 0.26 |
| 1006 | Jack    | Leeds    | 0.26 |
| 1007 | James   | Derby    | 0.15 |
| 1008 | Cooper  | Wells    | 0.19 |
| 1009 | Leo     | Wells    | 0.26 |
+------+---------+----------+------+
9 rows in set (0.00 sec)

mysql> select * from customer;
+--------+----------------------------------------------+------------------+--------------+-------+-------+------+----------+-------+-------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| CUSTID | NAME                                         | ADDRESS          | CITY         | STATE | ZIP   | AREA | PHONE    | REPID | CREDITLIMIT | COMMENTS                                                                                                                                       |
+--------+----------------------------------------------+------------------+--------------+-------+-------+------+----------+-------+-------------+------------------------------------------------------------------------------------------------------------------------------------------------+
|    100 | JOCKSPORTS                                   | 345 VIEWRIDGE    | BELMONT      | CA    | 96711 |  415 | 598-6609 |  7844 |     5000.00 | Very friendly people to work with -- sales rep likes to be called Mike.                                                                        |
|    101 | TKB SPORT SHOP                               | 490 BOLI RD.     | REDWOOD CITY | CA    | 94061 |  415 | 368-1223 |  7521 |    10000.00 | Rep called 5/8 about change in order - contact shipping.                                                                                       |
|    102 | VOLLYRITE                                    | 9722 HAMILTON    | BURLINGAME   | CA    | 95133 |  415 | 644-3341 |  7654 |     7000.00 | Company doing heavy promotion beginning 10/89. Prepare for large orders during
 winter.                                                        |
|    103 | JUST TENNIS                                  | HILLVIEW MALL    | BURLINGAME   | CA    | 97544 |  415 | 677-9312 |  7521 |     3000.00 | Contact rep about new line of tennis rackets.                                                                                                  |
|    104 | EVERY MOUNTAIN                               | 574 SURRY RD.    | CUPERTINO    | CA    | 93301 |  408 | 996-2323 |  7499 |    10000.00 | Customer with high market share (23%) due to aggressive advertising.                                                                           |
|    105 | K + T SPORTS                                 | 3476 EL PASEO    | SANTA CLARA  | CA    | 91003 |  408 | 376-9966 |  7844 |     5000.00 | Tends to order large amounts of merchandise at once. Accounting is considering
 raising their credit limit. Usually pays on time.              |
|    106 | SHAPE UP                                     | 908 SEQUOIA      | PALO ALTO    | CA    | 94301 |  415 | 364-9777 |  7521 |     6000.00 | Support intensive. Orders small amounts (< 800) of merchandise at a time.                                                                      |
|    107 | WOMENS SPORTS                                | VALCO VILLAGE    | SUNNYVALE    | CA    | 93301 |  408 | 967-4398 |  7499 |    10000.00 | First sporting goods store geared exclusively towards women. Unusual promotion
al style and very willing to take chances towards new products! |
|    108 | NORTH WOODS HEALTH AND FITNESS SUPPLY CENTER | 98 LONE PINE WAY | HIBBING      | MN    | 55649 |  612 | 566-9123 |  7844 |     8000.00 | NULL                                                                                                                                           |
+--------+----------------------------------------------+------------------+--------------+-------+-------+------+----------+-------+-------------+------------------------------------------------------------------------------------------------------------------------------------------------+
9 rows in set (0.06 sec)

mysql> select * from customers;
+------+---------+----------+--------+------+
| CNUM | CNAME   | CITY     | RATING | SNUM |
+------+---------+----------+--------+------+
| 2001 | Santosh | London   |    100 | 1001 |
| 2002 | Joe     | Rome     |    200 | 1003 |
| 2003 | Raj     | San Jose |    200 | 1002 |
| 2004 | Grass   | Berlin   |    300 | 1002 |
| 2006 | Raja    | London   |    100 | 1001 |
| 2007 | Jackson | Rome     |    100 | 1004 |
| 2008 | William | San Jose |    300 | 1007 |
| 2009 | Smith   | Berlin   |    300 | 1007 |
| 2010 | ADAMS   | Berlin   |    250 | 1007 |
+------+---------+----------+--------+------+
9 rows in set (0.03 sec)

mysql> select * from orders;
+------+---------+---------------------+------+------+--------+
| ONUM | AMT     | ODATE               | CNUM | SNUM | type   |
+------+---------+---------------------+------+------+--------+
| 3001 |   18.69 | 1996-10-03 12:30:00 | 2008 | 1007 | Online |
| 3002 |  1900.1 | 1996-10-03 12:05:00 | 2007 | 1004 | Online |
| 3003 |  767.19 | 1996-10-03 13:45:00 | 2001 | 1001 | Online |
| 3005 | 5160.45 | 1996-10-03 14:00:00 | 2003 | 1002 | Online |
| 3006 | 1098.16 | 1996-10-03 13:37:00 | 2008 | 1007 | Online |
| 3007 |   75.75 | 1996-10-04 16:02:00 | 2002 | 1003 | Online |
| 3008 |    4723 | 1996-10-05 12:07:00 | 2006 | 1001 | Online |
| 3009 | 1713.23 | 1996-10-04 15:21:00 | 2002 | 1003 | Online |
| 3010 | 1309.95 | 1996-10-06 13:12:00 | 2004 | 1002 | Online |
| 3011 | 9891.88 | 1996-10-06 13:09:00 | 2006 | 1001 | Online |
| 3012 | 3455.78 | 1996-10-04 15:21:00 | 2002 | 1003 | Online |
| 3013 | 1245.98 | 1996-10-04 16:32:00 | 2002 | 1003 | Online |
| 3014 | 3721.53 | 1996-10-05 12:45:00 | 2006 | 1001 | Online |
| 3015 |   734.5 | 1996-10-06 13:16:00 | 2004 | 1002 | Online |
| 3016 | 1729.67 | 1996-10-06 13:07:00 | 2006 | 1001 | Online |
| 3017 |   18.69 | 1996-10-03 12:30:00 | 2001 | 1007 | Online |
| 3018 |  767.19 | 1996-10-03 13:45:00 | 2002 | 1001 | Online |
| 3019 |  1900.1 | 1996-10-03 12:05:00 | 2007 | 1004 | Online |
| 3020 | 5160.45 | 1996-10-03 14:00:00 | 2003 | 1007 | Online |
| 3021 | 1098.16 | 1996-10-03 13:37:00 | 2008 | 1007 | Online |
| 3022 | 1713.23 | 1996-10-04 15:21:00 | 2002 | 1003 | Online |
| 3023 |   75.75 | 1996-10-04 16:02:00 | 2002 | 1004 | Online |
| 3024 |    4723 | 1996-10-05 12:07:00 | 2006 | 1002 | Online |
| 3025 | 1309.95 | 1996-10-06 13:12:00 | 2002 | 1002 | Online |
| 3026 | 9891.88 | 1996-10-06 13:09:00 | 2006 | 1001 | Online |
| 3027 | 3455.78 | 1996-10-04 15:21:00 | 2002 | 1003 | Online |
| 3028 | 1245.98 | 1996-10-04 16:32:00 | 2002 | 1003 | Online |
| 3029 | 3721.53 | 1996-10-05 12:45:00 | 2006 | 1001 | Online |
| 3030 |   734.5 | 1996-10-06 13:16:00 | 2004 | 1002 | Online |
| 3031 | 1729.67 | 1996-10-06 13:07:00 | 2006 | 1007 | Online |
| 3032 |    3434 | 1996-01-26 17:09:12 | 2006 | 1007 | Online |
| 3033 |     522 | 1996-12-24 14:23:00 | 2002 | 1002 | Online |
| 3049 |     500 | 1996-03-14 07:45:19 | 2001 | 1003 | Online |
| 3074 |     457 | 1996-04-19 05:13:00 | 2008 | 1007 | Online |
| 3119 |     125 | 1996-07-26 18:37:00 | 2007 | 1001 | Online |
| 4001 |     145 | 1996-05-13 20:47:00 | 2008 | 1003 | Online |
| 4012 |     245 | 1996-03-06 13:07:00 | 2001 | 1002 | Online |
| 4021 |     600 | 1996-08-12 13:07:00 | 2001 | 1002 | Online |
| 4054 |    1200 | 1996-11-22 13:07:00 | 2004 | 1003 | Online |
| 5011 |     138 | 1996-09-14 13:07:00 | 2001 | 1007 | Online |
| 5014 |     980 | 1996-08-23 13:07:00 | 2002 | 1007 | Online |
| 5015 |    2133 | 1996-06-23 13:07:00 | 2004 | 1007 | Online |
| 5016 |    1000 | 1996-03-12 13:07:00 | 2002 | 1007 | Online |
| 5053 |    1500 | 1996-01-01 13:07:00 | 2006 | 1007 | Online |
| 5099 |     790 | 1996-04-24 13:07:00 | 2002 | 1007 | Online |
| 6501 |     125 | 1996-06-13 13:07:00 | 2001 | 1001 | Online |
| 6502 |     535 | 1996-08-24 13:07:00 | 2006 | 1004 | Online |
| 6503 |    1100 | 1996-07-26 13:07:00 | 2006 | 1007 | Online |
| 6504 |    1350 | 1996-07-21 13:07:00 | 2008 | 1007 | Online |
+------+---------+---------------------+------+------+--------+
49 rows in set (0.00 sec)

mysql> desc salesperson;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| SID   | int         | YES  |     | NULL    |       |
| SNAME | varchar(10) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc customers;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| CNUM   | int         | NO   | PRI | NULL    |       |
| CNAME  | varchar(10) | YES  |     | NULL    |       |
| CITY   | varchar(10) | YES  |     | NULL    |       |
| RATING | float       | YES  |     | NULL    |       |
| SNUM   | int         | YES  | MUL | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql>