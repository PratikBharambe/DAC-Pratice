mysql> select ename, job from emp where not job = 'manager';
+----------+---------------------+
| ename    | job                 |
+----------+---------------------+
| GITA     | Compliance officers |
| VRUSHALI | Compliance officers |
| SHARMIN  | Public Relation     |
| BANDISH  | Public Relation     |
| SMITH    | CLERK               |
| AARAV    | CLERK               |
| THOMAS   | CLERK               |
| ALLEN    | SALESMAN            |
| WARD     | SALESMAN            |
| MARTIN   | SALESMAN            |
| SCOTT    | ANALYST             |
| KING     | PRESIDENT           |
| FRED     | vice PRESIDENT      |
| TURNER   | SALESMAN            |
| ADAMS    | CLERK               |
| JAMES    | CLERK               |
| FORD     | ANALYST             |
| GRASS    | SALESMAN            |
| MILLER   | CLERK               |
| AARUSH   | SALESMAN            |
| NATASHA  | CLERK               |
| SANGITA  | Compliance officers |
| SUPRIYA  | ANALYST             |
+----------+---------------------+
23 rows in set (0.00 sec)

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

mysql> select ename, gender, deptno from emp f where not exists (select true from emp m where f.deptno = m.deptno and gender = "m");
+----------+--------+--------+
| ename    | gender | deptno |
+----------+--------+--------+
| VRUSHALI | F      |     50 |
| SANGITA  | F      |     50 |
| SUPRIYA  | F      |     50 |
+----------+--------+--------+
3 rows in set (0.00 sec)

mysql> create or replace view v1 as select * from dept;
Query OK, 0 rows affected (0.08 sec)

mysql> show create view v1;
+------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------+----------------------+
| View | Create View                                                                                                                                                                                                                             | character_set_client | collation_connection |
+------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------+----------------------+
| v1   | CREATE ALGORITHM=UNDEFINED DEFINER=`dac16`@`%` SQL SECURITY DEFINER VIEW `v1` AS select `dept`.`DEPTNO` AS `DEPTNO`,`dept`.`DNAME` AS `DNAME`,`dept`.`LOC` AS `LOC`,`dept`.`PWD` AS `PWD`,`dept`.`STARTEDON` AS `STARTEDON` from `dept` | cp850                | cp850_general_ci     |
+------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------+----------------------+
1 row in set (0.00 sec)

mysql> select * from v1;
+--------+------------+----------+------------+------------+
| DEPTNO | DNAME      | LOC      | PWD        | STARTEDON  |
+--------+------------+----------+------------+------------+
|     10 | ACCOUNTING | NEW YORK | r50mpm     | 24/03/1989 |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 |
+--------+------------+----------+------------+------------+
5 rows in set (0.05 sec)

mysql> select * from dept;
+--------+------------+----------+------------+------------+
| DEPTNO | DNAME      | LOC      | PWD        | STARTEDON  |
+--------+------------+----------+------------+------------+
|     10 | ACCOUNTING | NEW YORK | r50mpm     | 24/03/1989 |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 |
+--------+------------+----------+------------+------------+
5 rows in set (0.00 sec)

mysql> update dept set dname = "Accounting" where deptno = 10;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from v1;
+--------+------------+----------+------------+------------+
| DEPTNO | DNAME      | LOC      | PWD        | STARTEDON  |
+--------+------------+----------+------------+------------+
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 |
+--------+------------+----------+------------+------------+
5 rows in set (0.00 sec)

mysql> alter table dept add column city varchar(10) default "kund";
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from v1;
+--------+------------+----------+------------+------------+
| DEPTNO | DNAME      | LOC      | PWD        | STARTEDON  |
+--------+------------+----------+------------+------------+
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 |
+--------+------------+----------+------------+------------+
5 rows in set (0.00 sec)

mysql> create or replace view v1 as select * from dept;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from v1;
+--------+------------+----------+------------+------------+------+
| DEPTNO | DNAME      | LOC      | PWD        | STARTEDON  | city |
+--------+------------+----------+------------+------------+------+
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | kund |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | kund |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | kund |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | kund |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | kund |
+--------+------------+----------+------------+------------+------+
5 rows in set (0.00 sec)

mysql> alter table dept drop column city;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc dept;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| DEPTNO    | int         | NO   | PRI | NULL    |       |
| DNAME     | varchar(12) | YES  |     | NULL    |       |
| LOC       | varchar(10) | YES  |     | NULL    |       |
| PWD       | varchar(20) | YES  |     | NULL    |       |
| STARTEDON | varchar(10) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table dept add column city varchar(10);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from v1;
+--------+------------+----------+------------+------------+------+
| DEPTNO | DNAME      | LOC      | PWD        | STARTEDON  | city |
+--------+------------+----------+------------+------------+------+
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
+--------+------------+----------+------------+------------+------+
5 rows in set (0.00 sec)

