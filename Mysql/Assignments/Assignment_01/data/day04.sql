
C:\Users\SALEEL>mysql --user=root --password=root z1
mysql: [Warning] Using a password on the command line interface can be insecure.
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 20
Server version: 8.1.0 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> select * from numberstring;
+---------------+
| c1            |
+---------------+
| 1saleel       |
| 34sharmin     |
| 56731vrushali |
| 6001GITA      |
| 6129VRUSHALI  |
| 6473SHARMIN   |
| 6781BANDISH   |
| 7369SMITH     |
| 7415AARAV     |
| 7421THOMAS    |
| 743ruhan      |
| 7499ALLEN     |
| 7521WARD      |
| 7566JONES     |
| 7654MARTIN    |
| 7657822ajay   |
| 7698BLAKE     |
| 7782CLARK     |
| 7788SCOTT     |
| 7839KING      |
| 7840FRED      |
| 7844TURNER    |
| 7876ADAMS     |
| 7900JAMES     |
| 7902FORD      |
| 7919HOFFMAN   |
| 7920GRASS     |
| 7934MILLER    |
| 7945AARUSH    |
| 7949ALEX      |
| 836379bandish |
| 8433NATASHA   |
| 9400SANGITA   |
| 9473SUPRIYA   |
+---------------+
34 rows in set (0.01 sec)

mysql> select c1, c1/1 R1 from numberstring;
+---------------+---------+
| c1            | R1      |
+---------------+---------+
| 1saleel       |       1 |
| 34sharmin     |      34 |
| 56731vrushali |   56731 |
| 6001GITA      |    6001 |
| 6129VRUSHALI  |    6129 |
| 6473SHARMIN   |    6473 |
| 6781BANDISH   |    6781 |
| 7369SMITH     |    7369 |
| 7415AARAV     |    7415 |
| 7421THOMAS    |    7421 |
| 743ruhan      |     743 |
| 7499ALLEN     |    7499 |
| 7521WARD      |    7521 |
| 7566JONES     |    7566 |
| 7654MARTIN    |    7654 |
| 7657822ajay   | 7657822 |
| 7698BLAKE     |    7698 |
| 7782CLARK     |    7782 |
| 7788SCOTT     |    7788 |
| 7839KING      |    7839 |
| 7840FRED      |    7840 |
| 7844TURNER    |    7844 |
| 7876ADAMS     |    7876 |
| 7900JAMES     |    7900 |
| 7902FORD      |    7902 |
| 7919HOFFMAN   |    7919 |
| 7920GRASS     |    7920 |
| 7934MILLER    |    7934 |
| 7945AARUSH    |    7945 |
| 7949ALEX      |    7949 |
| 836379bandish |  836379 |
| 8433NATASHA   |    8433 |
| 9400SANGITA   |    9400 |
| 9473SUPRIYA   |    9473 |
+---------------+---------+
34 rows in set, 34 warnings (0.00 sec)

mysql> select * from stringnumber;
+---------------+
| c1            |
+---------------+
| GITA6001      |
| VRUSHALI6129  |
| SHARMIN6473   |
| BANDISH6781   |
| SMITH7369     |
| AARAV7415     |
| THOMAS7421    |
| ALLEN7499     |
| WARD7521      |
| JONES7566     |
| MARTIN7654    |
| BLAKE7698     |
| CLARK7782     |
| SCOTT7788     |
| KING7839      |
| FRED7840      |
| TURNER7844    |
| ADAMS7876     |
| JAMES7900     |
| FORD7902      |
| HOFFMAN7919   |
| GRASS7920     |
| MILLER7934    |
| AARUSH7945    |
| ALEX7949      |
| NATASHA8433   |
| SANGITA9400   |
| SUPRIYA9473   |
| saleel1       |
| sharmin34     |
| ruhan743      |
| vrushali56731 |
| bandish836379 |
| ajay7657822   |
+---------------+
34 rows in set (0.03 sec)

mysql> select c1, c1/1 from stringnumber;
+---------------+------+
| c1            | c1/1 |
+---------------+------+
| GITA6001      |    0 |
| VRUSHALI6129  |    0 |
| SHARMIN6473   |    0 |
| BANDISH6781   |    0 |
| SMITH7369     |    0 |
| AARAV7415     |    0 |
| THOMAS7421    |    0 |
| ALLEN7499     |    0 |
| WARD7521      |    0 |
| JONES7566     |    0 |
| MARTIN7654    |    0 |
| BLAKE7698     |    0 |
| CLARK7782     |    0 |
| SCOTT7788     |    0 |
| KING7839      |    0 |
| FRED7840      |    0 |
| TURNER7844    |    0 |
| ADAMS7876     |    0 |
| JAMES7900     |    0 |
| FORD7902      |    0 |
| HOFFMAN7919   |    0 |
| GRASS7920     |    0 |
| MILLER7934    |    0 |
| AARUSH7945    |    0 |
| ALEX7949      |    0 |
| NATASHA8433   |    0 |
| SANGITA9400   |    0 |
| SUPRIYA9473   |    0 |
| saleel1       |    0 |
| sharmin34     |    0 |
| ruhan743      |    0 |
| vrushali56731 |    0 |
| bandish836379 |    0 |
| ajay7657822   |    0 |
+---------------+------+
34 rows in set, 34 warnings (0.00 sec)

mysql> select ename, ename='smith' from emp;
+----------+---------------+
| ename    | ename='smith' |
+----------+---------------+
| GITA     |             0 |
| VRUSHALI |             0 |
| SHARMIN  |             0 |
| BANDISH  |             0 |
| SMITH    |             1 |
| AARAV    |             0 |
| THOMAS   |             0 |
| ALLEN    |             0 |
| WARD     |             0 |
| JONES    |             0 |
| MARTIN   |             0 |
| BLAKE    |             0 |
| CLARK    |             0 |
| SCOTT    |             0 |
| KING     |             0 |
| FRED     |             0 |
| TURNER   |             0 |
| ADAMS    |             0 |
| JAMES    |             0 |
| FORD     |             0 |
| HOFFMAN  |             0 |
| GRASS    |             0 |
| MILLER   |             0 |
| AARUSH   |             0 |
| ALEX     |             0 |
| NATASHA  |             0 |
| SANGITA  |             0 |
| SUPRIYA  |             0 |
+----------+---------------+
28 rows in set (0.01 sec)

mysql> select true;
+------+
| true |
+------+
|    1 |
+------+
1 row in set (0.00 sec)

mysql> select true, True, TRUE;
+------+------+------+
| true | True | TRUE |
+------+------+------+
|    1 |    1 |    1 |
+------+------+------+
1 row in set (0.00 sec)

mysql> select true, True, TRUE, false;
+------+------+------+-------+
| true | True | TRUE | false |
+------+------+------+-------+
|    1 |    1 |    1 |     0 |
+------+------+------+-------+
1 row in set (0.00 sec)

mysql> select ename, ename= binary 'smith' from emp;
+----------+-----------------------+
| ename    | ename= binary 'smith' |
+----------+-----------------------+
| GITA     |                     0 |
| VRUSHALI |                     0 |
| SHARMIN  |                     0 |
| BANDISH  |                     0 |
| SMITH    |                     0 |
| AARAV    |                     0 |
| THOMAS   |                     0 |
| ALLEN    |                     0 |
| WARD     |                     0 |
| JONES    |                     0 |
| MARTIN   |                     0 |
| BLAKE    |                     0 |
| CLARK    |                     0 |
| SCOTT    |                     0 |
| KING     |                     0 |
| FRED     |                     0 |
| TURNER   |                     0 |
| ADAMS    |                     0 |
| JAMES    |                     0 |
| FORD     |                     0 |
| HOFFMAN  |                     0 |
| GRASS    |                     0 |
| MILLER   |                     0 |
| AARUSH   |                     0 |
| ALEX     |                     0 |
| NATASHA  |                     0 |
| SANGITA  |                     0 |
| SUPRIYA  |                     0 |
+----------+-----------------------+
28 rows in set, 1 warning (0.01 sec)

mysql> select ename, ename= binary 'smith' from emp;
+----------+-----------------------+
| ename    | ename= binary 'smith' |
+----------+-----------------------+
| GITA     |                     0 |
| VRUSHALI |                     0 |
| SHARMIN  |                     0 |
| BANDISH  |                     0 |
| SMITH    |                     0 |
| AARAV    |                     0 |
| THOMAS   |                     0 |
| ALLEN    |                     0 |
| WARD     |                     0 |
| JONES    |                     0 |
| MARTIN   |                     0 |
| BLAKE    |                     0 |
| CLARK    |                     0 |
| SCOTT    |                     0 |
| KING     |                     0 |
| FRED     |                     0 |
| TURNER   |                     0 |
| ADAMS    |                     0 |
| JAMES    |                     0 |
| FORD     |                     0 |
| HOFFMAN  |                     0 |
| GRASS    |                     0 |
| MILLER   |                     0 |
| AARUSH   |                     0 |
| ALEX     |                     0 |
| NATASHA  |                     0 |
| SANGITA  |                     0 |
| SUPRIYA  |                     0 |
+----------+-----------------------+
28 rows in set, 1 warning (0.00 sec)

