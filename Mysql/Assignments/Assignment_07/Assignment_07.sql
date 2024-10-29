mysql> select * from student;
+----+-----------+----------+------------+--------------------------+
| ID | namefirst | namelast | DOB        | emailID                  |
+----+-----------+----------+------------+--------------------------+
|  1 | saleel    | bagde    | 1984-06-12 | saleel.bagde@gmail.com   |
|  2 | omkar     | rokde    | 1969-10-25 | omkar.rakde@gmail.com    |
|  3 | ulka      | joshi    | 1970-10-25 | ulka.joshi@gmail.com     |
|  4 | rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com    |
|  5 | ruhan     | bagde    | 1984-01-12 | ruhan.bagde@gmail.com    |
|  6 | lala      | prasad   | 1980-12-01 | lala.prasad@gmail.com    |
|  7 | sharmin   | bagde    | 1986-12-14 | sharmin.bagde@gmail.com  |
|  8 | vrushali  | bagde    | 1984-12-29 | vrushali.bagde@gmail.com |
|  9 | vasant    | khande   | 1992-10-26 | vasant.khande@gmail.com  |
| 10 | nitish    | patil    | 1990-10-26 | nitish.patil@gmail.com   |
| 11 | neel      | save     | 1975-10-30 | neel.save@gmail.com      |
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
28 rows in set (0.00 sec)

mysql>
mysql> select namefirst, namelast from student order by namefirst;
+-----------+----------+
| namefirst | namelast |
+-----------+----------+
| bandish   | karnik   |
| bhavin    | patel    |
| bhavin    | patel    |
| deep      | save     |
| dilu      | khande   |
| kaushal   | patil    |
| lala      | prasad   |
| mukesh    | bhavsar  |
| neel      | save     |
| nitish    | patil    |
| nrupali   | save     |
| omkar     | rokde    |
| pankaj    | gandhi   |
| rahul     | patil    |
| rahul     | shah     |
| raj       | bubber   |
| rajan     | patel    |
| rohit     | patil    |
| ruhan     | bagde    |
| saleel    | bagde    |
| sangita   | karnik   |
| sangita   | menon    |
| sharmin   | bagde    |
| sonam     | khan     |
| supriya   | karnik   |
| ulka      | joshi    |
| vasant    | khande   |
| vrushali  | bagde    |
+-----------+----------+
28 rows in set (0.00 sec)

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
28 rows in set (0.00 sec)

mysql> select 8 from student where id = 10;
+---+
| 8 |
+---+
| 8 |
+---+
1 row in set (0.00 sec)

mysql> select * from student where id = 10;
+----+-----------+----------+------------+------------------------+
| ID | namefirst | namelast | DOB        | emailID                |
+----+-----------+----------+------------+------------------------+
| 10 | nitish    | patil    | 1990-10-26 | nitish.patil@gmail.com |
+----+-----------+----------+------------+------------------------+
1 row in set (0.00 sec)

mysql> select * from faculty;
+----+-----------+----------+------------+------------------------+
| ID | namefirst | namelast | DOB        | emailID                |
+----+-----------+----------+------------+------------------------+
|  1 | prachi    | gupta    | 1974-06-12 | prachi.gupta@gmail.com |
|  2 | ketan     | shukla   | 1972-10-25 | ketan.shukla@gmail.com |
|  3 | kiran     | dev      | 1971-10-25 | kiran.dev@gmail.com    |
|  4 | parag     | patil    | 1972-10-31 | parag.patil@gmail.com  |
+----+-----------+----------+------------+------------------------+
4 rows in set (0.00 sec)

