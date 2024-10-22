C:\Users\IET>mysql -h 192.168.10.150 -P 3306 -u dac15 -p
Enter password: *******
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 111
Server version: 8.1.0 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use dac15
Database changed
mysql> show tables;
+------------------------+
| Tables_in_dac15        |
+------------------------+
| batch_students         |
| course                 |
| course_batches         |
| course_modules         |
| faculty                |
| faculty_address        |
| faculty_phone          |
| faculty_qualifications |
| modules                |
| student                |
| student_address        |
| student_cards          |
| student_order          |
| student_phone          |
| student_qualifications |
+------------------------+
15 rows in set (0.00 sec)

mysql> select * from course;
+----+---------+----------+------------------------------------+
| ID | name    | duration | summery                            |
+----+---------+----------+------------------------------------+
|  1 | PG-DAC  |        6 | This course is designed by CDAC    |
|  2 | DBDA    |        6 | This course is designed by CDAC    |
|  3 | Pre-DAC |        2 | This course is designed by CDAC    |
|  4 | JAVA    |        3 | This course is designed by IET     |
|  5 | .NET    |        3 | This course is designed by Infoway |
|  6 | DMC     |        6 | This course is designed by CDAC    |
|  7 | DSSD    |        6 | This course is designed by CDAC    |
+----+---------+----------+------------------------------------+
7 rows in set (0.04 sec)

mysql> desc student;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int          | NO   | PRI | NULL    |       |
| namefirst | varchar(45)  | YES  |     | NULL    |       |
| namelast  | varchar(45)  | YES  |     | NULL    |       |
| DOB       | date         | YES  |     | NULL    |       |
| emailID   | varchar(128) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
5 rows in set (0.02 sec)

mysql> select namefirst, namelast from student;
+-----------+----------+
| namefirst | namelast |
+-----------+----------+
| saleel    | bagde    |
| omkar     | rokde    |
| ulka      | joshi    |
| rahul     | patil    |
| ruhan     | bagde    |
| lala      | prasad   |
| sharmin   | bagde    |
| vrushali  | bagde    |
| vasant    | khande   |
| nitish    | patil    |
| neel      | save     |
| deep      | save     |
| nrupali   | save     |
| supriya   | karnik   |
| bandish   | karnik   |
| sangita   | karnik   |
| sangita   | menon    |
| rahul     | shah     |
| bhavin    | patel    |
| kaushal   | patil    |
| pankaj    | gandhi   |
| rajan     | patel    |
| bhavin    | patel    |
| mukesh    | bhavsar  |
| dilu      | khande   |
| sonam     | khan     |
| rohit     | patil    |
| raj       | bubber   |
+-----------+----------+
28 rows in set (0.01 sec)

mysql> select namefirst, namelast, dob, emailid from student;
+-----------+----------+------------+--------------------------+
| namefirst | namelast | dob        | emailid                  |
+-----------+----------+------------+--------------------------+
| saleel    | bagde    | 1984-06-12 | saleel.bagde@gmail.com   |
| omkar     | rokde    | 1969-10-25 | omkar.rakde@gmail.com    |
| ulka      | joshi    | 1970-10-25 | ulka.joshi@gmail.com     |
| rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com    |
| ruhan     | bagde    | 1984-01-12 | ruhan.bagde@gmail.com    |
| lala      | prasad   | 1980-12-01 | lala.prasad@gmail.com    |
| sharmin   | bagde    | 1986-12-14 | sharmin.bagde@gmail.com  |
| vrushali  | bagde    | 1984-12-29 | vrushali.bagde@gmail.com |
| vasant    | khande   | 1992-10-26 | vasant.khande@gmail.com  |
| nitish    | patil    | 1990-10-26 | nitish.patil@gmail.com   |
| neel      | save     | 1975-10-30 | neel.save@gmail.com      |
| deep      | save     | 1986-11-30 | deep.save@gmail.com      |
| nrupali   | save     | 1981-12-01 | nrupali.save@gmail.com   |
| supriya   | karnik   | 1983-12-15 | supriya.karnik@gmail.com |
| bandish   | karnik   | 1987-12-30 | bandish.karnik@gmail.com |
| sangita   | karnik   | 1990-12-01 | sangita.karnik@gmail.com |
| sangita   | menon    | 1989-10-26 | sangita.menon@gmail.com  |
| rahul     | shah     | 1982-06-12 | rahul.shah@gmail.com     |
| bhavin    | patel    | 1983-11-13 | bhavin.patel@gmail.com   |
| kaushal   | patil    | 1982-07-30 | kaushal.patil@gmail.com  |
| pankaj    | gandhi   | 1982-07-30 | pankaj.gandhi@gmail.com  |
| rajan     | patel    | 1982-07-30 | rajan.patel@gmail.com    |
| bhavin    | patel    | 1982-07-30 | bhavin.patel@gmail.com   |
| mukesh    | bhavsar  | 1982-07-30 | mukesh.bhavsar@gmail.com |
| dilu      | khande   | 1982-07-30 | dilu.khande@gmail.com    |
| sonam     | khan     | 1972-05-13 | sonam.khan@gmail.com     |
| rohit     | patil    | 1976-12-31 | rohit.patil@gmail.com    |
| raj       | bubber   | 1982-02-28 | raj.bubber@gmail.com     |
+-----------+----------+------------+--------------------------+
28 rows in set (0.00 sec)