mysql>
mysql>
mysql>
mysql> select database();
+------------+
| database() |
+------------+
| z1         |
+------------+
1 row in set (0.01 sec)

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

mysql> create database z2;
Query OK, 1 row affected (0.02 sec)

mysql> use z2;
Database changed
mysql> select * from dept;
ERROR 1146 (42S02): Table 'z2.dept' doesnt exist
mysql> select * from z1.dept;
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

mysql> select ifnull(100, -1);
+-----------------+
| ifnull(100, -1) |
+-----------------+
|             100 |
+-----------------+
1 row in set (0.01 sec)

mysql> select ifnull(null, -1);
+------------------+
| ifnull(null, -1) |
+------------------+
|               -1 |
+------------------+
1 row in set (0.00 sec)

mysql> use z1;
Database changed
mysql> select comm from emp;
+------+
| comm |
+------+
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
|  300 |
|  500 |
| NULL |
| 1400 |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
|    0 |
| NULL |
| NULL |
| NULL |
| NULL |
| 2700 |
| NULL |
| 2700 |
|  500 |
| NULL |
| NULL |
| NULL |
+------+
28 rows in set (0.00 sec)

mysql> select comm, ifnull(comm + 1000, 500) from emp;
+------+--------------------------+
| comm | ifnull(comm + 1000, 500) |
+------+--------------------------+
| NULL |                      500 |
| NULL |                      500 |
| NULL |                      500 |
| NULL |                      500 |
| NULL |                      500 |
| NULL |                      500 |
| NULL |                      500 |
|  300 |                     1300 |
|  500 |                     1500 |
| NULL |                      500 |
| 1400 |                     2400 |
| NULL |                      500 |
| NULL |                      500 |
| NULL |                      500 |
| NULL |                      500 |
| NULL |                      500 |
|    0 |                     1000 |
| NULL |                      500 |
| NULL |                      500 |
| NULL |                      500 |
| NULL |                      500 |
| 2700 |                     3700 |
| NULL |                      500 |
| 2700 |                     3700 |
|  500 |                     1500 |
| NULL |                      500 |
| NULL |                      500 |
| NULL |                      500 |
+------+--------------------------+
28 rows in set (0.00 sec)

mysql> select if(1000 = 1000, 'Good', 'Bad');
+--------------------------------+
| if(1000 = 1000, 'Good', 'Bad') |
+--------------------------------+
| Good                           |
+--------------------------------+
1 row in set (0.00 sec)

mysql> select if(1000 = 1004, 'Good', 'Bad');
+--------------------------------+
| if(1000 = 1004, 'Good', 'Bad') |
+--------------------------------+
| Bad                            |
+--------------------------------+
1 row in set (0.00 sec)

mysql> select nullif(10,10);
+---------------+
| nullif(10,10) |
+---------------+
|          NULL |
+---------------+
1 row in set (0.00 sec)

mysql> select nullif(103,10);
+----------------+
| nullif(103,10) |
+----------------+
|            103 |
+----------------+
1 row in set (0.00 sec)

mysql> select now(), curdate(), curtime();
+---------------------+------------+-----------+
| now()               | curdate()  | curtime() |
+---------------------+------------+-----------+
| 2024-10-16 08:53:00 | 2024-10-16 | 08:53:00  |
+---------------------+------------+-----------+
1 row in set (0.01 sec)

mysql> select now();
+---------------------+
| now()               |
+---------------------+
| 2024-10-16 08:56:33 |
+---------------------+
1 row in set (0.00 sec)

mysql> select now()  + interval 1 day;
+-------------------------+
| now()  + interval 1 day |
+-------------------------+
| 2024-10-17 08:57:37     |
+-------------------------+
1 row in set (0.01 sec)

mysql> select now(), now()  + interval 1 day;
+---------------------+-------------------------+
| now()               | now()  + interval 1 day |
+---------------------+-------------------------+
| 2024-10-16 08:57:58 | 2024-10-17 08:57:58     |
+---------------------+-------------------------+
1 row in set (0.00 sec)

mysql> select now(), now()  + interval 10 day;
+---------------------+--------------------------+
| now()               | now()  + interval 10 day |
+---------------------+--------------------------+
| 2024-10-16 08:58:20 | 2024-10-26 08:58:20      |
+---------------------+--------------------------+
1 row in set (0.00 sec)

mysql> select now(), now()  - interval 10 day;
+---------------------+--------------------------+
| now()               | now()  - interval 10 day |
+---------------------+--------------------------+
| 2024-10-16 08:58:48 | 2024-10-06 08:58:48      |
+---------------------+--------------------------+
1 row in set (0.00 sec)

mysql> select now(), now()  - interval 1 month
    -> ;
+---------------------+---------------------------+
| now()               | now()  - interval 1 month |
+---------------------+---------------------------+
| 2024-10-16 08:59:29 | 2024-09-16 08:59:29       |
+---------------------+---------------------------+
1 row in set (0.00 sec)

mysql> select now(), now()  + interval 1 month
    -> ;
+---------------------+---------------------------+
| now()               | now()  + interval 1 month |
+---------------------+---------------------------+
| 2024-10-16 08:59:44 | 2024-11-16 08:59:44       |
+---------------------+---------------------------+
1 row in set (0.00 sec)

mysql> select now(), now()  + interval 1 hour;
+---------------------+--------------------------+
| now()               | now()  + interval 1 hour |
+---------------------+--------------------------+
| 2024-10-16 09:06:53 | 2024-10-16 10:06:53      |
+---------------------+--------------------------+
1 row in set (0.00 sec)

mysql> select now(), now()  + interval '1 1' day_hour ;
+---------------------+----------------------------------+
| now()               | now()  + interval '1 1' day_hour |
+---------------------+----------------------------------+
| 2024-10-16 09:09:20 | 2024-10-17 10:09:20              |
+---------------------+----------------------------------+
1 row in set (0.00 sec)

mysql> select now(), now()  + interval '1 1' day_minute ;
+---------------------+------------------------------------+
| now()               | now()  + interval '1 1' day_minute |
+---------------------+------------------------------------+
| 2024-10-16 09:10:39 | 2024-10-16 10:11:39                |
+---------------------+------------------------------------+
1 row in set (0.00 sec)

mysql> select now(), now()  + interval '1 0:1' day_minute ;
+---------------------+--------------------------------------+
| now()               | now()  + interval '1 0:1' day_minute |
+---------------------+--------------------------------------+
| 2024-10-16 09:12:01 | 2024-10-17 09:13:01                  |
+---------------------+--------------------------------------+
1 row in set (0.00 sec)

mysql> select now(), now()  + interval '1 0:15' day_minute ;
+---------------------+---------------------------------------+
| now()               | now()  + interval '1 0:15' day_minute |
+---------------------+---------------------------------------+
| 2024-10-16 09:12:50 | 2024-10-17 09:27:50                   |
+---------------------+---------------------------------------+
1 row in set (0.00 sec)

mysql> select hiredate from emp;
+------------+
| hiredate   |
+------------+
| 1981-07-19 |
| 1981-07-19 |
| 1981-07-19 |
| 1981-07-19 |
| 1980-12-17 |
| 1981-12-31 |
| 1981-07-19 |
| 1981-02-20 |
| 1981-02-22 |
| 1981-04-02 |
| 1981-09-28 |
| 1981-05-01 |
| 1981-06-09 |
| 1982-12-09 |
| 1981-11-17 |
| 1983-08-09 |
| 1981-09-08 |
| 1983-01-12 |
| 1981-12-03 |
| 1981-12-03 |
| 1982-03-24 |
| 1980-02-14 |
| 1982-01-23 |
| 1980-02-14 |
| 1982-01-24 |
| 1981-07-19 |
| 1981-07-19 |
| 1981-07-19 |
+------------+
28 rows in set (0.00 sec)

mysql> select now(), adddate(now(), interval 1 day);
+---------------------+--------------------------------+
| now()               | adddate(now(), interval 1 day) |
+---------------------+--------------------------------+
| 2024-10-16 09:18:08 | 2024-10-17 09:18:08            |
+---------------------+--------------------------------+
1 row in set (0.01 sec)

mysql> select now(), adddate(now(), interval 1 day) R1, now() + interval 1 day R2;
+---------------------+---------------------+---------------------+
| now()               | R1                  | R2                  |
+---------------------+---------------------+---------------------+
| 2024-10-16 09:18:34 | 2024-10-17 09:18:34 | 2024-10-17 09:18:34 |
+---------------------+---------------------+---------------------+
1 row in set (0.00 sec)