mysql> select * from student where substring(namefirst, 2, 1) = 'a';
+----+-----------+----------+------------+--------------------------+
| ID | namefirst | namelast | DOB        | emailID                  |
+----+-----------+----------+------------+--------------------------+
|  1 | saleel    | bagde    | 1984-06-12 | saleel.bagde@gmail.com   |
|  4 | rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com    |
|  6 | lala      | prasad   | 1980-12-01 | lala.prasad@gmail.com    |
|  9 | vasant    | khande   | 1992-10-26 | vasant.khande@gmail.com  |
| 15 | bandish   | karnik   | 1987-12-30 | bandish.karnik@gmail.com |
| 16 | sangita   | karnik   | 1990-12-01 | sangita.karnik@gmail.com |
| 17 | sangita   | menon    | 1989-10-26 | sangita.menon@gmail.com  |
| 18 | rahul     | shah     | 1982-06-12 | rahul.shah@gmail.com     |
| 20 | kaushal   | patil    | 1982-07-30 | kaushal.patil@gmail.com  |
| 21 | pankaj    | gandhi   | 1982-07-30 | pankaj.gandhi@gmail.com  |
| 22 | rajan     | patel    | 1982-07-30 | rajan.patel@gmail.com    |
| 28 | raj       | bubber   | 1982-02-28 | raj.bubber@gmail.com     |
+----+-----------+----------+------------+--------------------------+
12 rows in set (0.00 sec)

mysql> SELECT * FROM student WHERE namefirst LIKE '%A%' ORDER BY namefirst ASC;
+----+-----------+----------+------------+--------------------------+
| ID | namefirst | namelast | DOB        | emailID                  |
+----+-----------+----------+------------+--------------------------+
| 15 | bandish   | karnik   | 1987-12-30 | bandish.karnik@gmail.com |
| 19 | bhavin    | patel    | 1983-11-13 | bhavin.patel@gmail.com   |
| 23 | bhavin    | patel    | 1982-07-30 | bhavin.patel@gmail.com   |
| 20 | kaushal   | patil    | 1982-07-30 | kaushal.patil@gmail.com  |
|  6 | lala      | prasad   | 1980-12-01 | lala.prasad@gmail.com    |
| 13 | nrupali   | save     | 1981-12-01 | nrupali.save@gmail.com   |
|  2 | omkar     | rokde    | 1969-10-25 | omkar.rakde@gmail.com    |
| 21 | pankaj    | gandhi   | 1982-07-30 | pankaj.gandhi@gmail.com  |
|  4 | rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com    |
| 18 | rahul     | shah     | 1982-06-12 | rahul.shah@gmail.com     |
| 28 | raj       | bubber   | 1982-02-28 | raj.bubber@gmail.com     |
| 22 | rajan     | patel    | 1982-07-30 | rajan.patel@gmail.com    |
|  5 | ruhan     | bagde    | 1984-01-12 | ruhan.bagde@gmail.com    |
|  1 | saleel    | bagde    | 1984-06-12 | saleel.bagde@gmail.com   |
| 16 | sangita   | karnik   | 1990-12-01 | sangita.karnik@gmail.com |
| 17 | sangita   | menon    | 1989-10-26 | sangita.menon@gmail.com  |
|  7 | sharmin   | bagde    | 1986-12-14 | sharmin.bagde@gmail.com  |
| 26 | sonam     | khan     | 1972-05-13 | sonam.khan@gmail.com     |
| 14 | supriya   | karnik   | 1983-12-15 | supriya.karnik@gmail.com |
|  3 | ulka      | joshi    | 1970-10-25 | ulka.joshi@gmail.com     |
|  9 | vasant    | khande   | 1992-10-26 | vasant.khande@gmail.com  |
|  8 | vrushali  | bagde    | 1984-12-29 | vrushali.bagde@gmail.com |
+----+-----------+----------+------------+--------------------------+
22 rows in set (0.00 sec)

mysql> select * from student where dob = '1986-12-14';
+----+-----------+----------+------------+-------------------------+
| ID | namefirst | namelast | DOB        | emailID                 |
+----+-----------+----------+------------+-------------------------+
|  7 | sharmin   | bagde    | 1986-12-14 | sharmin.bagde@gmail.com |
+----+-----------+----------+------------+-------------------------+
1 row in set (0.00 sec)

mysql> select * from student where substring(namefirst, 1, 1) = 'r';
+----+-----------+----------+------------+-----------------------+
| ID | namefirst | namelast | DOB        | emailID               |
+----+-----------+----------+------------+-----------------------+
|  4 | rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com |
|  5 | ruhan     | bagde    | 1984-01-12 | ruhan.bagde@gmail.com |
| 18 | rahul     | shah     | 1982-06-12 | rahul.shah@gmail.com  |
| 22 | rajan     | patel    | 1982-07-30 | rajan.patel@gmail.com |
| 27 | rohit     | patil    | 1976-12-31 | rohit.patil@gmail.com |
| 28 | raj       | bubber   | 1982-02-28 | raj.bubber@gmail.com  |
+----+-----------+----------+------------+-----------------------+
6 rows in set (0.00 sec)