mysql> select * from student where id = 15;
+----+-----------+----------+------------+--------------------------+
| ID | namefirst | namelast | DOB        | emailID                  |
+----+-----------+----------+------------+--------------------------+
| 15 | bandish   | karnik   | 1987-12-30 | bandish.karnik@gmail.com |
+----+-----------+----------+------------+--------------------------+
1 row in set (0.00 sec)

mysql> select namefirst, namelast, dob from student where namefirst = 'nitish';
+-----------+----------+------------+
| namefirst | namelast | dob        |
+-----------+----------+------------+
| nitish    | patil    | 1990-10-26 |
+-----------+----------+------------+
1 row in set (0.00 sec)

mysql> select namefirst, namelast, emailid from student where namefirst = 'nitish';
+-----------+----------+------------------------+
| namefirst | namelast | emailid                |
+-----------+----------+------------------------+
| nitish    | patil    | nitish.patil@gmail.com |
+-----------+----------+------------------------+
1 row in set (0.00 sec)

mysql> select * from student where id >= 12;
+----+-----------+----------+------------+--------------------------+
| ID | namefirst | namelast | DOB        | emailID                  |
+----+-----------+----------+------------+--------------------------+
| 12 | deep      | save     | 1986-11-30 | deep.save@gmail.com      |
| 13 | nrupali   | save     | 1981-12-01 | nrupali.save@gmail.com   |
| 14 | supriya   | karnik   | 1983-12-15 | supriya.karnik@gmail.com |
| 15 | bandish   | karnik   | 1987-12-30 | bandish.karnik@gmail.com |
| 16 | sangita   | karnik   | 1990-12-01 | sangita.karnik@gmail.com |
| 17 | sangita   | menon    | 1989-10-26 | sangita.menon@gmail.com  |
| 18 | rahul     | shah     | 1982-06-12 | rahul.shah@gmail.com     |
| 19 | bhavin    | patel    | 1983-11-13 | bhavin.patel@gmail.com   |
| 20 | kaushal   | patil    | 1982-07-30 | kaushal.patil@gmail.com  |
| 21 | pankaj    | gandhi   | 1982-07-30 | pankaj.gandhi@gmail.com  |
| 22 | rajan     | patel    | 1982-07-30 | rajan.patel@gmail.com    |
| 23 | bhavin    | patel    | 1982-07-30 | bhavin.patel@gmail.com   |
| 24 | mukesh    | bhavsar  | 1982-07-30 | mukesh.bhavsar@gmail.com |
| 25 | dilu      | khande   | 1982-07-30 | dilu.khande@gmail.com    |
| 26 | sonam     | khan     | 1972-05-13 | sonam.khan@gmail.com     |
| 27 | rohit     | patil    | 1976-12-31 | rohit.patil@gmail.com    |
| 28 | raj       | bubber   | 1982-02-28 | raj.bubber@gmail.com     |
+----+-----------+----------+------------+--------------------------+
17 rows in set (0.00 sec)

mysql> select * from student where dob = '1980-12-01';
+----+-----------+----------+------------+-----------------------+
| ID | namefirst | namelast | DOB        | emailID               |
+----+-----------+----------+------------+-----------------------+
|  6 | lala      | prasad   | 1980-12-01 | lala.prasad@gmail.com |
+----+-----------+----------+------------+-----------------------+
1 row in set (0.00 sec)

mysql> desc student_phone;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| ID        | int         | NO   | PRI | NULL    |       |
| studentID | int         | YES  | MUL | NULL    |       |
| number    | varchar(45) | YES  |     | NULL    |       |
| isActive  | tinyint(1)  | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> select * from student_phone where id = 5;
+----+-----------+------------+----------+
| ID | studentID | number     | isActive |
+----+-----------+------------+----------+
|  5 |         5 | 7032300001 |        1 |
+----+-----------+------------+----------+
1 row in set (0.02 sec)

mysql> select * from student_address where id = 10;
+----+-----------+-----------------------------------------------------+
| ID | studentID | address                                             |
+----+-----------+-----------------------------------------------------+
| 10 |        10 | 7710 Covington Rd , New State Road, New York, 37188 |
+----+-----------+-----------------------------------------------------+
1 row in set (0.03 sec)

mysql> select * from faculty;
+----+-----------+----------+------------+------------------------+
| ID | namefirst | namelast | DOB        | emailID                |
+----+-----------+----------+------------+------------------------+
|  1 | prachi    | gupta    | 1974-06-12 | prachi.gupta@gmail.com |
|  2 | ketan     | shukla   | 1972-10-25 | ketan.shukla@gmail.com |
|  3 | kiran     | dev      | 1971-10-25 | kiran.dev@gmail.com    |
|  4 | parag     | patil    | 1972-10-31 | parag.patil@gmail.com  |
+----+-----------+----------+------------+------------------------+
4 rows in set (0.02 sec)