mysql> select hiredate, extract(day from hiredate) from emp;
+------------+----------------------------+
| hiredate   | extract(day from hiredate) |
+------------+----------------------------+
| 1981-07-19 |                         19 |
| 1981-07-19 |                         19 |
| 1981-07-19 |                         19 |
| 1981-07-19 |                         19 |
| 1980-12-17 |                         17 |
| 1981-12-31 |                         31 |
| 1981-07-19 |                         19 |
| 1981-02-20 |                         20 |
| 1981-02-22 |                         22 |
| 1981-04-02 |                          2 |
| 1981-09-28 |                         28 |
| 1981-05-01 |                          1 |
| 1981-06-09 |                          9 |
| 1982-12-09 |                          9 |
| 1981-11-17 |                         17 |
| 1983-08-09 |                          9 |
| 1981-09-08 |                          8 |
| 1983-01-12 |                         12 |
| 1981-12-03 |                          3 |
| 1981-12-03 |                          3 |
| 1982-03-24 |                         24 |
| 1980-02-14 |                         14 |
| 1982-01-23 |                         23 |
| 1980-02-14 |                         14 |
| 1982-01-24 |                         24 |
| 1981-07-19 |                         19 |
| 1981-07-19 |                         19 |
| 1981-07-19 |                         19 |
+------------+----------------------------+
28 rows in set (0.00 sec)

mysql> select hiredate, extract(month from hiredate) from emp;
+------------+------------------------------+
| hiredate   | extract(month from hiredate) |
+------------+------------------------------+
| 1981-07-19 |                            7 |
| 1981-07-19 |                            7 |
| 1981-07-19 |                            7 |
| 1981-07-19 |                            7 |
| 1980-12-17 |                           12 |
| 1981-12-31 |                           12 |
| 1981-07-19 |                            7 |
| 1981-02-20 |                            2 |
| 1981-02-22 |                            2 |
| 1981-04-02 |                            4 |
| 1981-09-28 |                            9 |
| 1981-05-01 |                            5 |
| 1981-06-09 |                            6 |
| 1982-12-09 |                           12 |
| 1981-11-17 |                           11 |
| 1983-08-09 |                            8 |
| 1981-09-08 |                            9 |
| 1983-01-12 |                            1 |
| 1981-12-03 |                           12 |
| 1981-12-03 |                           12 |
| 1982-03-24 |                            3 |
| 1980-02-14 |                            2 |
| 1982-01-23 |                            1 |
| 1980-02-14 |                            2 |
| 1982-01-24 |                            1 |
| 1981-07-19 |                            7 |
| 1981-07-19 |                            7 |
| 1981-07-19 |                            7 |
+------------+------------------------------+
28 rows in set (0.00 sec)

mysql> select hiredate, extract(year from hiredate) from emp;
+------------+-----------------------------+
| hiredate   | extract(year from hiredate) |
+------------+-----------------------------+
| 1981-07-19 |                        1981 |
| 1981-07-19 |                        1981 |
| 1981-07-19 |                        1981 |
| 1981-07-19 |                        1981 |
| 1980-12-17 |                        1980 |
| 1981-12-31 |                        1981 |
| 1981-07-19 |                        1981 |
| 1981-02-20 |                        1981 |
| 1981-02-22 |                        1981 |
| 1981-04-02 |                        1981 |
| 1981-09-28 |                        1981 |
| 1981-05-01 |                        1981 |
| 1981-06-09 |                        1981 |
| 1982-12-09 |                        1982 |
| 1981-11-17 |                        1981 |
| 1983-08-09 |                        1983 |
| 1981-09-08 |                        1981 |
| 1983-01-12 |                        1983 |
| 1981-12-03 |                        1981 |
| 1981-12-03 |                        1981 |
| 1982-03-24 |                        1982 |
| 1980-02-14 |                        1980 |
| 1982-01-23 |                        1982 |
| 1980-02-14 |                        1980 |
| 1982-01-24 |                        1982 |
| 1981-07-19 |                        1981 |
| 1981-07-19 |                        1981 |
| 1981-07-19 |                        1981 |
+------------+-----------------------------+
28 rows in set (0.00 sec)

mysql> select hiredate, extract(day from hiredate) from emp;
+------------+----------------------------+
| hiredate   | extract(day from hiredate) |
+------------+----------------------------+
| 1981-07-19 |                         19 |
| 1981-07-19 |                         19 |
| 1981-07-19 |                         19 |
| 1981-07-19 |                         19 |
| 1980-12-17 |                         17 |
| 1981-12-31 |                         31 |
| 1981-07-19 |                         19 |
| 1981-02-20 |                         20 |
| 1981-02-22 |                         22 |
| 1981-04-02 |                          2 |
| 1981-09-28 |                         28 |
| 1981-05-01 |                          1 |
| 1981-06-09 |                          9 |
| 1982-12-09 |                          9 |
| 1981-11-17 |                         17 |
| 1983-08-09 |                          9 |
| 1981-09-08 |                          8 |
| 1983-01-12 |                         12 |
| 1981-12-03 |                          3 |
| 1981-12-03 |                          3 |
| 1982-03-24 |                         24 |
| 1980-02-14 |                         14 |
| 1982-01-23 |                         23 |
| 1980-02-14 |                         14 |
| 1982-01-24 |                         24 |
| 1981-07-19 |                         19 |
| 1981-07-19 |                         19 |
| 1981-07-19 |                         19 |
+------------+----------------------------+
28 rows in set (0.00 sec)

mysql> select ename, job, hiredate from emp where extract(day from hiredate) = 19;
+----------+---------------------+------------+
| ename    | job                 | hiredate   |
+----------+---------------------+------------+
| GITA     | Compliance officers | 1981-07-19 |
| VRUSHALI | Compliance officers | 1981-07-19 |
| SHARMIN  | Public Relation     | 1981-07-19 |
| BANDISH  | Public Relation     | 1981-07-19 |
| THOMAS   | CLERK               | 1981-07-19 |
| NATASHA  | CLERK               | 1981-07-19 |
| SANGITA  | Compliance officers | 1981-07-19 |
| SUPRIYA  | ANALYST             | 1981-07-19 |
+----------+---------------------+------------+
8 rows in set (0.00 sec)

mysql> select ename, job, hiredate from emp where extract(year from hiredate) = 1980;
+--------+----------+------------+
| ename  | job      | hiredate   |
+--------+----------+------------+
| SMITH  | CLERK    | 1980-12-17 |
| GRASS  | SALESMAN | 1980-02-14 |
| AARUSH | SALESMAN | 1980-02-14 |
+--------+----------+------------+
3 rows in set (0.00 sec)

mysql> select ename, job, dayname(hiredate) from emp;
+----------+---------------------+-------------------+
| ename    | job                 | dayname(hiredate) |
+----------+---------------------+-------------------+
| GITA     | Compliance officers | Sunday            |
| VRUSHALI | Compliance officers | Sunday            |
| SHARMIN  | Public Relation     | Sunday            |
| BANDISH  | Public Relation     | Sunday            |
| SMITH    | CLERK               | Wednesday         |
| AARAV    | CLERK               | Thursday          |
| THOMAS   | CLERK               | Sunday            |
| ALLEN    | SALESMAN            | Friday            |
| WARD     | SALESMAN            | Sunday            |
| JONES    | MANAGER             | Thursday          |
| MARTIN   | SALESMAN            | Monday            |
| BLAKE    | MANAGER             | Friday            |
| CLARK    | MANAGER             | Tuesday           |
| SCOTT    | ANALYST             | Thursday          |
| KING     | PRESIDENT           | Tuesday           |
| FRED     | vice PRESIDENT      | Tuesday           |
| TURNER   | SALESMAN            | Tuesday           |
| ADAMS    | CLERK               | Wednesday         |
| JAMES    | CLERK               | Thursday          |
| FORD     | ANALYST             | Thursday          |
| HOFFMAN  | MANAGER             | Wednesday         |
| GRASS    | SALESMAN            | Thursday          |
| MILLER   | CLERK               | Saturday          |
| AARUSH   | SALESMAN            | Thursday          |
| ALEX     | MANAGER             | Sunday            |
| NATASHA  | CLERK               | Sunday            |
| SANGITA  | Compliance officers | Sunday            |
| SUPRIYA  | ANALYST             | Sunday            |
+----------+---------------------+-------------------+
28 rows in set (0.01 sec)

mysql> select ename, job, dayname(hiredate) R1  from emp where dayname(hiredate) ='sunday';
+----------+---------------------+--------+
| ename    | job                 | R1     |
+----------+---------------------+--------+
| GITA     | Compliance officers | Sunday |
| VRUSHALI | Compliance officers | Sunday |
| SHARMIN  | Public Relation     | Sunday |
| BANDISH  | Public Relation     | Sunday |
| THOMAS   | CLERK               | Sunday |
| WARD     | SALESMAN            | Sunday |
| ALEX     | MANAGER             | Sunday |
| NATASHA  | CLERK               | Sunday |
| SANGITA  | Compliance officers | Sunday |
| SUPRIYA  | ANALYST             | Sunday |
+----------+---------------------+--------+
10 rows in set (0.00 sec)