mysql> SELECT namefirst AS 'First Name', namelast AS 'Last Name' FROM student;
+------------+-----------+
| First Name | Last Name |
+------------+-----------+
| saleel     | bagde     |
| omkar      | rokde     |
| ulka       | joshi     |
| rahul      | patil     |
| ruhan      | bagde     |
| lala       | prasad    |
| sharmin    | bagde     |
| vrushali   | bagde     |
| vasant     | khande    |
| nitish     | patil     |
| neel       | save      |
| deep       | save      |
| nrupali    | save      |
| supriya    | karnik    |
| bandish    | karnik    |
| sangita    | karnik    |
| sangita    | menon     |
| rahul      | shah      |
| bhavin     | patel     |
| kaushal    | patil     |
| pankaj     | gandhi    |
| rajan      | patel     |
| bhavin     | patel     |
| mukesh     | bhavsar   |
| dilu       | khande    |
| sonam      | khan      |
| rohit      | patil     |
| raj        | bubber    |
+------------+-----------+
28 rows in set (0.00 sec)

mysql> select * from student order by dob;
+----+-----------+----------+------------+--------------------------+
| ID | namefirst | namelast | DOB        | emailID                  |
+----+-----------+----------+------------+--------------------------+
|  2 | omkar     | rokde    | 1969-10-25 | omkar.rakde@gmail.com    |
|  3 | ulka      | joshi    | 1970-10-25 | ulka.joshi@gmail.com     |
| 26 | sonam     | khan     | 1972-05-13 | sonam.khan@gmail.com     |
| 11 | neel      | save     | 1975-10-30 | neel.save@gmail.com      |
| 27 | rohit     | patil    | 1976-12-31 | rohit.patil@gmail.com    |
|  6 | lala      | prasad   | 1980-12-01 | lala.prasad@gmail.com    |
| 13 | nrupali   | save     | 1981-12-01 | nrupali.save@gmail.com   |
| 28 | raj       | bubber   | 1982-02-28 | raj.bubber@gmail.com     |
| 18 | rahul     | shah     | 1982-06-12 | rahul.shah@gmail.com     |
| 20 | kaushal   | patil    | 1982-07-30 | kaushal.patil@gmail.com  |
| 21 | pankaj    | gandhi   | 1982-07-30 | pankaj.gandhi@gmail.com  |
| 22 | rajan     | patel    | 1982-07-30 | rajan.patel@gmail.com    |
| 23 | bhavin    | patel    | 1982-07-30 | bhavin.patel@gmail.com   |
| 24 | mukesh    | bhavsar  | 1982-07-30 | mukesh.bhavsar@gmail.com |
| 25 | dilu      | khande   | 1982-07-30 | dilu.khande@gmail.com    |
|  4 | rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com    |
| 19 | bhavin    | patel    | 1983-11-13 | bhavin.patel@gmail.com   |
| 14 | supriya   | karnik   | 1983-12-15 | supriya.karnik@gmail.com |
|  5 | ruhan     | bagde    | 1984-01-12 | ruhan.bagde@gmail.com    |
|  1 | saleel    | bagde    | 1984-06-12 | saleel.bagde@gmail.com   |
|  8 | vrushali  | bagde    | 1984-12-29 | vrushali.bagde@gmail.com |
| 12 | deep      | save     | 1986-11-30 | deep.save@gmail.com      |
|  7 | sharmin   | bagde    | 1986-12-14 | sharmin.bagde@gmail.com  |
| 15 | bandish   | karnik   | 1987-12-30 | bandish.karnik@gmail.com |
| 17 | sangita   | menon    | 1989-10-26 | sangita.menon@gmail.com  |
| 10 | nitish    | patil    | 1990-10-26 | nitish.patil@gmail.com   |
| 16 | sangita   | karnik   | 1990-12-01 | sangita.karnik@gmail.com |
|  9 | vasant    | khande   | 1992-10-26 | vasant.khande@gmail.com  |
+----+-----------+----------+------------+--------------------------+
28 rows in set (0.00 sec)

