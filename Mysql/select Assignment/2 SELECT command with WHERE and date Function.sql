mysql> use dac16
Database changed

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
14 rows in set (0.02 sec)

mysql> select * from emp;
+-------+----------+--------+---------------------+------+------------+------+------+--------+---------+--------------+------------+------------+----------+
| EMPNO | ENAME    | GENDER | JOB                 | MGR  | HIREDATE   | SAL  | COMM | DEPTNO | BONUSID | USER NAME    | PWD        | PHONE      | isActive |
+-------+----------+--------+---------------------+------+------------+------+------+--------+---------+--------------+------------+------------+----------+
|  6001 | GITA     | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | GITA         | sales@2017 | NULL       |        1 |
|  6129 | VRUSHALI | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | VRUSHALI     | PUN@8877   | NULL       |        1 |
|  6473 | SHARMIN  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | SHARMIN      | a12recmpm  | NULL       |        1 |
|  6781 | BANDISH  | F      | Public Relation     | 7920 | 1981-07-19 | 1750 | NULL |     20 |       1 | BANDISH      | a12recmpm  | NULL       |        1 |
|  7369 | SMITH    | M      | CLERK               | 7902 | 1980-12-17 |  800 | NULL |     20 |       2 | TRITONE      | a12recmpm  | 7032300023 |        0 |
|  7415 | AARAV    | M      | CLERK               | 7902 | 1981-12-31 | 3350 | NULL |     10 |    NULL | AARAV        | NULL       | 7032300084 |        0 |
|  7421 | THOMAS   | M      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     10 |       1 | THOMAS       | r50mpm     | 7032300011 |        0 |
|  7499 | ALLEN    | M      | SALESMAN            | 7698 | 1981-02-20 | 1600 |  300 |     30 |       4 | ALWAYS TESTE | sales@2017 | 7032300096 |        1 |
|  7521 | WARD     | M      | SALESMAN            | 7698 | 1981-02-22 | 1250 |  500 |     30 |       1 | WARD         | sales@2017 | 7132300034 |        1 |
|  7566 | JONES    | M      | MANAGER             | 7839 | 1981-04-02 | 2975 | NULL |     20 |       4 | HONEYCOMB    | a12recmpm  | 7132300039 |        1 |
|  7654 | MARTIN   | M      | SALESMAN            | 7698 | 1981-09-28 | 1250 | 1400 |     30 |       6 | LIFE RACER   | sales@2017 | 7132300050 |        1 |
|  7698 | BLAKE    | M      | MANAGER             | 7839 | 1981-05-01 | 2850 | NULL |     30 |       1 | BIG BEN      | sales@2017 | 7132300027 |        1 |
|  7782 | CLARK    | M      | MANAGER             | 7839 | 1981-06-09 | 2450 | NULL |     10 |       3 | CLARK        | r50mpm     | 7032300001 |        1 |
|  7788 | SCOTT    | M      | ANALYST             | 7566 | 1982-12-09 | 3000 | NULL |     20 |       3 | WHITE SAND   | a12recmpm  | NULL       |        1 |
|  7839 | KING     | M      | PRESIDENT           | NULL | 1981-11-17 | 5000 | NULL |     10 |       1 | KING         | r50mpm     | 7132300081 |        1 |
|  7840 | FRED     | M      | vice PRESIDENT      | 7839 | 1983-08-09 | 5000 | NULL |     20 |       1 | SAND STONE   | a12recmpm  | NULL       |        1 |
|  7844 | TURNER   | M      | SALESMAN            | 7698 | 1981-09-08 | 1500 |    0 |     30 |       5 | SAND DUST    | sales@2017 | NULL       |        1 |
|  7876 | ADAMS    | M      | CLERK               | 7788 | 1983-01-12 | 1100 | NULL |     20 |       1 | CRAZY ANYONE | a12recmpm  | 7132300086 |        1 |
|  7900 | JAMES    | M      | CLERK               | 7698 | 1981-12-03 |  950 | NULL |     30 |       2 | CRAZY LEADER | sales@2017 | 7132300042 |        1 |
|  7902 | FORD     | M      | ANALYST             | 7566 | 1981-12-03 | 3000 | NULL |     20 |       4 | CONBRIO      | a12recmpm  | NULL       |        0 |
|  7919 | HOFFMAN  | M      | MANAGER             | 7566 | 1982-03-24 | 4150 | NULL |     30 |       3 | INTERVAL     | sales@2017 | NULL       |        1 |
|  7920 | GRASS    | M      | SALESMAN            | 7919 | 1980-02-14 | 2575 | 2700 |     30 |       5 | GRASS        | sales@2017 | NULL       |        1 |
|  7934 | MILLER   | M      | CLERK               | 7782 | 1982-01-23 | 1300 | NULL |     10 |       2 | QUARTERNOTE  | r50mpm     | 7132300055 |        0 |
|  7945 | AARUSH   | M      | SALESMAN            | 7902 | 1980-02-14 | 1350 | 2700 |     30 |    NULL | AARUSH       | ABCDEF     | NULL       |        0 |
|  7949 | ALEX     | M      | MANAGER             | 7698 | 1982-01-24 | 1250 |  500 |     30 |       5 | QUARTERREST  | sales@2017 | 7156567183 |        1 |
|  8433 | NATASHA  | F      | CLERK               | 7920 | 1981-07-19 | 1750 | NULL |     30 |       1 | NATASHA      | sales@2017 | NULL       |        1 |
|  9400 | SANGITA  | F      | Compliance officers | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SANGITA      | NULL       | NULL       |        1 |
|  9473 | SUPRIYA  | F      | ANALYST             | 7920 | 1981-07-19 | 1750 | NULL |     50 |       1 | SUPRIYA      | XYZ@1234   | NULL       |        1 |
+-------+----------+--------+---------------------+------+------------+------+------+--------+---------+--------------+------------+------------+----------+
28 rows in set (0.00 sec)

mysql> select ename, job, hiredate from emp where hiredate between '1981-02-01' and '1981-05-31';
+-------+----------+------------+
| ename | job      | hiredate   |
+-------+----------+------------+
| ALLEN | SALESMAN | 1981-02-20 |
| WARD  | SALESMAN | 1981-02-22 |
| JONES | MANAGER  | 1981-04-02 |
| BLAKE | MANAGER  | 1981-05-01 |
+-------+----------+------------+
4 rows in set (0.00 sec)

mysql> select ename, hiredate from emp where year(hiredate) = 1982;
+---------+------------+
| ename   | hiredate   |
+---------+------------+
| SCOTT   | 1982-12-09 |
| HOFFMAN | 1982-03-24 |
| MILLER  | 1982-01-23 |
| ALEX    | 1982-01-24 |
+---------+------------+
4 rows in set (0.00 sec)

mysql> select now() as `Current Date`;
+---------------------+
| Current Date        |
+---------------------+
| 2024-10-19 11:56:19 |
+---------------------+
1 row in set (0.00 sec)

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

mysql>