mysql> select ename, job, dayname(hiredate) R1  from emp where R1 = 'sunday';
ERROR 1054 (42S22): Unknown column 'R1' in 'where clause'
mysql> select ename, job, dayname(hiredate) R1  from emp where dayname(hiredate) ='sunday';
+----------+---------------------+--------+
| ename    | job                 | R1     |
+----------+---------------------+--------+
| GITA     | Compliance officers | Sunday |
| VRUSHALI | Compliance officers | Sunday |
| SHARMIN  | Public Relation     | Sunday |
| BANDISH  | Public Relation     | Sunday |
| THOMAS   | CLERK               | Sunday |
| WARD     | SALESMAN            | Sunday |
| ALEX     | MANAGER             | Sunday |
| NATASHA  | CLERK               | Sunday |
| SANGITA  | Compliance officers | Sunday |
| SUPRIYA  | ANALYST             | Sunday |
+----------+---------------------+--------+
10 rows in set (0.00 sec)

mysql> select now(), dayofyear(now());
+---------------------+------------------+
| now()               | dayofyear(now()) |
+---------------------+------------------+
| 2024-10-16 09:32:54 |              290 |
+---------------------+------------------+
1 row in set (0.01 sec)

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

mysql> select STARTEDON, str_to_date(STARTEDON,'%d/%m/%Y') from dept;
+------------+-----------------------------------+
| STARTEDON  | str_to_date(STARTEDON,'%d/%m/%Y') |
+------------+-----------------------------------+
| 24/03/1989 | 1989-03-24                        |
| 12/04/1989 | 1989-04-12                        |
| 13/04/1989 | 1989-04-13                        |
| 12/07/1989 | 1989-07-12                        |
| 22/12/1989 | 1989-12-22                        |
+------------+-----------------------------------+
5 rows in set (0.01 sec)

mysql> select date_format(now(), '%y');
+--------------------------+
| date_format(now(), '%y') |
+--------------------------+
| 24                       |
+--------------------------+
1 row in set (0.01 sec)

mysql> select date_format(now(), '%y'),   date_format(now(), '%Y');
+--------------------------+--------------------------+
| date_format(now(), '%y') | date_format(now(), '%Y') |
+--------------------------+--------------------------+
| 24                       | 2024                     |
+--------------------------+--------------------------+
1 row in set (0.00 sec)

mysql> select hiredate, date_format(hiredate, '%d %M  %W') from emp;
+------------+------------------------------------+
| hiredate   | date_format(hiredate, '%d %M  %W') |
+------------+------------------------------------+
| 1981-07-19 | 19 July  Sunday                    |
| 1981-07-19 | 19 July  Sunday                    |
| 1981-07-19 | 19 July  Sunday                    |
| 1981-07-19 | 19 July  Sunday                    |
| 1980-12-17 | 17 December  Wednesday             |
| 1981-12-31 | 31 December  Thursday              |
| 1981-07-19 | 19 July  Sunday                    |
| 1981-02-20 | 20 February  Friday                |
| 1981-02-22 | 22 February  Sunday                |
| 1981-04-02 | 02 April  Thursday                 |
| 1981-09-28 | 28 September  Monday               |
| 1981-05-01 | 01 May  Friday                     |
| 1981-06-09 | 09 June  Tuesday                   |
| 1982-12-09 | 09 December  Thursday              |
| 1981-11-17 | 17 November  Tuesday               |
| 1983-08-09 | 09 August  Tuesday                 |
| 1981-09-08 | 08 September  Tuesday              |
| 1983-01-12 | 12 January  Wednesday              |
| 1981-12-03 | 03 December  Thursday              |
| 1981-12-03 | 03 December  Thursday              |
| 1982-03-24 | 24 March  Wednesday                |
| 1980-02-14 | 14 February  Thursday              |
| 1982-01-23 | 23 January  Saturday               |
| 1980-02-14 | 14 February  Thursday              |
| 1982-01-24 | 24 January  Sunday                 |
| 1981-07-19 | 19 July  Sunday                    |
| 1981-07-19 | 19 July  Sunday                    |
| 1981-07-19 | 19 July  Sunday                    |
+------------+------------------------------------+
28 rows in set (0.00 sec)

mysql> select concat('a', 'b', 'c');
+-----------------------+
| concat('a', 'b', 'c') |
+-----------------------+
| abc                   |
+-----------------------+
1 row in set (0.01 sec)

mysql> select concat('a', 'b', 'c', null);
+-----------------------------+
| concat('a', 'b', 'c', null) |
+-----------------------------+
| NULL                        |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select concat('Mr.', ename, 'was hired on ' , hiredate) R1 from emp;
+------------------------------------+
| R1                                 |
+------------------------------------+
| Mr.GITAwas hired on 1981-07-19     |
| Mr.VRUSHALIwas hired on 1981-07-19 |
| Mr.SHARMINwas hired on 1981-07-19  |
| Mr.BANDISHwas hired on 1981-07-19  |
| Mr.SMITHwas hired on 1980-12-17    |
| Mr.AARAVwas hired on 1981-12-31    |
| Mr.THOMASwas hired on 1981-07-19   |
| Mr.ALLENwas hired on 1981-02-20    |
| Mr.WARDwas hired on 1981-02-22     |
| Mr.JONESwas hired on 1981-04-02    |
| Mr.MARTINwas hired on 1981-09-28   |
| Mr.BLAKEwas hired on 1981-05-01    |
| Mr.CLARKwas hired on 1981-06-09    |
| Mr.SCOTTwas hired on 1982-12-09    |
| Mr.KINGwas hired on 1981-11-17     |
| Mr.FREDwas hired on 1983-08-09     |
| Mr.TURNERwas hired on 1981-09-08   |
| Mr.ADAMSwas hired on 1983-01-12    |
| Mr.JAMESwas hired on 1981-12-03    |
| Mr.FORDwas hired on 1981-12-03     |
| Mr.HOFFMANwas hired on 1982-03-24  |
| Mr.GRASSwas hired on 1980-02-14    |
| Mr.MILLERwas hired on 1982-01-23   |
| Mr.AARUSHwas hired on 1980-02-14   |
| Mr.ALEXwas hired on 1982-01-24     |
| Mr.NATASHAwas hired on 1981-07-19  |
| Mr.SANGITAwas hired on 1981-07-19  |
| Mr.SUPRIYAwas hired on 1981-07-19  |
+------------------------------------+
28 rows in set (0.00 sec)

mysql> select concat('Mr.', ename, ' was hired on ' , hiredate) R1 from emp;
+-------------------------------------+
| R1                                  |
+-------------------------------------+
| Mr.GITA was hired on 1981-07-19     |
| Mr.VRUSHALI was hired on 1981-07-19 |
| Mr.SHARMIN was hired on 1981-07-19  |
| Mr.BANDISH was hired on 1981-07-19  |
| Mr.SMITH was hired on 1980-12-17    |
| Mr.AARAV was hired on 1981-12-31    |
| Mr.THOMAS was hired on 1981-07-19   |
| Mr.ALLEN was hired on 1981-02-20    |
| Mr.WARD was hired on 1981-02-22     |
| Mr.JONES was hired on 1981-04-02    |
| Mr.MARTIN was hired on 1981-09-28   |
| Mr.BLAKE was hired on 1981-05-01    |
| Mr.CLARK was hired on 1981-06-09    |
| Mr.SCOTT was hired on 1982-12-09    |
| Mr.KING was hired on 1981-11-17     |
| Mr.FRED was hired on 1983-08-09     |
| Mr.TURNER was hired on 1981-09-08   |
| Mr.ADAMS was hired on 1983-01-12    |
| Mr.JAMES was hired on 1981-12-03    |
| Mr.FORD was hired on 1981-12-03     |
| Mr.HOFFMAN was hired on 1982-03-24  |
| Mr.GRASS was hired on 1980-02-14    |
| Mr.MILLER was hired on 1982-01-23   |
| Mr.AARUSH was hired on 1980-02-14   |
| Mr.ALEX was hired on 1982-01-24     |
| Mr.NATASHA was hired on 1981-07-19  |
| Mr.SANGITA was hired on 1981-07-19  |
| Mr.SUPRIYA was hired on 1981-07-19  |
+-------------------------------------+
28 rows in set (0.00 sec)

mysql> select concat('Mr.', ename, ' was hired on ' , date_format(hiredate, '%M')) R1 f
rom emp;
+----------------------------------+
| R1                               |
+----------------------------------+
| Mr.GITA was hired on July        |
| Mr.VRUSHALI was hired on July    |
| Mr.SHARMIN was hired on July     |
| Mr.BANDISH was hired on July     |
| Mr.SMITH was hired on December   |
| Mr.AARAV was hired on December   |
| Mr.THOMAS was hired on July      |
| Mr.ALLEN was hired on February   |
| Mr.WARD was hired on February    |
| Mr.JONES was hired on April      |
| Mr.MARTIN was hired on September |
| Mr.BLAKE was hired on May        |
| Mr.CLARK was hired on June       |
| Mr.SCOTT was hired on December   |
| Mr.KING was hired on November    |
| Mr.FRED was hired on August      |
| Mr.TURNER was hired on September |
| Mr.ADAMS was hired on January    |
| Mr.JAMES was hired on December   |
| Mr.FORD was hired on December    |
| Mr.HOFFMAN was hired on March    |
| Mr.GRASS was hired on February   |
| Mr.MILLER was hired on January   |
| Mr.AARUSH was hired on February  |
| Mr.ALEX was hired on January     |
| Mr.NATASHA was hired on July     |
| Mr.SANGITA was hired on July     |
| Mr.SUPRIYA was hired on July     |
+----------------------------------+
28 rows in set (0.00 sec)