mysql> select * from student where substring(namefirst, 1, 1) = 's' limit 12;
+----+-----------+----------+------------+--------------------------+
| ID | namefirst | namelast | DOB        | emailID                  |
+----+-----------+----------+------------+--------------------------+
|  1 | saleel    | bagde    | 1984-06-12 | saleel.bagde@gmail.com   |
|  7 | sharmin   | bagde    | 1986-12-14 | sharmin.bagde@gmail.com  |
| 14 | supriya   | karnik   | 1983-12-15 | supriya.karnik@gmail.com |
| 16 | sangita   | karnik   | 1990-12-01 | sangita.karnik@gmail.com |
| 17 | sangita   | menon    | 1989-10-26 | sangita.menon@gmail.com  |
| 26 | sonam     | khan     | 1972-05-13 | sonam.khan@gmail.com     |
+----+-----------+----------+------------+--------------------------+
6 rows in set (0.00 sec)

mysql> select * from student where substring(namefirst, 1, 1) = 's' limit 2;
+----+-----------+----------+------------+-------------------------+
| ID | namefirst | namelast | DOB        | emailID                 |
+----+-----------+----------+------------+-------------------------+
|  1 | saleel    | bagde    | 1984-06-12 | saleel.bagde@gmail.com  |
|  7 | sharmin   | bagde    | 1986-12-14 | sharmin.bagde@gmail.com |
+----+-----------+----------+------------+-------------------------+
2 rows in set (0.00 sec)

mysql> select * from student where dob = '1986-12-14';
+----+-----------+----------+------------+-------------------------+
| ID | namefirst | namelast | DOB        | emailID                 |
+----+-----------+----------+------------+-------------------------+
|  7 | sharmin   | bagde    | 1986-12-14 | sharmin.bagde@gmail.com |
+----+-----------+----------+------------+-------------------------+
1 row in set (0.00 sec)

mysql> select * from Modules;
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

mysql> select * from Modules where duration = 1;
+----+----------+----------+
| ID | name     | duration |
+----+----------+----------+
|  1 | Oracle   |        1 |
|  2 | PHP      |        1 |
|  3 | MySQL    |        1 |
|  4 | Node     |        1 |
|  5 | C++      |        1 |
|  6 | C        |        1 |
|  9 | MongoDB  |        1 |
| 11 | Hive     |        1 |
| 12 | Python   |        1 |
| 13 | Aptitude |        1 |
+----+----------+----------+
10 rows in set (0.00 sec)

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
5 rows in set (0.00 sec)

mysql> desc student_qualifications ;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| ID         | int          | NO   | PRI | NULL    |       |
| studentID  | int          | YES  | MUL | NULL    |       |
| name       | varchar(128) | YES  |     | NULL    |       |
| college    | varchar(128) | YES  |     | NULL    |       |
| university | varchar(128) | YES  |     | NULL    |       |
| marks      | varchar(45)  | YES  |     | NULL    |       |
| year       | int          | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> select * from student_qualifications where name = 'BE' and marks >= 70;
+----+-----------+------+-------------+------------------------+-------+------+
| ID | studentID | name | college     | university             | marks | year |
+----+-----------+------+-------------+------------------------+-------+------+
| 18 |         6 | BE   | Indiana     | University of Chicago  | 87    | 2015 |
| 21 |         7 | BE   | Kentucky    | Harvard University     | 97    | 2017 |
| 27 |         9 | BE   | Kansas      | Columbia University    | 87    | 2018 |
| 48 |        16 | BE   | Mississippi | University of Michigan | 76    | 2018 |
| 54 |        18 | BE   | Maryland    | Harvard University     | 75    | 2017 |
| 60 |        20 | BE   | Maryland    | Columbia University    | 72    | 2019 |
| 72 |        24 | BE   | Kentucky    | Harvard University     | 97    | 2017 |
| 75 |        25 | BE   | Kentucky    | Harvard University     | 97    | 2017 |
+----+-----------+------+-------------+------------------------+-------+------+
8 rows in set (0.00 sec)