mysql> desc v1;
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

mysql> insert into v1 values(1, 1, 1, 1, 1, 1);
Query OK, 1 row affected (0.04 sec)

mysql> select * from dept;
+--------+------------+----------+------------+------------+------+
| DEPTNO | DNAME      | LOC      | PWD        | STARTEDON  | city |
+--------+------------+----------+------------+------------+------+
|      1 | 1          | 1        | 1          | 1          | 1    |
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
+--------+------------+----------+------------+------------+------+
6 rows in set (0.00 sec)

mysql> create or replace view v1 as select * from dept where deptno = 10;
Query OK, 0 rows affected (0.04 sec)

mysql> select * from dept;
+--------+------------+----------+------------+------------+------+
| DEPTNO | DNAME      | LOC      | PWD        | STARTEDON  | city |
+--------+------------+----------+------------+------------+------+
|      1 | 1          | 1        | 1          | 1          | 1    |
|     10 | Accounting | NEW YORK | r50mpm     | 24/03/1989 | NULL |
|     20 | RESEARCH   | DALLAS   | a12recmpm  | 12/04/1989 | NULL |
|     30 | SALES      | CHICAGO  | sales@2017 | 13/04/1989 | NULL |
|     40 | OPERATIONS | BOSTON   | opr@123    | 12/07/1989 | NULL |
|     50 | HR         | PUNE     | PUN@8877   | 22/12/1989 | NULL |
+--------+------------+----------+------------+------------+------+
6 rows in set (0.00 sec)

mysql> insert into v1 values (2, 2, 2, 2, 2, 2);
Query OK, 1 row affected (0.04 sec)

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

mysql> select * from v1;
+--------+------------+----------+--------+------------+------+
| DEPTNO | DNAME      | LOC      | PWD    | STARTEDON  | city |
+--------+------------+----------+--------+------------+------+
|     10 | Accounting | NEW YORK | r50mpm | 24/03/1989 | NULL |
+--------+------------+----------+--------+------------+------+
1 row in set (0.00 sec)