mysql> select concat('Mr.', ename, ' was hired on ' , date_format(hiredate, '%M'), null) R1 from emp;
+------+
| R1   |
+------+
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
| NULL |
+------+
28 rows in set (0.00 sec)

mysql> select elt(1,'a', 'b', 'c' ,'d');
+---------------------------+
| elt(1,'a', 'b', 'c' ,'d') |
+---------------------------+
| a                         |
+---------------------------+
1 row in set (0.01 sec)

mysql> select elt(2,'a', 'b', 'c' ,'d');
+---------------------------+
| elt(2,'a', 'b', 'c' ,'d') |
+---------------------------+
| b                         |
+---------------------------+
1 row in set (0.00 sec)

mysql> select * from warehouse;
+--------------+----------------+------------+
| warehouse_id | warehouse_name | channel_id |
+--------------+----------------+------------+
|          143 | AC Warehouse   |          1 |
|          156 | National       |          2 |
|          231 | Global         |          3 |
|          254 | NON-STOP       |          2 |
|          321 | Migrant System |          2 |
|          464 | Blaze          |          1 |
+--------------+----------------+------------+
6 rows in set (0.00 sec)

mysql> select elt(1,ename, job, sal) from emp;
+------------------------+
| elt(1,ename, job, sal) |
+------------------------+
| GITA                   |
| VRUSHALI               |
| SHARMIN                |
| BANDISH                |
| SMITH                  |
| AARAV                  |
| THOMAS                 |
| ALLEN                  |
| WARD                   |
| JONES                  |
| MARTIN                 |
| BLAKE                  |
| CLARK                  |
| SCOTT                  |
| KING                   |
| FRED                   |
| TURNER                 |
| ADAMS                  |
| JAMES                  |
| FORD                   |
| HOFFMAN                |
| GRASS                  |
| MILLER                 |
| AARUSH                 |
| ALEX                   |
| NATASHA                |
| SANGITA                |
| SUPRIYA                |
+------------------------+
28 rows in set (0.00 sec)

mysql> select elt(2,ename, job, sal) from emp;
+------------------------+
| elt(2,ename, job, sal) |
+------------------------+
| Compliance officers    |
| Compliance officers    |
| Public Relation        |
| Public Relation        |
| CLERK                  |
| CLERK                  |
| CLERK                  |
| SALESMAN               |
| SALESMAN               |
| MANAGER                |
| SALESMAN               |
| MANAGER                |
| MANAGER                |
| ANALYST                |
| PRESIDENT              |
| vice PRESIDENT         |
| SALESMAN               |
| CLERK                  |
| CLERK                  |
| ANALYST                |
| MANAGER                |
| SALESMAN               |
| CLERK                  |
| SALESMAN               |
| MANAGER                |
| CLERK                  |
| Compliance officers    |
| ANALYST                |
+------------------------+
28 rows in set (0.00 sec)

mysql> select elt(3,ename, job, sal) from emp;
+------------------------+
| elt(3,ename, job, sal) |
+------------------------+
| 1750                   |
| 1750                   |
| 1750                   |
| 1750                   |
| 800                    |
| 3350                   |
| 1750                   |
| 1600                   |
| 1250                   |
| 2975                   |
| 1250                   |
| 2850                   |
| 2450                   |
| 3000                   |
| 5000                   |
| 5000                   |
| 1500                   |
| 1100                   |
| 950                    |
| 3000                   |
| 4150                   |
| 2575                   |
| 1300                   |
| 1350                   |
| 1250                   |
| 1750                   |
| 1750                   |
| 1750                   |
+------------------------+
28 rows in set (0.00 sec)

mysql> select elt(5,ename, job, sal) from emp;
+------------------------+
| elt(5,ename, job, sal) |
+------------------------+
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
+------------------------+
28 rows in set (0.00 sec)

mysql> select elt(-1,ename, job, sal) from emp;
+-------------------------+
| elt(-1,ename, job, sal) |
+-------------------------+
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
| NULL                    |
+-------------------------+
28 rows in set (0.00 sec)

mysql> select elt(0,ename, job, sal) from emp;
+------------------------+
| elt(0,ename, job, sal) |
+------------------------+
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
| NULL                   |
+------------------------+
28 rows in set (0.00 sec)

mysql> select ename,length(ename) from emp;
+----------+---------------+
| ename    | length(ename) |
+----------+---------------+
| GITA     |             4 |
| VRUSHALI |             8 |
| SHARMIN  |             7 |
| BANDISH  |             7 |
| SMITH    |             5 |
| AARAV    |             5 |
| THOMAS   |             6 |
| ALLEN    |             5 |
| WARD     |             4 |
| JONES    |             5 |
| MARTIN   |             6 |
| BLAKE    |             5 |
| CLARK    |             5 |
| SCOTT    |             5 |
| KING     |             4 |
| FRED     |             4 |
| TURNER   |             6 |
| ADAMS    |             5 |
| JAMES    |             5 |
| FORD     |             4 |
| HOFFMAN  |             7 |
| GRASS    |             5 |
| MILLER   |             6 |
| AARUSH   |             6 |
| ALEX     |             4 |
| NATASHA  |             7 |
| SANGITA  |             7 |
| SUPRIYA  |             7 |
+----------+---------------+
28 rows in set (0.00 sec)

mysql> select ename,length(ename) from emp where length(ename)=4;
+-------+---------------+
| ename | length(ename) |
+-------+---------------+
| GITA  |             4 |
| WARD  |             4 |
| KING  |             4 |
| FRED  |             4 |
| FORD  |             4 |
| ALEX  |             4 |
+-------+---------------+
6 rows in set (0.00 sec)

mysql> select lcase(ename),length(ename) from emp where length(ename)=4;
+--------------+---------------+
| lcase(ename) | length(ename) |
+--------------+---------------+
| gita         |             4 |
| ward         |             4 |
| king         |             4 |
| fred         |             4 |
| ford         |             4 |
| alex         |             4 |
+--------------+---------------+
6 rows in set (0.00 sec)

mysql> select lpad('saleel', 10, '*');
+-------------------------+
| lpad('saleel', 10, '*') |
+-------------------------+
| ****saleel              |
+-------------------------+
1 row in set (0.01 sec)

mysql> select rpad('saleel', 10, '*');
+-------------------------+
| rpad('saleel', 10, '*') |
+-------------------------+
| saleel****              |
+-------------------------+
1 row in set (0.01 sec)

mysql> select phone from emp;
+------------+
| phone      |
+------------+
| NULL       |
| NULL       |
| NULL       |
| NULL       |
| 7032300023 |
| 7032300084 |
| 7032300011 |
| 7032300096 |
| 7132300034 |
| 7132300039 |
| 7132300050 |
| 7132300027 |
| 7032300001 |
| NULL       |
| 7132300081 |
| NULL       |
| NULL       |
| 7132300086 |
| 7132300042 |
| NULL       |
| NULL       |
| NULL       |
| 7132300055 |
| NULL       |
| 7156567183 |
| NULL       |
| NULL       |
| NULL       |
+------------+
28 rows in set (0.00 sec)

mysql> select repeat('s',4);
+---------------+
| repeat('s',4) |
+---------------+
| ssss          |
+---------------+
1 row in set (0.00 sec)

mysql> select repeat('saleel',4);
+--------------------------+
| repeat('saleel',4)       |
+--------------------------+
| saleelsaleelsaleelsaleel |
+--------------------------+
1 row in set (0.00 sec)

mysql> select sal, repeat('*', sal/1000) from emp;
+------+-----------------------+
| sal  | repeat('*', sal/1000) |
+------+-----------------------+
| 1750 | **                    |
| 1750 | **                    |
| 1750 | **                    |
| 1750 | **                    |
|  800 | *                     |
| 3350 | ***                   |
| 1750 | **                    |
| 1600 | **                    |
| 1250 | *                     |
| 2975 | ***                   |
| 1250 | *                     |
| 2850 | ***                   |
| 2450 | **                    |
| 3000 | ***                   |
| 5000 | *****                 |
| 5000 | *****                 |
| 1500 | **                    |
| 1100 | *                     |
|  950 | *                     |
| 3000 | ***                   |
| 4150 | ****                  |
| 2575 | ***                   |
| 1300 | *                     |
| 1350 | *                     |
| 1250 | *                     |
| 1750 | **                    |
| 1750 | **                    |
| 1750 | **                    |
+------+-----------------------+
28 rows in set (0.00 sec)