mysql> select * from student_qualifications where name = 'BE' and year = 2017;
+----+-----------+------+----------+-------------------------+-------+------+
| ID | studentID | name | college  | university              | marks | year |
+----+-----------+------+----------+-------------------------+-------+------+
|  9 |         3 | BE   | Florida  | University of Florida   | 67    | 2017 |
| 21 |         7 | BE   | Kentucky | Harvard University      | 97    | 2017 |
| 45 |        15 | BE   | Alabama  | Pennsylvania University | 65    | 2017 |
| 54 |        18 | BE   | Maryland | Harvard University      | 75    | 2017 |
| 72 |        24 | BE   | Kentucky | Harvard University      | 97    | 2017 |
| 75 |        25 | BE   | Kentucky | Harvard University      | 97    | 2017 |
+----+-----------+------+----------+-------------------------+-------+------+
6 rows in set (0.00 sec)

mysql> select * from student_qualifications where name = 'BE' and year = 2017 and marks >= 80 ;
+----+-----------+------+----------+--------------------+-------+------+
| ID | studentID | name | college  | university         | marks | year |
+----+-----------+------+----------+--------------------+-------+------+
| 21 |         7 | BE   | Kentucky | Harvard University | 97    | 2017 |
| 72 |        24 | BE   | Kentucky | Harvard University | 97    | 2017 |
| 75 |        25 | BE   | Kentucky | Harvard University | 97    | 2017 |
+----+-----------+------+----------+--------------------+-------+------+
3 rows in set (0.00 sec)

mysql> select * from faculty_qualifications where name = 'BE' and university = "harvard university";
+----+-----------+------+---------+--------------------+-------+------+
| ID | facultyID | name | college | university         | marks | year |
+----+-----------+------+---------+--------------------+-------+------+
|  3 |         1 | BE   | Arizona | Harvard University | 68    | 2018 |
+----+-----------+------+---------+--------------------+-------+------+
1 row in set (0.01 sec)

mysql> select * from course where duration = 6;
+----+--------+----------+---------------------------------+
| ID | name   | duration | summery                         |
+----+--------+----------+---------------------------------+
|  1 | PG-DAC |        6 | This course is designed by CDAC |
|  2 | DBDA   |        6 | This course is designed by CDAC |
|  6 | DMC    |        6 | This course is designed by CDAC |
|  7 | DSSD   |        6 | This course is designed by CDAC |
+----+--------+----------+---------------------------------+
4 rows in set (0.01 sec)

mysql> select * from modules where duration between 1 and 2 ORDER BY duration ASC;
+----+----------+----------+
| ID | name     | duration |
+----+----------+----------+
|  1 | Oracle   |        1 |
|  2 | PHP      |        1 |
|  3 | MySQL    |        1 |
|  4 | Node     |        1 |
|  5 | C++      |        1 |
|  6 | C        |        1 |
|  9 | MongoDB  |        1 |
| 11 | Hive     |        1 |
| 12 | Python   |        1 |
| 13 | Aptitude |        1 |
|  7 | JAVA1    |        2 |
|  8 | JAVA2    |        2 |
| 10 | NET      |        2 |
+----+----------+----------+
13 rows in set (0.00 sec)