mysql> create table h as select * from dept;
Query OK, 7 rows affected (0.11 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> create or replace view v1 as select * from h where deptno = 10;
Query OK, 0 rows affected (0.04 sec)

mysql> create or replace view v1 as select * from h where deptno = 10 with check option;
Query OK, 0 rows affected (0.13 sec)

mysql> select * from h;
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

mysql> insert into v1 values (10, 1, 1, 3, 4, 5);
Query OK, 1 row affected (0.05 sec)

mysql> select * from v1;
+--------+------------+----------+--------+------------+------+
| DEPTNO | DNAME      | LOC      | PWD    | STARTEDON  | city |
+--------+------------+----------+--------+------------+------+
|     10 | Accounting | NEW YORK | r50mpm | 24/03/1989 | NULL |
|     10 | 1          | 1        | 3      | 4          | 5    |
+--------+------------+----------+--------+------------+------+
2 rows in set (0.00 sec)

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

mysql> select * from traintimetable;
+----+---------+----------------------------+----------+----------+
| id | trainID | stationname                | distance | timing   |
+----+---------+----------------------------+----------+----------+
|  1 |   22863 | mumbai central             |        0 | 08:30:00 |
|  2 |   22863 | surat                      |      262 | 12:40:13 |
|  3 |   22863 | baroda                     |      129 | 14:42:00 |
|  4 |   22863 | ahmedabad JN               |      100 | 17:10:00 |
|  5 |   22863 | surendranagar              |      130 | 20:00:00 |
|  6 |   22863 | rajkot JN                  |      116 | 23:40:00 |
|  7 |   22863 | hapa                       |       75 | 00:05:00 |
|  8 |   22868 | pune JN                    |        0 | 17:20:00 |
|  9 |   22868 | uruli                      |       30 | 17:47:13 |
| 10 |   22868 | daund chord line           |     87.1 | 18:27:00 |
| 11 |   22868 | ahmadnagar                 |       71 | 20:10:00 |
| 12 |   22868 | belapur                    |       61 | 21:15:00 |
| 13 |   22868 | kopargaon                  |       44 | 21:57:00 |
| 14 |   22868 | manmad JN                  |    41.84 | 23:25:13 |
| 15 |   22868 | daund chord line           |      249 | 18:27:00 |
| 16 |   22868 | bhopal                     |      728 | 08:55:00 |
| 17 |   12267 | mumbai central             |        0 | 23:00:00 |
| 18 |   12267 | ahmedabad JN               |      534 | 05:00:00 |
| 19 |   12267 | surendranagar              |      131 | 07:20:00 |
| 20 |   12267 | rajkot JN                  |      106 | 09:15:00 |
| 21 |   12267 | hapa                       |      191 | 12:45:00 |
| 22 |   12307 | HOWRAH JN                  |     2271 | 23:25:00 |
| 23 |   12307 | BARDDHAMAN JN              |     99.6 | 00:31:00 |
| 24 |   12307 | ASANSOL JN                 |      107 | 02:09:00 |
| 25 |   12307 | DHANBAD JN                 |       65 | 03:25:00 |
| 26 |   12307 | PARASNATH                  |       49 | 04:02:00 |
| 27 |   12307 | KODERMA                    |      115 | 04:54:00 |
| 28 |   12307 | GAYA JN                    |       76 | 06:30:00 |
| 29 |   12307 | ANUGRAHA NARAYAN ROAD      |      115 | 07:20:00 |
| 30 |   12307 | DEHRI ON SONE              |       17 | 07:40:00 |
| 31 |   12307 | SASARAM                    |       55 | 07:58:00 |
| 32 |   12307 | BHABUA ROAD                |       31 | 08:38:00 |
| 33 |   12307 | PT DEEN DAYAL UPADHYAYA JN |       90 | 09:55:00 |
| 34 |   12307 | MIRZAPUR                   |    155.5 | 10:55:00 |
| 35 |   12307 | PRAYAGRAJ JN               |       99 | 12:20:00 |
| 36 |   12307 | FATEHPUR                   |      155 | 13:32:00 |
| 37 |   12307 | KANPUR CENTRAL             |       75 | 14:55:00 |
| 38 |   12307 | ETAWAH                     |       47 | 16:27:00 |
| 39 |   12307 | TUNDLA JN                  |       54 | 18:35:00 |
| 40 |   12307 | AGRA FORT                  |       21 | 19:30:00 |
| 41 |   12307 | ACHHNERA JN                |      227 | 20:14:00 |
| 42 |   12307 | BHARATPUR JN               |      746 | 20:44:00 |
| 43 |   12307 | GAYA JN                    |       90 | 06:30:00 |
| 44 |   12307 | JAIPUR                     |       33 | 00:05:00 |
| 45 |   12307 | NAWA CITY                  |       14 | 01:38:00 |
| 46 |   12307 | KUCHAMAN CITY              |       44 | 01:55:00 |
| 47 |   12307 | MAKRANA JN                 |       59 | 02:03:00 |
| 48 |   12307 | DEGANA JN                  |      104 | 02:37:00 |
| 49 |   12307 | MERTA ROAD JN              |        0 | 03:15:00 |
| 50 |   12307 | JODHPUR JN                 |       89 | 04:20:00 |
| 51 |   12308 | JAIPUR                     |       21 | 00:05:00 |
| 52 |   12308 | NAWA CITY                  |       14 | 01:38:00 |
| 53 |   12308 | KUCHAMAN CITY              |       44 | 01:55:00 |
| 54 |   12308 | MAKRANA JN                 |       46 | 02:03:00 |
| 55 |   12308 | DEGANA JN                  |      103 | 02:37:00 |
| 56 |   12308 | MERTA ROAD JN              |     NULL | 03:15:00 |
| 57 |   12308 | JODHPUR JN                 |     NULL | 04:20:00 |
+----+---------+----------------------------+----------+----------+
57 rows in set (0.05 sec)

mysql> select trainid, stationname from traintimetable where trainid = 22863;
+---------+----------------+
| trainid | stationname    |
+---------+----------------+
|   22863 | mumbai central |
|   22863 | surat          |
|   22863 | baroda         |
|   22863 | ahmedabad JN   |
|   22863 | surendranagar  |
|   22863 | rajkot JN      |
|   22863 | hapa           |
+---------+----------------+
7 rows in set (0.00 sec)

mysql> select trainid, stationname ,lead(stationname) over(partition by trainid order by id) from traintimetable where trainid = 22863;
+---------+----------------+----------------------------------------------------------+
| trainid | stationname    | lead(stationname) over(partition by trainid order by id) |
+---------+----------------+----------------------------------------------------------+
|   22863 | mumbai central | surat                                                    |
|   22863 | surat          | baroda                                                   |
|   22863 | baroda         | ahmedabad JN                                             |
|   22863 | ahmedabad JN   | surendranagar                                            |
|   22863 | surendranagar  | rajkot JN                                                |
|   22863 | rajkot JN      | hapa                                                     |
|   22863 | hapa           | NULL                                                     |
+---------+----------------+----------------------------------------------------------+
7 rows in set (0.01 sec)

mysql>