mysql> select sal, repeat('*', sal/100) from emp;
+------+----------------------------------------------------+
| sal  | repeat('*', sal/100)                               |
+------+----------------------------------------------------+
| 1750 | ******************                                 |
| 1750 | ******************                                 |
| 1750 | ******************                                 |
| 1750 | ******************                                 |
|  800 | ********                                           |
| 3350 | **********************************                 |
| 1750 | ******************                                 |
| 1600 | ****************                                   |
| 1250 | *************                                      |
| 2975 | ******************************                     |
| 1250 | *************                                      |
| 2850 | *****************************                      |
| 2450 | *************************                          |
| 3000 | ******************************                     |
| 5000 | ************************************************** |
| 5000 | ************************************************** |
| 1500 | ***************                                    |
| 1100 | ***********                                        |
|  950 | **********                                         |
| 3000 | ******************************                     |
| 4150 | ******************************************         |
| 2575 | **************************                         |
| 1300 | *************                                      |
| 1350 | **************                                     |
| 1250 | *************                                      |
| 1750 | ******************                                 |
| 1750 | ******************                                 |
| 1750 | ******************                                 |
+------+----------------------------------------------------+
28 rows in set (0.00 sec)

mysql> select phone, right(phone,4) from emp;
+------------+----------------+
| phone      | right(phone,4) |
+------------+----------------+
| NULL       | NULL           |
| NULL       | NULL           |
| NULL       | NULL           |
| NULL       | NULL           |
| 7032300023 | 0023           |
| 7032300084 | 0084           |
| 7032300011 | 0011           |
| 7032300096 | 0096           |
| 7132300034 | 0034           |
| 7132300039 | 0039           |
| 7132300050 | 0050           |
| 7132300027 | 0027           |
| 7032300001 | 0001           |
| NULL       | NULL           |
| 7132300081 | 0081           |
| NULL       | NULL           |
| NULL       | NULL           |
| 7132300086 | 0086           |
| 7132300042 | 0042           |
| NULL       | NULL           |
| NULL       | NULL           |
| NULL       | NULL           |
| 7132300055 | 0055           |
| NULL       | NULL           |
| 7156567183 | 7183           |
| NULL       | NULL           |
| NULL       | NULL           |
| NULL       | NULL           |
+------------+----------------+
28 rows in set (0.01 sec)

mysql> select '      saleel';
+--------------+
| saleel       |
+--------------+
|       saleel |
+--------------+
1 row in set (0.00 sec)

mysql> select '      saleel', ltrim('      saleel');
+--------------+-----------------------+
| saleel       | ltrim('      saleel') |
+--------------+-----------------------+
|       saleel | saleel                |
+--------------+-----------------------+
1 row in set (0.00 sec)

mysql> select '      saleel', ltrim('      saleel') R1;
+--------------+--------+
| saleel       | R1     |
+--------------+--------+
|       saleel | saleel |
+--------------+--------+
1 row in set (0.00 sec)

mysql> select ename, replace(ename,'A', ' ') from emp;
+----------+-------------------------+
| ename    | replace(ename,'A', ' ') |
+----------+-------------------------+
| GITA     | GIT                     |
| VRUSHALI | VRUSH LI                |
| SHARMIN  | SH RMIN                 |
| BANDISH  | B NDISH                 |
| SMITH    | SMITH                   |
| AARAV    |   R V                   |
| THOMAS   | THOM S                  |
| ALLEN    |  LLEN                   |
| WARD     | W RD                    |
| JONES    | JONES                   |
| MARTIN   | M RTIN                  |
| BLAKE    | BL KE                   |
| CLARK    | CL RK                   |
| SCOTT    | SCOTT                   |
| KING     | KING                    |
| FRED     | FRED                    |
| TURNER   | TURNER                  |
| ADAMS    |  D MS                   |
| JAMES    | J MES                   |
| FORD     | FORD                    |
| HOFFMAN  | HOFFM N                 |
| GRASS    | GR SS                   |
| MILLER   | MILLER                  |
| AARUSH   |   RUSH                  |
| ALEX     |  LEX                    |
| NATASHA  | N T SH                  |
| SANGITA  | S NGIT                  |
| SUPRIYA  | SUPRIY                  |
+----------+-------------------------+
28 rows in set (0.00 sec)

mysql> show tables;
+---------------------+
| Tables_in_z1        |
+---------------------+
| a                   |
| agent               |
| andor               |
| b                   |
| blanktablea         |
| blanktableb         |
| blog                |
| bonus               |
| books               |
| candidate           |
| client              |
| coalesce            |
| comments            |
| company             |
| customer            |
| customers           |
| demodept1           |
| demodept2           |
| dept                |
| dept1               |
| docs                |
| doctor              |
| doctorvisits        |
| dummy               |
| duplicate           |
| emp                 |
| emp1                |
| emp2                |
| emp_attendance      |
| emp_cards           |
| emp_phone           |
| empj                |
| envelope            |
| food                |
| fullname            |
| hobby               |
| item                |
| job_list            |
| key_parts           |
| labtestlist         |
| leadtable           |
| licence             |
| location            |
| mass_table          |
| medicinelist        |
| menucard            |
| nearest             |
| new                 |
| newbooks            |
| nullif              |
| numbers             |
| numberstring        |
| ord                 |
| orderdetails        |
| orders              |
| overtime            |
| patient             |
| phonecall           |
| pivot_table         |
| plumber             |
| plumber_service_map |
| points              |
| price               |
| product             |
| product_sales       |
| products            |
| quarterly_revenue   |
| r                   |
| r1                  |
| r2                  |
| races               |
| regexpr             |
| replacedept         |
| revenue             |
| rockets             |
| runners             |
| runningserver       |
| sales               |
| sales_channel       |
| salespeople         |
| salesperson         |
| salgrade            |
| server              |
| service             |
| seta                |
| setb                |
| shop                |
| softdrink           |
| sort                |
| sourcenames         |
| stadium             |
| states              |
| station             |
| status              |
| stringnumber        |
| tablea              |
| tableaa             |
| tableb              |
| tablebb             |
| targetnames         |
| tasks               |
| temp1               |
| traintimetable      |
| transactions        |
| vote_response       |
| votes               |
| warehouse           |
| yearly_revenue      |
| z                   |
+---------------------+
109 rows in set (0.01 sec)

mysql> select * from vote_response;
+-------------+-----------------------------------------------------------------------------------------------------------------------+
| candidateID | response
                                               |
+-------------+-----------------------------------------------------------------------------------------------------------------------+
|           3 | n,n,n,y,y,y,y,n,y,n,y,y,n,n,y,n,n,n,n,n,n,n,n,y,y,y,y,y,y,y,n,y,n,y,y,y,n,n,n,y,y,y,y,n,n,n,n,n,y                     |
|           1 | y,n,n,y,y,y,y,n,y,n,y,y,n,n,y,n,n,y,n,y,n,y,n,y,y,y,y,y,y,y,n,y,n,y,y,y,n,n,n,y,y,y,y,y,y,y,n,y,n,y,n,y,n,n,n,y,y,y,n |
|           2 | y,y,y,y,y,y,y,n,y,y,y,y,n,y,y,y,y,y,n,y,y,y,y,y,y,y,y,y,y,y,n,y,y,y,y,y,n,y,y,y,y,y,y,y,n,y,n                         |
|           4 | n,n,n,y,y,n,n,n,y,n,y,y,n,n,y,n,y,n,n,y,n,y,n,y,y,n,y,n,y,y,n,y,n,y,n,y,n,n,n,y,y,n,n                                 |
+-------------+-----------------------------------------------------------------------------------------------------------------------+
4 rows in set (0.00 sec)

mysql> select replace(response,'n,', '') from vote_response;
+-----------------------------------------------------------------------------------+
| replace(response,'n,', '')                                                        |
+-----------------------------------------------------------------------------------+
| y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y                                   |
| y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,n         |
| y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,n |
| y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,n                                           |
+-----------------------------------------------------------------------------------+
4 rows in set (0.00 sec)

mysql> select replace(response,'n', '') from vote_response;
+------------------------------------------------------------------------------------------------+
| replace(response,'n', '')
          |
+------------------------------------------------------------------------------------------------+
| ,,,y,y,y,y,,y,,y,y,,,y,,,,,,,,,y,y,y,y,y,y,y,,y,,y,y,y,,,,y,y,y,y,,,,,,y
          |
| y,,,y,y,y,y,,y,,y,y,,,y,,,y,,y,,y,,y,y,y,y,y,y,y,,y,,y,y,y,,,,y,y,y,y,y,y,y,,y,,y,,y,,,,y,y,y, |
| y,y,y,y,y,y,y,,y,y,y,y,,y,y,y,y,y,,y,y,y,y,y,y,y,y,y,y,y,,y,y,y,y,y,,y,y,y,y,y,y,y,,y,         |
| ,,,y,y,,,,y,,y,y,,,y,,y,,,y,,y,,y,y,,y,,y,y,,y,,y,,y,,,,y,y,,
          |
+------------------------------------------------------------------------------------------------+
4 rows in set (0.00 sec)

mysql> select replace(response,'n,', '') from vote_response;
+-----------------------------------------------------------------------------------+
| replace(response,'n,', '')                                                        |
+-----------------------------------------------------------------------------------+
| y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y                                   |
| y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,n         |
| y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,n |
| y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,n                                           |
+-----------------------------------------------------------------------------------+
4 rows in set (0.00 sec)