mysql> select *, if(year(dob) < 1980, "Student can vote", "Student cannot vote") from student;
+----+-----------+----------+------------+--------------------------+-----------------------------------------------------------------+
| ID | namefirst | namelast | DOB        | emailID                  | if(year(dob) < 1980, "Student can vote", "Student cannot vote") |
+----+-----------+----------+------------+--------------------------+-----------------------------------------------------------------+
|  1 | saleel    | bagde    | 1984-06-12 | saleel.bagde@gmail.com   | Student cannot vote                                             |
|  2 | omkar     | rokde    | 1969-10-25 | omkar.rakde@gmail.com    | Student can vote                                                |
|  3 | ulka      | joshi    | 1970-10-25 | ulka.joshi@gmail.com     | Student can vote                                                |
|  4 | rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com    | Student cannot vote                                             |
|  5 | ruhan     | bagde    | 1984-01-12 | ruhan.bagde@gmail.com    | Student cannot vote                                             |
|  6 | lala      | prasad   | 1980-12-01 | lala.prasad@gmail.com    | Student cannot vote                                             |
|  7 | sharmin   | bagde    | 1986-12-14 | sharmin.bagde@gmail.com  | Student cannot vote                                             |
|  8 | vrushali  | bagde    | 1984-12-29 | vrushali.bagde@gmail.com | Student cannot vote                                             |
|  9 | vasant    | khande   | 1992-10-26 | vasant.khande@gmail.com  | Student cannot vote                                             |
| 10 | nitish    | patil    | 1990-10-26 | nitish.patil@gmail.com   | Student cannot vote                                             |
| 11 | neel      | save     | 1975-10-30 | neel.save@gmail.com      | Student can vote                                                |
| 12 | deep      | save     | 1986-11-30 | deep.save@gmail.com      | Student cannot vote                                             |
| 13 | nrupali   | save     | 1981-12-01 | nrupali.save@gmail.com   | Student cannot vote                                             |
| 14 | supriya   | karnik   | 1983-12-15 | supriya.karnik@gmail.com | Student cannot vote                                             |
| 15 | bandish   | karnik   | 1987-12-30 | bandish.karnik@gmail.com | Student cannot vote                                             |
| 16 | sangita   | karnik   | 1990-12-01 | sangita.karnik@gmail.com | Student cannot vote                                             |
| 17 | sangita   | menon    | 1989-10-26 | sangita.menon@gmail.com  | Student cannot vote                                             |
| 18 | rahul     | shah     | 1982-06-12 | rahul.shah@gmail.com     | Student cannot vote                                             |
| 19 | bhavin    | patel    | 1983-11-13 | bhavin.patel@gmail.com   | Student cannot vote                                             |
| 20 | kaushal   | patil    | 1982-07-30 | kaushal.patil@gmail.com  | Student cannot vote                                             |
| 21 | pankaj    | gandhi   | 1982-07-30 | pankaj.gandhi@gmail.com  | Student cannot vote                                             |
| 22 | rajan     | patel    | 1982-07-30 | rajan.patel@gmail.com    | Student cannot vote                                             |
| 23 | bhavin    | patel    | 1982-07-30 | bhavin.patel@gmail.com   | Student cannot vote                                             |
| 24 | mukesh    | bhavsar  | 1982-07-30 | mukesh.bhavsar@gmail.com | Student cannot vote                                             |
| 25 | dilu      | khande   | 1982-07-30 | dilu.khande@gmail.com    | Student cannot vote                                             |
| 26 | sonam     | khan     | 1972-05-13 | sonam.khan@gmail.com     | Student can vote                                                |
| 27 | rohit     | patil    | 1976-12-31 | rohit.patil@gmail.com    | Student can vote                                                |
| 28 | raj       | bubber   | 1982-02-28 | raj.bubber@gmail.com     | Student cannot vote                                             |
+----+-----------+----------+------------+--------------------------+-----------------------------------------------------------------+
28 rows in set (0.00 sec)