mysql> desc faculty_phone;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| ID        | int         | NO   | PRI | NULL    |       |
| facultyID | int         | YES  | MUL | NULL    |       |
| number    | varchar(10) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> select * from faculty_phone where id = 2;
+----+-----------+------------+
| ID | facultyID | number     |
+----+-----------+------------+
|  2 |         2 | 7032300039 |
+----+-----------+------------+
1 row in set (0.03 sec)

mysql> select * from student_phone where id = 13;
+----+-----------+------------+----------+
| ID | studentID | number     | isActive |
+----+-----------+------------+----------+
| 13 |        13 | 7032300055 |        1 |
+----+-----------+------------+----------+
1 row in set (0.00 sec)

mysql> select * from modules;
+----+---------------------------+----------+
| ID | name                      | duration |
+----+---------------------------+----------+
|  1 | Oracle                    |        1 |
|  2 | PHP                       |        1 |
|  3 | MySQL                     |        1 |
|  4 | Node                      |        1 |
|  5 | C++                       |        1 |
|  6 | C                         |        1 |
|  7 | JAVA1                     |        2 |
|  8 | JAVA2                     |        2 |
|  9 | MongoDB                   |        1 |
| 10 | NET                       |        2 |
| 11 | Hive                      |        1 |
| 12 | Python                    |        1 |
| 13 | Aptitude                  |        1 |
| 14 | OOPs with C++ Programming |        6 |
| 15 | Data Structures           |        6 |
| 16 | OS Concepts               |        6 |
| 17 | iOS Programming           |        6 |
+----+---------------------------+----------+
17 rows in set (0.02 sec)

mysql> select * from course_modules where id = 1;
+----+----------+----------+
| ID | courseID | moduleID |
+----+----------+----------+
|  1 |        1 |        1 |
+----+----------+----------+
1 row in set (0.05 sec)

mysql> desc course_modules;
+----------+------+------+-----+---------+-------+
| Field    | Type | Null | Key | Default | Extra |
+----------+------+------+-----+---------+-------+
| ID       | int  | NO   | PRI | NULL    |       |
| courseID | int  | YES  | MUL | NULL    |       |
| moduleID | int  | YES  | MUL | NULL    |       |
+----------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> selec * from course_modules;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selec * from course_modules' at line 1
mysql> select * from course_modules;
+----+----------+----------+
| ID | courseID | moduleID |
+----+----------+----------+
|  1 |        1 |        1 |
|  2 |        1 |        2 |
|  3 |        1 |        3 |
|  4 |        1 |        4 |
|  5 |        1 |        5 |
|  6 |        1 |        6 |
|  7 |        1 |        7 |
|  8 |        1 |        8 |
|  9 |        1 |        9 |
| 10 |        2 |        1 |
| 11 |        2 |        2 |
| 12 |        2 |        3 |
| 13 |        2 |       11 |
| 14 |        2 |       12 |
| 15 |        2 |        9 |
| 16 |        3 |       13 |
| 17 |        3 |        5 |
| 18 |        3 |        6 |
| 19 |        4 |        1 |
| 20 |        4 |        7 |
| 21 |        4 |        8 |
| 22 |        5 |        1 |
| 23 |        5 |        7 |
| 24 |        5 |        8 |
| 25 |        6 |       14 |
| 26 |        6 |       15 |
| 27 |        6 |       16 |
| 28 |        6 |       17 |
+----+----------+----------+
28 rows in set (0.00 sec)

mysql> select * from course_modules where courseid = 1;
+----+----------+----------+
| ID | courseID | moduleID |
+----+----------+----------+
|  1 |        1 |        1 |
|  2 |        1 |        2 |
|  3 |        1 |        3 |
|  4 |        1 |        4 |
|  5 |        1 |        5 |
|  6 |        1 |        6 |
|  7 |        1 |        7 |
|  8 |        1 |        8 |
|  9 |        1 |        9 |
+----+----------+----------+
9 rows in set (0.02 sec)

mysql> select * from course_batches where capacity = 80;
+----+---------+----------+------------+------------+----------+
| ID | name    | courseID | starton    | endson     | capacity |
+----+---------+----------+------------+------------+----------+
|  1 | Batch1  |        1 | 2016-02-01 | 2016-08-31 |       80 |
|  6 | Batch6  |        1 | 2015-02-01 | 2015-08-31 |       80 |
| 11 | Batch11 |        1 | 2017-08-01 | 2018-02-28 |       80 |
| 16 | Batch16 |        1 | 2014-08-01 | 2015-02-28 |       80 |
| 21 | Batch21 |        1 | 2015-08-01 | 2016-02-28 |       80 |
+----+---------+----------+------------+------------+----------+
5 rows in set (0.08 sec)

mysql>