mysql> select replace(replace(response,'n,', ''),',','') from vote_response;
+--------------------------------------------+
| replace(replace(response,'n,', ''),',','') |
+--------------------------------------------+
| yyyyyyyyyyyyyyyyyyyyyyyy                   |
| yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyn      |
| yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyn  |
| yyyyyyyyyyyyyyyyyyyn                       |
+--------------------------------------------+
4 rows in set (0.00 sec)

mysql> select replace(replace(replace(response,'n,', ''),',',''),'n','') from vote_resp
onse;
+------------------------------------------------------------+
| replace(replace(replace(response,'n,', ''),',',''),'n','') |
+------------------------------------------------------------+
| yyyyyyyyyyyyyyyyyyyyyyyy                                   |
| yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy                       |
| yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy                   |
| yyyyyyyyyyyyyyyyyyy                                        |
+------------------------------------------------------------+
4 rows in set (0.00 sec)

mysql> select length(replace(replace(replace(response,'n,', ''),',',''),'n','')) from v
ote_response;
+--------------------------------------------------------------------+
| length(replace(replace(replace(response,'n,', ''),',',''),'n','')) |
+--------------------------------------------------------------------+
|                                                                 24 |
|                                                                 36 |
|                                                                 40 |
|                                                                 19 |
+--------------------------------------------------------------------+
4 rows in set (0.00 sec)

mysql> show tables;
+---------------------+
| Tables_in_z1        |
+---------------------+
| a                   |
| agent               |
| andor               |
| b                   |
| blanktablea         |
| blanktableb         |
| blog                |
| bonus               |
| books               |
| candidate           |
| client              |
| coalesce            |
| comments            |
| company             |
| customer            |
| customers           |
| demodept1           |
| demodept2           |
| dept                |
| dept1               |
| docs                |
| doctor              |
| doctorvisits        |
| dummy               |
| duplicate           |
| emp                 |
| emp1                |
| emp2                |
| emp_attendance      |
| emp_cards           |
| emp_phone           |
| empj                |
| envelope            |
| food                |
| fullname            |
| hobby               |
| item                |
| job_list            |
| key_parts           |
| labtestlist         |
| leadtable           |
| licence             |
| location            |
| mass_table          |
| medicinelist        |
| menucard            |
| nearest             |
| new                 |
| newbooks            |
| nullif              |
| numbers             |
| numberstring        |
| ord                 |
| orderdetails        |
| orders              |
| overtime            |
| patient             |
| phonecall           |
| pivot_table         |
| plumber             |
| plumber_service_map |
| points              |
| price               |
| product             |
| product_sales       |
| products            |
| quarterly_revenue   |
| r                   |
| r1                  |
| r2                  |
| races               |
| regexpr             |
| replacedept         |
| revenue             |
| rockets             |
| runners             |
| runningserver       |
| sales               |
| sales_channel       |
| salespeople         |
| salesperson         |
| salgrade            |
| server              |
| service             |
| seta                |
| setb                |
| shop                |
| softdrink           |
| sort                |
| sourcenames         |
| stadium             |
| states              |
| station             |
| status              |
| stringnumber        |
| tablea              |
| tableaa             |
| tableb              |
| tablebb             |
| targetnames         |
| tasks               |
| temp1               |
| traintimetable      |
| transactions        |
| vote_response       |
| votes               |
| warehouse           |
| yearly_revenue      |
| z                   |
+---------------------+
109 rows in set (0.01 sec)

mysql> select * from emp_attendance;
+-------+-------------------------------------------------------------------------+
| empno | datePresent                                                             |
+-------+-------------------------------------------------------------------------+
|  7415 | 1,2,5,7,9,10,12,15                                                      |
|  7421 | 1,2,5,7,9,10,12,15,16,17,18,19                                          |
|  7782 | 1,2,5,7,9,10,12,15,18,29                                                |
|  7839 | 1,2,5,7,9,10,12,15,16,17,18,19                                          |
|  7934 | 1,2,5,7,9,10,12,15,16,17,20,21,22                                       |
|  6473 | 1,2,5,7,9,10,12,15                                                      |
|  6781 | 1,2,5,7,9,10,12,15,16,17,18,19                                          |
|  7369 | 1,2,3,4,5,7,9,10,12,15                                                  |
|  7566 | 1,2,3,5,7,8,9,10,11,12,15,16,17,18,19                                   |
|  7788 | 1,2,3,4,5,7,9,10,12,15,21,22,23,24,25,26,27                             |
|  7840 | NULL                                                                    |
|  7876 | 1,2,5,7,9,10,12,15,16,17,18,19                                          |
|  7902 | 1,2,5,7,9,10,12,15,16,17                                                |
|  6001 | 1,2,5,7,9,10,12,15                                                      |
|  7499 | 1,2,5,7,9,10,12,15,17,19,20                                             |
|  7521 | 1,2,5,7,9,10,12,15                                                      |
|  7654 | 1,2,3,4,5,7,9,10,12,15,21,22,23,24,25,26,27,28,29,30                    |
|  7698 | 1,2,5,7,9,10,12,15                                                      |
|  7844 | 1,2,5,7,9,10,12,15                                                      |
|  7900 | 1,2,5,7,9,10,12,15                                                      |
|  7919 | 1,2,3,4,5,7,9,10,12,15,21,22,23,24,25,26,27                             |
|  7920 | 1,2,3,4,5,6,7,8,9,10,12,15                                              |
|  7945 | 1,2,3,4,5,6,7,8,9,10,12,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30 |
|  7949 | 1,2,3,4,5,6,7,8,9,10,12,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30 |
|  8433 | 1,2,3,4,5,6,7,8,9,10,12,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30 |
|  6129 | 1,2,3,4,5,6,7,8,9,10,12,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30 |
|  9400 | 1,2,3,4,5,6,7,8,9,10,12,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30 |
|  9473 | 1,2,3,4,5,6,7,8,9,10,12,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30 |
+-------+-------------------------------------------------------------------------+
28 rows in set (0.00 sec)

mysql> select ''
    -> Thio^C
mysql> select 'This is the string', substr()
    -> emp_attendance^C
mysql> select 'This is the string', substr('This is the string', 5, 2);
+--------------------+------------------------------------+
| This is the string | substr('This is the string', 5, 2) |
+--------------------+------------------------------------+
| This is the string |  i                                 |
+--------------------+------------------------------------+
1 row in set (0.00 sec)

mysql> select 'This is the string', substr('This is the string', 6, 2);
+--------------------+------------------------------------+
| This is the string | substr('This is the string', 6, 2) |
+--------------------+------------------------------------+
| This is the string | is                                 |
+--------------------+------------------------------------+
1 row in set (0.00 sec)

mysql> select 'This is the string', substr('This is the string', 6);
+--------------------+---------------------------------+
| This is the string | substr('This is the string', 6) |
+--------------------+---------------------------------+
| This is the string | is the string                   |
+--------------------+---------------------------------+
1 row in set (0.00 sec)

mysql> select 'This is the string', substr('This is the string', 6, -1);
+--------------------+-------------------------------------+
| This is the string | substr('This is the string', 6, -1) |
+--------------------+-------------------------------------+
| This is the string |                                     |
+--------------------+-------------------------------------+
1 row in set (0.00 sec)

mysql> select 'This is the string', substr('This is the string', -6);
+--------------------+----------------------------------+
| This is the string | substr('This is the string', -6) |
+--------------------+----------------------------------+
| This is the string | string                           |
+--------------------+----------------------------------+
1 row in set (0.00 sec)

mysql> select 'This is the string', substr('This is the string', -6,2);
+--------------------+------------------------------------+
| This is the string | substr('This is the string', -6,2) |
+--------------------+------------------------------------+
| This is the string | st                                 |
+--------------------+------------------------------------+
1 row in set (0.00 sec)

mysql> select 1234.56, round(1234.56) R1;
+---------+------+
| 1234.56 | R1   |
+---------+------+
| 1234.56 | 1235 |
+---------+------+
1 row in set (0.01 sec)

mysql> select 1234.56, round(1234.56, 1) R1;
+---------+--------+
| 1234.56 | R1     |
+---------+--------+
| 1234.56 | 1234.6 |
+---------+--------+
1 row in set (0.00 sec)

mysql> select 1234.56, round(1234.56, 0) R1;
+---------+------+
| 1234.56 | R1   |
+---------+------+
| 1234.56 | 1235 |
+---------+------+
1 row in set (0.00 sec)

mysql> select 1234.56, round(1234.156, 2) R1;
+---------+---------+
| 1234.56 | R1      |
+---------+---------+
| 1234.56 | 1234.16 |
+---------+---------+
1 row in set (0.00 sec)

mysql> select 1234.56, round(1234.156, -2) R1;
+---------+------+
| 1234.56 | R1   |
+---------+------+
| 1234.56 | 1200 |
+---------+------+
1 row in set (0.00 sec)

mysql> select 1234.56, round(1235.156, -2) R1;
+---------+------+
| 1234.56 | R1   |
+---------+------+
| 1234.56 | 1200 |
+---------+------+
1 row in set (0.00 sec)

mysql> select 1234.56, round(1274.156, -2) R1;
+---------+------+
| 1234.56 | R1   |
+---------+------+
| 1234.56 | 1300 |
+---------+------+
1 row in set (0.00 sec)