mysql> select *, if(year(dob) < 1980, "Student can vote", "Student cannot vote") as voting from student;
+----+-----------+----------+------------+--------------------------+---------------------+
| ID | namefirst | namelast | DOB        | emailID                  | voting              |
+----+-----------+----------+------------+--------------------------+---------------------+
|  1 | saleel    | bagde    | 1984-06-12 | saleel.bagde@gmail.com   | Student cannot vote |
|  2 | omkar     | rokde    | 1969-10-25 | omkar.rakde@gmail.com    | Student can vote    |
|  3 | ulka      | joshi    | 1970-10-25 | ulka.joshi@gmail.com     | Student can vote    |
|  4 | rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com    | Student cannot vote |
|  5 | ruhan     | bagde    | 1984-01-12 | ruhan.bagde@gmail.com    | Student cannot vote |
|  6 | lala      | prasad   | 1980-12-01 | lala.prasad@gmail.com    | Student cannot vote |
|  7 | sharmin   | bagde    | 1986-12-14 | sharmin.bagde@gmail.com  | Student cannot vote |
|  8 | vrushali  | bagde    | 1984-12-29 | vrushali.bagde@gmail.com | Student cannot vote |
|  9 | vasant    | khande   | 1992-10-26 | vasant.khande@gmail.com  | Student cannot vote |
| 10 | nitish    | patil    | 1990-10-26 | nitish.patil@gmail.com   | Student cannot vote |
| 11 | neel      | save     | 1975-10-30 | neel.save@gmail.com      | Student can vote    |
| 12 | deep      | save     | 1986-11-30 | deep.save@gmail.com      | Student cannot vote |
| 13 | nrupali   | save     | 1981-12-01 | nrupali.save@gmail.com   | Student cannot vote |
| 14 | supriya   | karnik   | 1983-12-15 | supriya.karnik@gmail.com | Student cannot vote |
| 15 | bandish   | karnik   | 1987-12-30 | bandish.karnik@gmail.com | Student cannot vote |
| 16 | sangita   | karnik   | 1990-12-01 | sangita.karnik@gmail.com | Student cannot vote |
| 17 | sangita   | menon    | 1989-10-26 | sangita.menon@gmail.com  | Student cannot vote |
| 18 | rahul     | shah     | 1982-06-12 | rahul.shah@gmail.com     | Student cannot vote |
| 19 | bhavin    | patel    | 1983-11-13 | bhavin.patel@gmail.com   | Student cannot vote |
| 20 | kaushal   | patil    | 1982-07-30 | kaushal.patil@gmail.com  | Student cannot vote |
| 21 | pankaj    | gandhi   | 1982-07-30 | pankaj.gandhi@gmail.com  | Student cannot vote |
| 22 | rajan     | patel    | 1982-07-30 | rajan.patel@gmail.com    | Student cannot vote |
| 23 | bhavin    | patel    | 1982-07-30 | bhavin.patel@gmail.com   | Student cannot vote |
| 24 | mukesh    | bhavsar  | 1982-07-30 | mukesh.bhavsar@gmail.com | Student cannot vote |
| 25 | dilu      | khande   | 1982-07-30 | dilu.khande@gmail.com    | Student cannot vote |
| 26 | sonam     | khan     | 1972-05-13 | sonam.khan@gmail.com     | Student can vote    |
| 27 | rohit     | patil    | 1976-12-31 | rohit.patil@gmail.com    | Student can vote    |
| 28 | raj       | bubber   | 1982-02-28 | raj.bubber@gmail.com     | Student cannot vote |
+----+-----------+----------+------------+--------------------------+---------------------+
28 rows in set (0.00 sec)

mysql> select distinct university from  student_qualifications;
+-------------------------+
| university              |
+-------------------------+
| Stanford University     |
| Harvard University      |
| University of Chicago   |
| Yale University         |
| California University   |
| University of Florida   |
| Pennsylvania University |
| Columbia University     |
| University of Michigan  |
| University of Ohio      |
| University Maryland     |
+-------------------------+
11 rows in set (0.00 sec)

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
5 rows in set (0.00 sec)

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

mysql> select max(marks) as second_highest_marks from student_qualifications where marks < (select max(marks) from student_qualifications where name = 'be') and name = 'be';
+----------------------+
| second_highest_marks |
+----------------------+
| 87                   |
+----------------------+
1 row in set (0.00 sec)

mysql> select max(marks) as second_highest_marks from student_qualifications where marks < (select max(marks) from student_qualifications where name = 'be') and name = 'be';
+----------------------+
| second_highest_marks |
+----------------------+
| 87                   |
+----------------------+
1 row in set (0.00 sec)

mysql> select min(marks) as second_lowest_marks from student_qualifications where marks > (select min(marks) from student_qualifications where name = 'be') and name = 'be';
+---------------------+
| second_lowest_marks |
+---------------------+
| 61                  |
+---------------------+
1 row in set (0.00 sec)

mysql> select * from student limit 21, 7;
+----+-----------+----------+------------+--------------------------+
| ID | namefirst | namelast | DOB        | emailID                  |
+----+-----------+----------+------------+--------------------------+
| 22 | rajan     | patel    | 1982-07-30 | rajan.patel@gmail.com    |
| 23 | bhavin    | patel    | 1982-07-30 | bhavin.patel@gmail.com   |
| 24 | mukesh    | bhavsar  | 1982-07-30 | mukesh.bhavsar@gmail.com |
| 25 | dilu      | khande   | 1982-07-30 | dilu.khande@gmail.com    |
| 26 | sonam     | khan     | 1972-05-13 | sonam.khan@gmail.com     |
| 27 | rohit     | patil    | 1976-12-31 | rohit.patil@gmail.com    |
| 28 | raj       | bubber   | 1982-02-28 | raj.bubber@gmail.com     |
+----+-----------+----------+------------+--------------------------+
7 rows in set (0.00 sec)

mysql>