mysql> select 1234.56, round(1274.156, -2) R1;
+---------+------+
| 1234.56 | R1   |
+---------+------+
| 1234.56 | 1300 |
+---------+------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql> select rand();
+----------------------+
| rand()               |
+----------------------+
| 0.019174852426326695 |
+----------------------+
1 row in set (0.00 sec)

mysql> select rand();
+----------------------+
| rand()               |
+----------------------+
| 0.053357731600625194 |
+----------------------+
1 row in set (0.00 sec)

mysql> select rand();
+---------------------+
| rand()              |
+---------------------+
| 0.20926413145779085 |
+---------------------+
1 row in set (0.00 sec)

mysql> select rand();
+--------------------+
| rand()             |
+--------------------+
| 0.8862474932207237 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand());
+---------------+
| round(rand()) |
+---------------+
|             1 |
+---------------+
1 row in set (0.00 sec)

mysql> select round(rand());
+---------------+
| round(rand()) |
+---------------+
|             0 |
+---------------+
1 row in set (0.00 sec)

mysql> select round(rand());
+---------------+
| round(rand()) |
+---------------+
|             0 |
+---------------+
1 row in set (0.00 sec)

mysql> select round(rand());
+---------------+
| round(rand()) |
+---------------+
|             1 |
+---------------+
1 row in set (0.00 sec)

mysql> select round(rand());
+---------------+
| round(rand()) |
+---------------+
|             0 |
+---------------+
1 row in set (0.00 sec)

mysql>
mysql> select round(rand());
+---------------+
| round(rand()) |
+---------------+
|             1 |
+---------------+
1 row in set (0.00 sec)

mysql> select round(rand());
+---------------+
| round(rand()) |
+---------------+
|             0 |
+---------------+
1 row in set (0.00 sec)

mysql> select round(rand() +10);
+-------------------+
| round(rand() +10) |
+-------------------+
|                11 |
+-------------------+
1 row in set (0.00 sec)

mysql> select round(rand() +10);
+-------------------+
| round(rand() +10) |
+-------------------+
|                11 |
+-------------------+
1 row in set (0.00 sec)

mysql> select round(rand() +10);
+-------------------+
| round(rand() +10) |
+-------------------+
|                11 |
+-------------------+
1 row in set (0.00 sec)

mysql> select round(rand() +10);
+-------------------+
| round(rand() +10) |
+-------------------+
|                10 |
+-------------------+
1 row in set (0.00 sec)

mysql> select round(rand() * 10);
+--------------------+
| round(rand() * 10) |
+--------------------+
|                  9 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand() * 10);
+--------------------+
| round(rand() * 10) |
+--------------------+
|                  4 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand() * 10);
+--------------------+
| round(rand() * 10) |
+--------------------+
|                  0 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand() * 10);
+--------------------+
| round(rand() * 10) |
+--------------------+
|                  1 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand() * 10);
+--------------------+
| round(rand() * 10) |
+--------------------+
|                  3 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand()) * 10;
+--------------------+
| round(rand()) * 10 |
+--------------------+
|                  0 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand()) * 10;
+--------------------+
| round(rand()) * 10 |
+--------------------+
|                 10 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand()) * 10;
+--------------------+
| round(rand()) * 10 |
+--------------------+
|                 10 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand()) * 10;
+--------------------+
| round(rand()) * 10 |
+--------------------+
|                  0 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand()) * 10;
+--------------------+
| round(rand()) * 10 |
+--------------------+
|                  0 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand()) * 10;
+--------------------+
| round(rand()) * 10 |
+--------------------+
|                  0 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand()) * 10;
+--------------------+
| round(rand()) * 10 |
+--------------------+
|                  0 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand()) * 10;
+--------------------+
| round(rand()) * 10 |
+--------------------+
|                 10 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand()) * 10;
+--------------------+
| round(rand()) * 10 |
+--------------------+
|                  0 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand()) * 10;
+--------------------+
| round(rand()) * 10 |
+--------------------+
|                  0 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand()) * 10;
+--------------------+
| round(rand()) * 10 |
+--------------------+
|                 10 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand()) * 10;
+--------------------+
| round(rand()) * 10 |
+--------------------+
|                  0 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand()) * 10;
+--------------------+
| round(rand()) * 10 |
+--------------------+
|                  0 |
+--------------------+
1 row in set (0.00 sec)

mysql> select rand() * 10;
+-------------------+
| rand() * 10       |
+-------------------+
| 8.732964888897692 |
+-------------------+
1 row in set (0.00 sec)

mysql> select rand() * 10;
+-------------------+
| rand() * 10       |
+-------------------+
| 5.027335048678642 |
+-------------------+
1 row in set (0.00 sec)

mysql> select rand() * 10;
+------------------+
| rand() * 10      |
+------------------+
| 8.93778088403659 |
+------------------+
1 row in set (0.00 sec)

mysql>
mysql> select rand() * 10;
+-------------------+
| rand() * 10       |
+-------------------+
| 9.606899581483471 |
+-------------------+
1 row in set (0.00 sec)

mysql> select rand() * 10;
+-------------------+
| rand() * 10       |
+-------------------+
| 1.221155562644038 |
+-------------------+
1 row in set (0.00 sec)

mysql> select round(rand() * 10);
+--------------------+
| round(rand() * 10) |
+--------------------+
|                  7 |
+--------------------+
1 row in set (0.00 sec)

mysql> select round(rand() * (100 - 50+1) +50);
+----------------------------------+
| round(rand() * (100 - 50+1) +50) |
+----------------------------------+
|                               64 |
+----------------------------------+
1 row in set (0.00 sec)

mysql> select round(rand() * (100 - 50+1) +50);
+----------------------------------+
| round(rand() * (100 - 50+1) +50) |
+----------------------------------+
|                               60 |
+----------------------------------+
1 row in set (0.00 sec)

mysql> select round(rand() * (100 - 50+1) +50);
+----------------------------------+
| round(rand() * (100 - 50+1) +50) |
+----------------------------------+
|                               58 |
+----------------------------------+
1 row in set (0.00 sec)

mysql> select round(rand() * (100 - 50+1) +50);
+----------------------------------+
| round(rand() * (100 - 50+1) +50) |
+----------------------------------+
|                               58 |
+----------------------------------+
1 row in set (0.00 sec)

mysql> select round(rand() * (100 - 50+1) +50);
+----------------------------------+
| round(rand() * (100 - 50+1) +50) |
+----------------------------------+
|                               67 |
+----------------------------------+
1 row in set (0.00 sec)

mysql>
mysql> select round(rand() * (100 - 50+1) +50);
+----------------------------------+
| round(rand() * (100 - 50+1) +50) |
+----------------------------------+
|                               61 |
+----------------------------------+
1 row in set (0.00 sec)

mysql> select round(rand() * (100 - 50+1) +50);
+----------------------------------+
| round(rand() * (100 - 50+1) +50) |
+----------------------------------+
|                               54 |
+----------------------------------+
1 row in set (0.00 sec)

mysql> select round(rand() * (100 - 50 + 1) +50) from emp;
+------------------------------------+
| round(rand() * (100 - 50 + 1) +50) |
+------------------------------------+
|                                 90 |
|                                 82 |
|                                 92 |
|                                 60 |
|                                 75 |
|                                 97 |
|                                 54 |
|                                 82 |
|                                 98 |
|                                 93 |
|                                 67 |
|                                 58 |
|                                 90 |
|                                 72 |
|                                 91 |
|                                 86 |
|                                 56 |
|                                 73 |
|                                 97 |
|                                 61 |
|                                 69 |
|                                 59 |
|                                 91 |
|                                 75 |
|                                100 |
|                                 75 |
|                                 76 |
|                                 55 |
+------------------------------------+
28 rows in set (0.00 sec)

mysql> select round(rand() * (100 - 50 + 1) +50) from emp;
+------------------------------------+
| round(rand() * (100 - 50 + 1) +50) |
+------------------------------------+
|                                 99 |
|                                 74 |
|                                 76 |
|                                 57 |
|                                 57 |
|                                 62 |
|                                 91 |
|                                 67 |
|                                 64 |
|                                 67 |
|                                 93 |
|                                 61 |
|                                 79 |
|                                 61 |
|                                 67 |
|                                101 |
|                                 51 |
|                                 55 |
|                                 73 |
|                                 99 |
|                                 72 |
|                                 64 |
|                                 54 |
|                                 78 |
|                                 76 |
|                                 97 |
|                                 53 |
|                                 79 |
+------------------------------------+
28 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql> select ascii('A');
+------------+
| ascii('A') |
+------------+
|         65 |
+------------+
1 row in set (0.00 sec)

mysql> select ascii('a');
+------------+
| ascii('a') |
+------------+
|         97 |
+------------+
1 row in set (0.00 sec)

mysql> select char(97);
+--------------------+
| char(97)           |
+--------------------+
| 0x61               |
+--------------------+
1 row in set (0.00 sec)

mysql> select cast(char(97) as char);
+------------------------+
| cast(char(97) as char) |
+------------------------+
| a                      |
+------------------------+
1 row in set (0.00 sec)

mysql>