Microsoft Windows [Version 10.0.19045.4894]
(c) Microsoft Corporation. All rights reserved.

C:\Users\IET>mysql -h 192.168.10.150 -P 3306 -u dac15 -p
Enter password: *******
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 146
Server version: 8.1.0 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use dac15;
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

mysql> select namefirst, namelast, emailid, left(emailid, 7) from student;
+-----------+----------+--------------------------+------------------+
| namefirst | namelast | emailid                  | left(emailid, 7) |
+-----------+----------+--------------------------+------------------+
| saleel    | bagde    | saleel.bagde@gmail.com   | saleel.          |
| omkar     | rokde    | omkar.rakde@gmail.com    | omkar.r          |
| ulka      | joshi    | ulka.joshi@gmail.com     | ulka.jo          |
| rahul     | patil    | rahul.patil@gmail.com    | rahul.p          |
| ruhan     | bagde    | ruhan.bagde@gmail.com    | ruhan.b          |
| lala      | prasad   | lala.prasad@gmail.com    | lala.pr          |
| sharmin   | bagde    | sharmin.bagde@gmail.com  | sharmin          |
| vrushali  | bagde    | vrushali.bagde@gmail.com | vrushal          |
| vasant    | khande   | vasant.khande@gmail.com  | vasant.          |
| nitish    | patil    | nitish.patil@gmail.com   | nitish.          |
| neel      | save     | neel.save@gmail.com      | neel.sa          |
| deep      | save     | deep.save@gmail.com      | deep.sa          |
| nrupali   | save     | nrupali.save@gmail.com   | nrupali          |
| supriya   | karnik   | supriya.karnik@gmail.com | supriya          |
| bandish   | karnik   | bandish.karnik@gmail.com | bandish          |
| sangita   | karnik   | sangita.karnik@gmail.com | sangita          |
| sangita   | menon    | sangita.menon@gmail.com  | sangita          |
| rahul     | shah     | rahul.shah@gmail.com     | rahul.s          |
| bhavin    | patel    | bhavin.patel@gmail.com   | bhavin.          |
| kaushal   | patil    | kaushal.patil@gmail.com  | kaushal          |
| pankaj    | gandhi   | pankaj.gandhi@gmail.com  | pankaj.          |
| rajan     | patel    | rajan.patel@gmail.com    | rajan.p          |
| bhavin    | patel    | bhavin.patel@gmail.com   | bhavin.          |
| mukesh    | bhavsar  | mukesh.bhavsar@gmail.com | mukesh.          |
| dilu      | khande   | dilu.khande@gmail.com    | dilu.kh          |
| sonam     | khan     | sonam.khan@gmail.com     | sonam.k          |
| rohit     | patil    | rohit.patil@gmail.com    | rohit.p          |
| raj       | bubber   | raj.bubber@gmail.com     | raj.bub          |
+-----------+----------+--------------------------+------------------+
28 rows in set (0.00 sec)

mysql> select namefirst, namelast, left(namefirst, 3) from student;
+-----------+----------+--------------------+
| namefirst | namelast | left(namefirst, 3) |
+-----------+----------+--------------------+
| saleel    | bagde    | sal                |
| omkar     | rokde    | omk                |
| ulka      | joshi    | ulk                |
| rahul     | patil    | rah                |
| ruhan     | bagde    | ruh                |
| lala      | prasad   | lal                |
| sharmin   | bagde    | sha                |
| vrushali  | bagde    | vru                |
| vasant    | khande   | vas                |
| nitish    | patil    | nit                |
| neel      | save     | nee                |
| deep      | save     | dee                |
| nrupali   | save     | nru                |
| supriya   | karnik   | sup                |
| bandish   | karnik   | ban                |
| sangita   | karnik   | san                |
| sangita   | menon    | san                |
| rahul     | shah     | rah                |
| bhavin    | patel    | bha                |
| kaushal   | patil    | kau                |
| pankaj    | gandhi   | pan                |
| rajan     | patel    | raj                |
| bhavin    | patel    | bha                |
| mukesh    | bhavsar  | muk                |
| dilu      | khande   | dil                |
| sonam     | khan     | son                |
| rohit     | patil    | roh                |
| raj       | bubber   | raj                |
+-----------+----------+--------------------+
28 rows in set (0.00 sec)

mysql> select namefirst, namelast, right(namefirst, 3) from student;
+-----------+----------+---------------------+
| namefirst | namelast | right(namefirst, 3) |
+-----------+----------+---------------------+
| saleel    | bagde    | eel                 |
| omkar     | rokde    | kar                 |
| ulka      | joshi    | lka                 |
| rahul     | patil    | hul                 |
| ruhan     | bagde    | han                 |
| lala      | prasad   | ala                 |
| sharmin   | bagde    | min                 |
| vrushali  | bagde    | ali                 |
| vasant    | khande   | ant                 |
| nitish    | patil    | ish                 |
| neel      | save     | eel                 |
| deep      | save     | eep                 |
| nrupali   | save     | ali                 |
| supriya   | karnik   | iya                 |
| bandish   | karnik   | ish                 |
| sangita   | karnik   | ita                 |
| sangita   | menon    | ita                 |
| rahul     | shah     | hul                 |
| bhavin    | patel    | vin                 |
| kaushal   | patil    | hal                 |
| pankaj    | gandhi   | kaj                 |
| rajan     | patel    | jan                 |
| bhavin    | patel    | vin                 |
| mukesh    | bhavsar  | esh                 |
| dilu      | khande   | ilu                 |
| sonam     | khan     | nam                 |
| rohit     | patil    | hit                 |
| raj       | bubber   | raj                 |
+-----------+----------+---------------------+
28 rows in set (0.00 sec)

mysql> desc student_phone;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| ID        | int         | NO   | PRI | NULL    |       |
| studentID | int         | YES  | MUL | NULL    |       |
| number    | varchar(45) | YES  |     | NULL    |       |
| isActive  | tinyint(1)  | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> select number from student_phone where left(number, 2) = 70;
+------------+
| number     |
+------------+
| 7032300034 |
| 7032300039 |
| 7032300050 |
| 7032300027 |
| 7032300001 |
| 7032300079 |
| 7032300081 |
| 7032300054 |
| 7032300059 |
| 7032300086 |
| 7032300082 |
| 7032300042 |
| 7032300055 |
| 7032300013 |
| 7032300099 |
| 7032300023 |
| 7032300084 |
| 7032300011 |
| 7032300066 |
| 7032300096 |
| 7032300001 |
+------------+
21 rows in set (0.00 sec)

mysql> select * from student limit 5;
+----+-----------+----------+------------+------------------------+
| ID | namefirst | namelast | DOB        | emailID                |
+----+-----------+----------+------------+------------------------+
|  1 | saleel    | bagde    | 1984-06-12 | saleel.bagde@gmail.com |
|  2 | omkar     | rokde    | 1969-10-25 | omkar.rakde@gmail.com  |
|  3 | ulka      | joshi    | 1970-10-25 | ulka.joshi@gmail.com   |
|  4 | rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com  |
|  5 | ruhan     | bagde    | 1984-01-12 | ruhan.bagde@gmail.com  |
+----+-----------+----------+------------+------------------------+
5 rows in set (0.00 sec)

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

mysql> select * from student limit 23, 5;
+----+-----------+----------+------------+--------------------------+
| ID | namefirst | namelast | DOB        | emailID                  |
+----+-----------+----------+------------+--------------------------+
| 24 | mukesh    | bhavsar  | 1982-07-30 | mukesh.bhavsar@gmail.com |
| 25 | dilu      | khande   | 1982-07-30 | dilu.khande@gmail.com    |
| 26 | sonam     | khan     | 1972-05-13 | sonam.khan@gmail.com     |
| 27 | rohit     | patil    | 1976-12-31 | rohit.patil@gmail.com    |
| 28 | raj       | bubber   | 1982-02-28 | raj.bubber@gmail.com     |
+----+-----------+----------+------------+--------------------------+
5 rows in set (0.00 sec)

mysql> ^C
mysql> select * from student order by namefirst;
+----+-----------+----------+------------+--------------------------+
| ID | namefirst | namelast | DOB        | emailID                  |
+----+-----------+----------+------------+--------------------------+
| 15 | bandish   | karnik   | 1987-12-30 | bandish.karnik@gmail.com |
| 19 | bhavin    | patel    | 1983-11-13 | bhavin.patel@gmail.com   |
| 23 | bhavin    | patel    | 1982-07-30 | bhavin.patel@gmail.com   |
| 12 | deep      | save     | 1986-11-30 | deep.save@gmail.com      |
| 25 | dilu      | khande   | 1982-07-30 | dilu.khande@gmail.com    |
| 20 | kaushal   | patil    | 1982-07-30 | kaushal.patil@gmail.com  |
|  6 | lala      | prasad   | 1980-12-01 | lala.prasad@gmail.com    |
| 24 | mukesh    | bhavsar  | 1982-07-30 | mukesh.bhavsar@gmail.com |
| 11 | neel      | save     | 1975-10-30 | neel.save@gmail.com      |
| 10 | nitish    | patil    | 1990-10-26 | nitish.patil@gmail.com   |
| 13 | nrupali   | save     | 1981-12-01 | nrupali.save@gmail.com   |
|  2 | omkar     | rokde    | 1969-10-25 | omkar.rakde@gmail.com    |
| 21 | pankaj    | gandhi   | 1982-07-30 | pankaj.gandhi@gmail.com  |
|  4 | rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com    |
| 18 | rahul     | shah     | 1982-06-12 | rahul.shah@gmail.com     |
| 28 | raj       | bubber   | 1982-02-28 | raj.bubber@gmail.com     |
| 22 | rajan     | patel    | 1982-07-30 | rajan.patel@gmail.com    |
| 27 | rohit     | patil    | 1976-12-31 | rohit.patil@gmail.com    |
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
28 rows in set (0.00 sec)

mysql> select * from student order by namelast desc;
+----+-----------+----------+------------+--------------------------+
| ID | namefirst | namelast | DOB        | emailID                  |
+----+-----------+----------+------------+--------------------------+
| 18 | rahul     | shah     | 1982-06-12 | rahul.shah@gmail.com     |
| 11 | neel      | save     | 1975-10-30 | neel.save@gmail.com      |
| 12 | deep      | save     | 1986-11-30 | deep.save@gmail.com      |
| 13 | nrupali   | save     | 1981-12-01 | nrupali.save@gmail.com   |
|  2 | omkar     | rokde    | 1969-10-25 | omkar.rakde@gmail.com    |
|  6 | lala      | prasad   | 1980-12-01 | lala.prasad@gmail.com    |
|  4 | rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com    |
| 10 | nitish    | patil    | 1990-10-26 | nitish.patil@gmail.com   |
| 20 | kaushal   | patil    | 1982-07-30 | kaushal.patil@gmail.com  |
| 27 | rohit     | patil    | 1976-12-31 | rohit.patil@gmail.com    |
| 19 | bhavin    | patel    | 1983-11-13 | bhavin.patel@gmail.com   |
| 22 | rajan     | patel    | 1982-07-30 | rajan.patel@gmail.com    |
| 23 | bhavin    | patel    | 1982-07-30 | bhavin.patel@gmail.com   |
| 17 | sangita   | menon    | 1989-10-26 | sangita.menon@gmail.com  |
|  9 | vasant    | khande   | 1992-10-26 | vasant.khande@gmail.com  |
| 25 | dilu      | khande   | 1982-07-30 | dilu.khande@gmail.com    |
| 26 | sonam     | khan     | 1972-05-13 | sonam.khan@gmail.com     |
| 14 | supriya   | karnik   | 1983-12-15 | supriya.karnik@gmail.com |
| 15 | bandish   | karnik   | 1987-12-30 | bandish.karnik@gmail.com |
| 16 | sangita   | karnik   | 1990-12-01 | sangita.karnik@gmail.com |
|  3 | ulka      | joshi    | 1970-10-25 | ulka.joshi@gmail.com     |
| 21 | pankaj    | gandhi   | 1982-07-30 | pankaj.gandhi@gmail.com  |
| 28 | raj       | bubber   | 1982-02-28 | raj.bubber@gmail.com     |
| 24 | mukesh    | bhavsar  | 1982-07-30 | mukesh.bhavsar@gmail.com |
|  1 | saleel    | bagde    | 1984-06-12 | saleel.bagde@gmail.com   |
|  5 | ruhan     | bagde    | 1984-01-12 | ruhan.bagde@gmail.com    |
|  7 | sharmin   | bagde    | 1986-12-14 | sharmin.bagde@gmail.com  |
|  8 | vrushali  | bagde    | 1984-12-29 | vrushali.bagde@gmail.com |
+----+-----------+----------+------------+--------------------------+
28 rows in set (0.00 sec)

mysql> select id, namefirst, namelast, emailid from student where size(emaild) > 20;
ERROR 1305 (42000): FUNCTION dac15.size does not exist
mysql> select id, namefirst, namelast, emailid from student where length(emaild) > 20;
ERROR 1054 (42S22): Unknown column 'emaild' in 'where clause'
mysql> select id, namefirst, namelast, emailid from student where length(emailid) > 20;
+----+-----------+----------+--------------------------+
| id | namefirst | namelast | emailid                  |
+----+-----------+----------+--------------------------+
|  1 | saleel    | bagde    | saleel.bagde@gmail.com   |
|  2 | omkar     | rokde    | omkar.rakde@gmail.com    |
|  4 | rahul     | patil    | rahul.patil@gmail.com    |
|  5 | ruhan     | bagde    | ruhan.bagde@gmail.com    |
|  6 | lala      | prasad   | lala.prasad@gmail.com    |
|  7 | sharmin   | bagde    | sharmin.bagde@gmail.com  |
|  8 | vrushali  | bagde    | vrushali.bagde@gmail.com |
|  9 | vasant    | khande   | vasant.khande@gmail.com  |
| 10 | nitish    | patil    | nitish.patil@gmail.com   |
| 13 | nrupali   | save     | nrupali.save@gmail.com   |
| 14 | supriya   | karnik   | supriya.karnik@gmail.com |
| 15 | bandish   | karnik   | bandish.karnik@gmail.com |
| 16 | sangita   | karnik   | sangita.karnik@gmail.com |
| 17 | sangita   | menon    | sangita.menon@gmail.com  |
| 19 | bhavin    | patel    | bhavin.patel@gmail.com   |
| 20 | kaushal   | patil    | kaushal.patil@gmail.com  |
| 21 | pankaj    | gandhi   | pankaj.gandhi@gmail.com  |
| 22 | rajan     | patel    | rajan.patel@gmail.com    |
| 23 | bhavin    | patel    | bhavin.patel@gmail.com   |
| 24 | mukesh    | bhavsar  | mukesh.bhavsar@gmail.com |
| 25 | dilu      | khande   | dilu.khande@gmail.com    |
| 27 | rohit     | patil    | rohit.patil@gmail.com    |
+----+-----------+----------+--------------------------+
22 rows in set (0.00 sec)

mysql> select concat(namefirst, namelast) as `Full Name` from student;
+---------------+
| Full Name     |
+---------------+
| saleelbagde   |
| omkarrokde    |
| ulkajoshi     |
| rahulpatil    |
| ruhanbagde    |
| lalaprasad    |
| sharminbagde  |
| vrushalibagde |
| vasantkhande  |
| nitishpatil   |
| neelsave      |
| deepsave      |
| nrupalisave   |
| supriyakarnik |
| bandishkarnik |
| sangitakarnik |
| sangitamenon  |
| rahulshah     |
| bhavinpatel   |
| kaushalpatil  |
| pankajgandhi  |
| rajanpatel    |
| bhavinpatel   |
| mukeshbhavsar |
| dilukhande    |
| sonamkhan     |
| rohitpatil    |
| rajbubber     |
+---------------+
28 rows in set (0.00 sec)

mysql> select concat(namefirst," " ,  namelast, "email id is ", emailid) as `Full Name with email id` from student;
+----------------------------------------------------+
| Full Name with email id                            |
+----------------------------------------------------+
| saleel bagdeemail id is saleel.bagde@gmail.com     |
| omkar rokdeemail id is omkar.rakde@gmail.com       |
| ulka joshiemail id is ulka.joshi@gmail.com         |
| rahul patilemail id is rahul.patil@gmail.com       |
| ruhan bagdeemail id is ruhan.bagde@gmail.com       |
| lala prasademail id is lala.prasad@gmail.com       |
| sharmin bagdeemail id is sharmin.bagde@gmail.com   |
| vrushali bagdeemail id is vrushali.bagde@gmail.com |
| vasant khandeemail id is vasant.khande@gmail.com   |
| nitish patilemail id is nitish.patil@gmail.com     |
| neel saveemail id is neel.save@gmail.com           |
| deep saveemail id is deep.save@gmail.com           |
| nrupali saveemail id is nrupali.save@gmail.com     |
| supriya karnikemail id is supriya.karnik@gmail.com |
| bandish karnikemail id is bandish.karnik@gmail.com |
| sangita karnikemail id is sangita.karnik@gmail.com |
| sangita menonemail id is sangita.menon@gmail.com   |
| rahul shahemail id is rahul.shah@gmail.com         |
| bhavin patelemail id is bhavin.patel@gmail.com     |
| kaushal patilemail id is kaushal.patil@gmail.com   |
| pankaj gandhiemail id is pankaj.gandhi@gmail.com   |
| rajan patelemail id is rajan.patel@gmail.com       |
| bhavin patelemail id is bhavin.patel@gmail.com     |
| mukesh bhavsaremail id is mukesh.bhavsar@gmail.com |
| dilu khandeemail id is dilu.khande@gmail.com       |
| sonam khanemail id is sonam.khan@gmail.com         |
| rohit patilemail id is rohit.patil@gmail.com       |
| raj bubberemail id is raj.bubber@gmail.com         |
+----------------------------------------------------+
28 rows in set (0.00 sec)

mysql> select concat(namefirst," " ,  namelast, " email id is ", emailid) as `Full Name with email id` from student;
+-----------------------------------------------------+
| Full Name with email id                             |
+-----------------------------------------------------+
| saleel bagde email id is saleel.bagde@gmail.com     |
| omkar rokde email id is omkar.rakde@gmail.com       |
| ulka joshi email id is ulka.joshi@gmail.com         |
| rahul patil email id is rahul.patil@gmail.com       |
| ruhan bagde email id is ruhan.bagde@gmail.com       |
| lala prasad email id is lala.prasad@gmail.com       |
| sharmin bagde email id is sharmin.bagde@gmail.com   |
| vrushali bagde email id is vrushali.bagde@gmail.com |
| vasant khande email id is vasant.khande@gmail.com   |
| nitish patil email id is nitish.patil@gmail.com     |
| neel save email id is neel.save@gmail.com           |
| deep save email id is deep.save@gmail.com           |
| nrupali save email id is nrupali.save@gmail.com     |
| supriya karnik email id is supriya.karnik@gmail.com |
| bandish karnik email id is bandish.karnik@gmail.com |
| sangita karnik email id is sangita.karnik@gmail.com |
| sangita menon email id is sangita.menon@gmail.com   |
| rahul shah email id is rahul.shah@gmail.com         |
| bhavin patel email id is bhavin.patel@gmail.com     |
| kaushal patil email id is kaushal.patil@gmail.com   |
| pankaj gandhi email id is pankaj.gandhi@gmail.com   |
| rajan patel email id is rajan.patel@gmail.com       |
| bhavin patel email id is bhavin.patel@gmail.com     |
| mukesh bhavsar email id is mukesh.bhavsar@gmail.com |
| dilu khande email id is dilu.khande@gmail.com       |
| sonam khan email id is sonam.khan@gmail.com         |
| rohit patil email id is rohit.patil@gmail.com       |
| raj bubber email id is raj.bubber@gmail.com         |
+-----------------------------------------------------+
28 rows in set (0.00 sec)

mysql> select ucase(namefirst), ucase(namelast) from student;
+------------------+-----------------+
| ucase(namefirst) | ucase(namelast) |
+------------------+-----------------+
| SALEEL           | BAGDE           |
| OMKAR            | ROKDE           |
| ULKA             | JOSHI           |
| RAHUL            | PATIL           |
| RUHAN            | BAGDE           |
| LALA             | PRASAD          |
| SHARMIN          | BAGDE           |
| VRUSHALI         | BAGDE           |
| VASANT           | KHANDE          |
| NITISH           | PATIL           |
| NEEL             | SAVE            |
| DEEP             | SAVE            |
| NRUPALI          | SAVE            |
| SUPRIYA          | KARNIK          |
| BANDISH          | KARNIK          |
| SANGITA          | KARNIK          |
| SANGITA          | MENON           |
| RAHUL            | SHAH            |
| BHAVIN           | PATEL           |
| KAUSHAL          | PATIL           |
| PANKAJ           | GANDHI          |
| RAJAN            | PATEL           |
| BHAVIN           | PATEL           |
| MUKESH           | BHAVSAR         |
| DILU             | KHANDE          |
| SONAM            | KHAN            |
| ROHIT            | PATIL           |
| RAJ              | BUBBER          |
+------------------+-----------------+
28 rows in set (0.00 sec)

mysql> select lcase(namefirst), lcase(namelast) from student;
+------------------+-----------------+
| lcase(namefirst) | lcase(namelast) |
+------------------+-----------------+
| saleel           | bagde           |
| omkar            | rokde           |
| ulka             | joshi           |
| rahul            | patil           |
| ruhan            | bagde           |
| lala             | prasad          |
| sharmin          | bagde           |
| vrushali         | bagde           |
| vasant           | khande          |
| nitish           | patil           |
| neel             | save            |
| deep             | save            |
| nrupali          | save            |
| supriya          | karnik          |
| bandish          | karnik          |
| sangita          | karnik          |
| sangita          | menon           |
| rahul            | shah            |
| bhavin           | patel           |
| kaushal          | patil           |
| pankaj           | gandhi          |
| rajan            | patel           |
| bhavin           | patel           |
| mukesh           | bhavsar         |
| dilu             | khande          |
| sonam            | khan            |
| rohit            | patil           |
| raj              | bubber          |
+------------------+-----------------+
28 rows in set (0.00 sec)

mysql> select reverse(namefirst), reverse(namelast) from student;
+--------------------+-------------------+
| reverse(namefirst) | reverse(namelast) |
+--------------------+-------------------+
| leelas             | edgab             |
| rakmo              | edkor             |
| aklu               | ihsoj             |
| luhar              | litap             |
| nahur              | edgab             |
| alal               | dasarp            |
| nimrahs            | edgab             |
| ilahsurv           | edgab             |
| tnasav             | ednahk            |
| hsitin             | litap             |
| leen               | evas              |
| peed               | evas              |
| ilapurn            | evas              |
| ayirpus            | kinrak            |
| hsidnab            | kinrak            |
| atignas            | kinrak            |
| atignas            | nonem             |
| luhar              | hahs              |
| nivahb             | letap             |
| lahsuak            | litap             |
| jaknap             | ihdnag            |
| najar              | letap             |
| nivahb             | letap             |
| hsekum             | rasvahb           |
| ulid               | ednahk            |
| manos              | nahk              |
| tihor              | litap             |
| jar                | rebbub            |
+--------------------+-------------------+
28 rows in set (0.00 sec)

mysql> select left(namefirst, 4) from student;
+--------------------+
| left(namefirst, 4) |
+--------------------+
| sale               |
| omka               |
| ulka               |
| rahu               |
| ruha               |
| lala               |
| shar               |
| vrus               |
| vasa               |
| niti               |
| neel               |
| deep               |
| nrup               |
| supr               |
| band               |
| sang               |
| sang               |
| rahu               |
| bhav               |
| kaus               |
| pank               |
| raja               |
| bhav               |
| muke               |
| dilu               |
| sona               |
| rohi               |
| raj                |
+--------------------+
28 rows in set (0.00 sec)

mysql> select substring(namefirst, 2, length(namefirst)-2) from student;
+----------------------------------------------+
| substring(namefirst, 2, length(namefirst)-2) |
+----------------------------------------------+
| alee                                         |
| mka                                          |
| lk                                           |
| ahu                                          |
| uha                                          |
| al                                           |
| harmi                                        |
| rushal                                       |
| asan                                         |
| itis                                         |
| ee                                           |
| ee                                           |
| rupal                                        |
| upriy                                        |
| andis                                        |
| angit                                        |
| angit                                        |
| ahu                                          |
| havi                                         |
| ausha                                        |
| anka                                         |
| aja                                          |
| havi                                         |
| ukes                                         |
| il                                           |
| ona                                          |
| ohi                                          |
| a                                            |
+----------------------------------------------+
28 rows in set (0.00 sec)

mysql> select ascii(namefirst) from student;
+------------------+
| ascii(namefirst) |
+------------------+
|              115 |
|              111 |
|              117 |
|              114 |
|              114 |
|              108 |
|              115 |
|              118 |
|              118 |
|              110 |
|              110 |
|              100 |
|              110 |
|              115 |
|               98 |
|              115 |
|              115 |
|              114 |
|               98 |
|              107 |
|              112 |
|              114 |
|               98 |
|              109 |
|              100 |
|              115 |
|              114 |
|              114 |
+------------------+
28 rows in set (0.00 sec)

mysql> select number, rpad(number, 15, `!`) from student_phone;
ERROR 1054 (42S22): Unknown column '!' in 'field list'
mysql> select number, rpad(number, 15, "!") from student_phone;
+------------+-----------------------+
| number     | rpad(number, 15, "!") |
+------------+-----------------------+
| 7032300034 | 7032300034!!!!!       |
| 7032300039 | 7032300039!!!!!       |
| 7032300050 | 7032300050!!!!!       |
| 7032300027 | 7032300027!!!!!       |
| 7032300001 | 7032300001!!!!!       |
| 7032300079 | 7032300079!!!!!       |
| 7032300081 | 7032300081!!!!!       |
| 7032300054 | 7032300054!!!!!       |
| 7032300059 | 7032300059!!!!!       |
| 7032300086 | 7032300086!!!!!       |
| 7032300082 | 7032300082!!!!!       |
| 7032300042 | 7032300042!!!!!       |
| 7032300055 | 7032300055!!!!!       |
| 7032300013 | 7032300013!!!!!       |
| 7032300099 | 7032300099!!!!!       |
| 7032300023 | 7032300023!!!!!       |
| 7032300084 | 7032300084!!!!!       |
| 7032300011 | 7032300011!!!!!       |
| 7032300066 | 7032300066!!!!!       |
| 7032300096 | 7032300096!!!!!       |
| 7132300034 | 7132300034!!!!!       |
| 7132300039 | 7132300039!!!!!       |
| 7132300050 | 7132300050!!!!!       |
| 7132300027 | 7132300027!!!!!       |
| 7032300001 | 7032300001!!!!!       |
| 7132300079 | 7132300079!!!!!       |
| 7132300081 | 7132300081!!!!!       |
| 7132300054 | 7132300054!!!!!       |
| 7132300059 | 7132300059!!!!!       |
| 7132300086 | 7132300086!!!!!       |
| 7132300082 | 7132300082!!!!!       |
| 7132300042 | 7132300042!!!!!       |
| 7132300055 | 7132300055!!!!!       |
| 7132300055 | 7132300055!!!!!       |
| 7132300055 | 7132300055!!!!!       |
| 7134567123 | 7134567123!!!!!       |
| 7156567123 | 7156567123!!!!!       |
| 7156567134 | 7156567134!!!!!       |
| 7156563423 | 7156563423!!!!!       |
| 7156567183 | 7156567183!!!!!       |
| 7146566412 | 7146566412!!!!!       |
+------------+-----------------------+
41 rows in set (0.00 sec)

mysql> select number, rpad(number, 15, "*") from student_phone;
+------------+-----------------------+
| number     | rpad(number, 15, "*") |
+------------+-----------------------+
| 7032300034 | 7032300034*****       |
| 7032300039 | 7032300039*****       |
| 7032300050 | 7032300050*****       |
| 7032300027 | 7032300027*****       |
| 7032300001 | 7032300001*****       |
| 7032300079 | 7032300079*****       |
| 7032300081 | 7032300081*****       |
| 7032300054 | 7032300054*****       |
| 7032300059 | 7032300059*****       |
| 7032300086 | 7032300086*****       |
| 7032300082 | 7032300082*****       |
| 7032300042 | 7032300042*****       |
| 7032300055 | 7032300055*****       |
| 7032300013 | 7032300013*****       |
| 7032300099 | 7032300099*****       |
| 7032300023 | 7032300023*****       |
| 7032300084 | 7032300084*****       |
| 7032300011 | 7032300011*****       |
| 7032300066 | 7032300066*****       |
| 7032300096 | 7032300096*****       |
| 7132300034 | 7132300034*****       |
| 7132300039 | 7132300039*****       |
| 7132300050 | 7132300050*****       |
| 7132300027 | 7132300027*****       |
| 7032300001 | 7032300001*****       |
| 7132300079 | 7132300079*****       |
| 7132300081 | 7132300081*****       |
| 7132300054 | 7132300054*****       |
| 7132300059 | 7132300059*****       |
| 7132300086 | 7132300086*****       |
| 7132300082 | 7132300082*****       |
| 7132300042 | 7132300042*****       |
| 7132300055 | 7132300055*****       |
| 7132300055 | 7132300055*****       |
| 7132300055 | 7132300055*****       |
| 7134567123 | 7134567123*****       |
| 7156567123 | 7156567123*****       |
| 7156567134 | 7156567134*****       |
| 7156563423 | 7156563423*****       |
| 7156567183 | 7156567183*****       |
| 7146566412 | 7146566412*****       |
+------------+-----------------------+
41 rows in set (0.00 sec)

mysql> des student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'des student' at line 1
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
5 rows in set (0.01 sec)

mysql> select * from student where month(dob) = 10;
+----+-----------+----------+------------+-------------------------+
| ID | namefirst | namelast | DOB        | emailID                 |
+----+-----------+----------+------------+-------------------------+
|  2 | omkar     | rokde    | 1969-10-25 | omkar.rakde@gmail.com   |
|  3 | ulka      | joshi    | 1970-10-25 | ulka.joshi@gmail.com    |
|  4 | rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com   |
|  9 | vasant    | khande   | 1992-10-26 | vasant.khande@gmail.com |
| 10 | nitish    | patil    | 1990-10-26 | nitish.patil@gmail.com  |
| 11 | neel      | save     | 1975-10-30 | neel.save@gmail.com     |
| 17 | sangita   | menon    | 1989-10-26 | sangita.menon@gmail.com |
+----+-----------+----------+------------+-------------------------+
7 rows in set (0.00 sec)

mysql> select * from student where month(dob) = 1 or month(dob) = 12;
+----+-----------+----------+------------+--------------------------+
| ID | namefirst | namelast | DOB        | emailID                  |
+----+-----------+----------+------------+--------------------------+
|  5 | ruhan     | bagde    | 1984-01-12 | ruhan.bagde@gmail.com    |
|  6 | lala      | prasad   | 1980-12-01 | lala.prasad@gmail.com    |
|  7 | sharmin   | bagde    | 1986-12-14 | sharmin.bagde@gmail.com  |
|  8 | vrushali  | bagde    | 1984-12-29 | vrushali.bagde@gmail.com |
| 13 | nrupali   | save     | 1981-12-01 | nrupali.save@gmail.com   |
| 14 | supriya   | karnik   | 1983-12-15 | supriya.karnik@gmail.com |
| 15 | bandish   | karnik   | 1987-12-30 | bandish.karnik@gmail.com |
| 16 | sangita   | karnik   | 1990-12-01 | sangita.karnik@gmail.com |
| 27 | rohit     | patil    | 1976-12-31 | rohit.patil@gmail.com    |
+----+-----------+----------+------------+--------------------------+
9 rows in set (0.00 sec)

mysql> select * from faculty where dayofweek(dob) = 1;
Empty set (0.03 sec)

mysql> select now();
+---------------------+
| now()               |
+---------------------+
| 2024-10-17 12:23:26 |
+---------------------+
1 row in set (0.00 sec)

mysql> select month(noW());
+--------------+
| month(noW()) |
+--------------+
|           10 |
+--------------+
1 row in set (0.00 sec)

mysql> select monthname(noW());
+------------------+
| monthname(noW()) |
+------------------+
| October          |
+------------------+
1 row in set (0.00 sec)

mysql> select year(now());
+-------------+
| year(now()) |
+-------------+
|        2024 |
+-------------+
1 row in set (0.00 sec)

mysql> select namefirst, dob from student where year(dob) = 1984 order by namefirst;
+-----------+------------+
| namefirst | dob        |
+-----------+------------+
| ruhan     | 1984-01-12 |
| saleel    | 1984-06-12 |
| vrushali  | 1984-12-29 |
+-----------+------------+
3 rows in set (0.00 sec)

mysql> select * from student where quarter(dob) = 4;
+----+-----------+----------+------------+--------------------------+
| ID | namefirst | namelast | DOB        | emailID                  |
+----+-----------+----------+------------+--------------------------+
|  2 | omkar     | rokde    | 1969-10-25 | omkar.rakde@gmail.com    |
|  3 | ulka      | joshi    | 1970-10-25 | ulka.joshi@gmail.com     |
|  4 | rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com    |
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
| 19 | bhavin    | patel    | 1983-11-13 | bhavin.patel@gmail.com   |
| 27 | rohit     | patil    | 1976-12-31 | rohit.patil@gmail.com    |
+----+-----------+----------+------------+--------------------------+
17 rows in set (0.00 sec)

mysql> select * from student where weekofyear(dob) = 43;
+----+-----------+----------+------------+-------------------------+
| ID | namefirst | namelast | DOB        | emailID                 |
+----+-----------+----------+------------+-------------------------+
|  2 | omkar     | rokde    | 1969-10-25 | omkar.rakde@gmail.com   |
|  3 | ulka      | joshi    | 1970-10-25 | ulka.joshi@gmail.com    |
|  4 | rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com   |
| 10 | nitish    | patil    | 1990-10-26 | nitish.patil@gmail.com  |
| 17 | sangita   | menon    | 1989-10-26 | sangita.menon@gmail.com |
+----+-----------+----------+------------+-------------------------+
5 rows in set (0.00 sec)

mysql> select * from student where dayofmonth(dob) in between (10, 19);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'between (10, 19)' at line 1
mysql> select * from student where dayofmonth(dob) between 10 and 19;
+----+-----------+----------+------------+--------------------------+
| ID | namefirst | namelast | DOB        | emailID                  |
+----+-----------+----------+------------+--------------------------+
|  1 | saleel    | bagde    | 1984-06-12 | saleel.bagde@gmail.com   |
|  5 | ruhan     | bagde    | 1984-01-12 | ruhan.bagde@gmail.com    |
|  7 | sharmin   | bagde    | 1986-12-14 | sharmin.bagde@gmail.com  |
| 14 | supriya   | karnik   | 1983-12-15 | supriya.karnik@gmail.com |
| 18 | rahul     | shah     | 1982-06-12 | rahul.shah@gmail.com     |
| 19 | bhavin    | patel    | 1983-11-13 | bhavin.patel@gmail.com   |
| 26 | sonam     | khan     | 1972-05-13 | sonam.khan@gmail.com     |
+----+-----------+----------+------------+--------------------------+
7 rows in set (0.00 sec)

mysql> select rand() * 100;
+-------------------+
| rand() * 100      |
+-------------------+
| 93.61718529240898 |
+-------------------+
1 row in set (0.00 sec)

mysql> select rand() * 100;
+--------------------+
| rand() * 100       |
+--------------------+
| 54.003418287265504 |
+--------------------+
1 row in set (0.00 sec)

mysql>
mysql> select rand() * 100;
+------------------+
| rand() * 100     |
+------------------+
| 89.1655386324651 |
+------------------+
1 row in set (0.00 sec)

mysql> select rand() * 100;
+-------------------+
| rand() * 100      |
+-------------------+
| 83.81744137389347 |
+-------------------+
1 row in set (0.00 sec)

mysql> select rand() * 100;
+-------------------+
| rand() * 100      |
+-------------------+
| 51.59059404543657 |
+-------------------+
1 row in set (0.00 sec)

mysql> select rand() * 100;
+-------------------+
| rand() * 100      |
+-------------------+
| 6.500649178866902 |
+-------------------+
1 row in set (0.00 sec)

mysql> select left(namefirst, 5) from student;
+--------------------+
| left(namefirst, 5) |
+--------------------+
| salee              |
| omkar              |
| ulka               |
| rahul              |
| ruhan              |
| lala               |
| sharm              |
| vrush              |
| vasan              |
| nitis              |
| neel               |
| deep               |
| nrupa              |
| supri              |
| bandi              |
| sangi              |
| sangi              |
| rahul              |
| bhavi              |
| kaush              |
| panka              |
| rajan              |
| bhavi              |
| mukes              |
| dilu               |
| sonam              |
| rohit              |
| raj                |
+--------------------+
28 rows in set (0.00 sec)

mysql> select * from student order by weekday(DOB);
+----+-----------+----------+------------+--------------------------+
| ID | namefirst | namelast | DOB        | emailID                  |
+----+-----------+----------+------------+--------------------------+
|  6 | lala      | prasad   | 1980-12-01 | lala.prasad@gmail.com    |
|  9 | vasant    | khande   | 1992-10-26 | vasant.khande@gmail.com  |
|  1 | saleel    | bagde    | 1984-06-12 | saleel.bagde@gmail.com   |
| 13 | nrupali   | save     | 1981-12-01 | nrupali.save@gmail.com   |
| 15 | bandish   | karnik   | 1987-12-30 | bandish.karnik@gmail.com |
|  5 | ruhan     | bagde    | 1984-01-12 | ruhan.bagde@gmail.com    |
| 11 | neel      | save     | 1975-10-30 | neel.save@gmail.com      |
| 14 | supriya   | karnik   | 1983-12-15 | supriya.karnik@gmail.com |
| 17 | sangita   | menon    | 1989-10-26 | sangita.menon@gmail.com  |
| 10 | nitish    | patil    | 1990-10-26 | nitish.patil@gmail.com   |
| 20 | kaushal   | patil    | 1982-07-30 | kaushal.patil@gmail.com  |
| 21 | pankaj    | gandhi   | 1982-07-30 | pankaj.gandhi@gmail.com  |
| 22 | rajan     | patel    | 1982-07-30 | rajan.patel@gmail.com    |
| 23 | bhavin    | patel    | 1982-07-30 | bhavin.patel@gmail.com   |
| 24 | mukesh    | bhavsar  | 1982-07-30 | mukesh.bhavsar@gmail.com |
| 25 | dilu      | khande   | 1982-07-30 | dilu.khande@gmail.com    |
| 27 | rohit     | patil    | 1976-12-31 | rohit.patil@gmail.com    |
|  2 | omkar     | rokde    | 1969-10-25 | omkar.rakde@gmail.com    |
|  8 | vrushali  | bagde    | 1984-12-29 | vrushali.bagde@gmail.com |
| 16 | sangita   | karnik   | 1990-12-01 | sangita.karnik@gmail.com |
| 18 | rahul     | shah     | 1982-06-12 | rahul.shah@gmail.com     |
| 26 | sonam     | khan     | 1972-05-13 | sonam.khan@gmail.com     |
|  3 | ulka      | joshi    | 1970-10-25 | ulka.joshi@gmail.com     |
|  4 | rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com    |
|  7 | sharmin   | bagde    | 1986-12-14 | sharmin.bagde@gmail.com  |
| 12 | deep      | save     | 1986-11-30 | deep.save@gmail.com      |
| 19 | bhavin    | patel    | 1983-11-13 | bhavin.patel@gmail.com   |
| 28 | raj       | bubber   | 1982-02-28 | raj.bubber@gmail.com     |
+----+-----------+----------+------------+--------------------------+
28 rows in set (0.00 sec)

mysql> select DOB, weekday(dob) day from student order by weekday(DOB);
+------------+------+
| DOB        | day  |
+------------+------+
| 1980-12-01 |    0 |
| 1992-10-26 |    0 |
| 1984-06-12 |    1 |
| 1981-12-01 |    1 |
| 1987-12-30 |    2 |
| 1984-01-12 |    3 |
| 1975-10-30 |    3 |
| 1983-12-15 |    3 |
| 1989-10-26 |    3 |
| 1990-10-26 |    4 |
| 1982-07-30 |    4 |
| 1982-07-30 |    4 |
| 1982-07-30 |    4 |
| 1982-07-30 |    4 |
| 1982-07-30 |    4 |
| 1982-07-30 |    4 |
| 1976-12-31 |    4 |
| 1969-10-25 |    5 |
| 1984-12-29 |    5 |
| 1990-12-01 |    5 |
| 1982-06-12 |    5 |
| 1972-05-13 |    5 |
| 1970-10-25 |    6 |
| 1982-10-31 |    6 |
| 1986-12-14 |    6 |
| 1986-11-30 |    6 |
| 1983-11-13 |    6 |
| 1982-02-28 |    6 |
+------------+------+
28 rows in set (0.00 sec)

mysql> select DOB, dayofweek(dob) day from student order by dayofweek(DOB);
+------------+------+
| DOB        | day  |
+------------+------+
| 1970-10-25 |    1 |
| 1982-10-31 |    1 |
| 1986-12-14 |    1 |
| 1986-11-30 |    1 |
| 1983-11-13 |    1 |
| 1982-02-28 |    1 |
| 1980-12-01 |    2 |
| 1992-10-26 |    2 |
| 1984-06-12 |    3 |
| 1981-12-01 |    3 |
| 1987-12-30 |    4 |
| 1984-01-12 |    5 |
| 1975-10-30 |    5 |
| 1983-12-15 |    5 |
| 1989-10-26 |    5 |
| 1990-10-26 |    6 |
| 1982-07-30 |    6 |
| 1982-07-30 |    6 |
| 1982-07-30 |    6 |
| 1982-07-30 |    6 |
| 1982-07-30 |    6 |
| 1982-07-30 |    6 |
| 1976-12-31 |    6 |
| 1969-10-25 |    7 |
| 1984-12-29 |    7 |
| 1990-12-01 |    7 |
| 1982-06-12 |    7 |
| 1972-05-13 |    7 |
+------------+------+
28 rows in set (0.00 sec)

mysql> select DOB, dayname(dob) day from student order by dayofweek(DOB);
+------------+-----------+
| DOB        | day       |
+------------+-----------+
| 1970-10-25 | Sunday    |
| 1982-10-31 | Sunday    |
| 1986-12-14 | Sunday    |
| 1986-11-30 | Sunday    |
| 1983-11-13 | Sunday    |
| 1982-02-28 | Sunday    |
| 1980-12-01 | Monday    |
| 1992-10-26 | Monday    |
| 1984-06-12 | Tuesday   |
| 1981-12-01 | Tuesday   |
| 1987-12-30 | Wednesday |
| 1984-01-12 | Thursday  |
| 1975-10-30 | Thursday  |
| 1983-12-15 | Thursday  |
| 1989-10-26 | Thursday  |
| 1990-10-26 | Friday    |
| 1982-07-30 | Friday    |
| 1982-07-30 | Friday    |
| 1982-07-30 | Friday    |
| 1982-07-30 | Friday    |
| 1982-07-30 | Friday    |
| 1982-07-30 | Friday    |
| 1976-12-31 | Friday    |
| 1969-10-25 | Saturday  |
| 1984-12-29 | Saturday  |
| 1990-12-01 | Saturday  |
| 1982-06-12 | Saturday  |
| 1972-05-13 | Saturday  |
+------------+-----------+
28 rows in set (0.00 sec)

mysql> select DOB, dayname(dob) day from student where dayofweek(dob) = 1;
+------------+--------+
| DOB        | day    |
+------------+--------+
| 1970-10-25 | Sunday |
| 1982-10-31 | Sunday |
| 1986-12-14 | Sunday |
| 1986-11-30 | Sunday |
| 1983-11-13 | Sunday |
| 1982-02-28 | Sunday |
+------------+--------+
6 rows in set (0.00 sec)

mysql> select DATE_FORMAT(dob, '%D') from student;
+------------------------+
| DATE_FORMAT(dob, '%D') |
+------------------------+
| 12th                   |
| 25th                   |
| 25th                   |
| 31st                   |
| 12th                   |
| 1st                    |
| 14th                   |
| 29th                   |
| 26th                   |
| 26th                   |
| 30th                   |
| 30th                   |
| 1st                    |
| 15th                   |
| 30th                   |
| 1st                    |
| 26th                   |
| 12th                   |
| 13th                   |
| 30th                   |
| 30th                   |
| 30th                   |
| 30th                   |
| 30th                   |
| 30th                   |
| 13th                   |
| 31st                   |
| 28th                   |
+------------------------+
28 rows in set (0.00 sec)

mysql> select DATE_FORMAT(dob, '%D of %M %Y') from student;
+---------------------------------+
| DATE_FORMAT(dob, '%D of %M %Y') |
+---------------------------------+
| 12th of June 1984               |
| 25th of October 1969            |
| 25th of October 1970            |
| 31st of October 1982            |
| 12th of January 1984            |
| 1st of December 1980            |
| 14th of December 1986           |
| 29th of December 1984           |
| 26th of October 1992            |
| 26th of October 1990            |
| 30th of October 1975            |
| 30th of November 1986           |
| 1st of December 1981            |
| 15th of December 1983           |
| 30th of December 1987           |
| 1st of December 1990            |
| 26th of October 1989            |
| 12th of June 1982               |
| 13th of November 1983           |
| 30th of July 1982               |
| 30th of July 1982               |
| 30th of July 1982               |
| 30th of July 1982               |
| 30th of July 1982               |
| 30th of July 1982               |
| 13th of May 1972                |
| 31st of December 1976           |
| 28th of February 1982           |
+---------------------------------+
28 rows in set (0.00 sec)

mysql> desc course_batches;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| ID       | int         | NO   | PRI | NULL    |       |
| name     | varchar(45) | YES  |     | NULL    |       |
| courseID | int         | YES  | MUL | NULL    |       |
| starton  | date        | YES  |     | NULL    |       |
| endson   | date        | YES  |     | NULL    |       |
| capacity | int         | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> select *, dayofweek(endson) as endDay from course_batches where dayofweek(endson) = 1;
+----+---------+----------+------------+------------+----------+--------+
| ID | name    | courseID | starton    | endson     | capacity | endDay |
+----+---------+----------+------------+------------+----------+--------+
|  9 | Batch9  |        4 | 2018-07-01 | 2018-09-30 |       25 |      1 |
| 21 | Batch21 |        1 | 2015-08-01 | 2016-02-28 |       80 |      1 |
| 22 | Batch22 |        2 | 2015-08-01 | 2016-02-28 |       30 |      1 |
+----+---------+----------+------------+------------+----------+--------+
3 rows in set (0.07 sec)

mysql> select *, dayname(endson) as endDay from course_batches where dayofweek(endson) = 1;
+----+---------+----------+------------+------------+----------+--------+
| ID | name    | courseID | starton    | endson     | capacity | endDay |
+----+---------+----------+------------+------------+----------+--------+
|  9 | Batch9  |        4 | 2018-07-01 | 2018-09-30 |       25 | Sunday |
| 21 | Batch21 |        1 | 2015-08-01 | 2016-02-28 |       80 | Sunday |
| 22 | Batch22 |        2 | 2015-08-01 | 2016-02-28 |       30 | Sunday |
+----+---------+----------+------------+------------+----------+--------+
3 rows in set (0.00 sec)

mysql> select rpad(left(number, 4), 10, "*") from student_phone;
+--------------------------------+
| rpad(left(number, 4), 10, "*") |
+--------------------------------+
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7032******                     |
| 7132******                     |
| 7132******                     |
| 7132******                     |
| 7132******                     |
| 7032******                     |
| 7132******                     |
| 7132******                     |
| 7132******                     |
| 7132******                     |
| 7132******                     |
| 7132******                     |
| 7132******                     |
| 7132******                     |
| 7132******                     |
| 7132******                     |
| 7134******                     |
| 7156******                     |
| 7156******                     |
| 7156******                     |
| 7156******                     |
| 7146******                     |
+--------------------------------+
41 rows in set (0.00 sec)

mysql> select rpad(left(number, 4), 10, "*") as maskedNumber from student_phone;
+--------------+
| maskedNumber |
+--------------+
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7032******   |
| 7132******   |
| 7132******   |
| 7132******   |
| 7132******   |
| 7032******   |
| 7132******   |
| 7132******   |
| 7132******   |
| 7132******   |
| 7132******   |
| 7132******   |
| 7132******   |
| 7132******   |
| 7132******   |
| 7132******   |
| 7134******   |
| 7156******   |
| 7156******   |
| 7156******   |
| 7156******   |
| 7146******   |
+--------------+
41 rows in set (0.00 sec)

mysql> select concat(rpad(left(number, 4), 8, "*"), right(number, 4)) as maskedNumber from student_phone;
+--------------+
| maskedNumber |
+--------------+
| 7032****0034 |
| 7032****0039 |
| 7032****0050 |
| 7032****0027 |
| 7032****0001 |
| 7032****0079 |
| 7032****0081 |
| 7032****0054 |
| 7032****0059 |
| 7032****0086 |
| 7032****0082 |
| 7032****0042 |
| 7032****0055 |
| 7032****0013 |
| 7032****0099 |
| 7032****0023 |
| 7032****0084 |
| 7032****0011 |
| 7032****0066 |
| 7032****0096 |
| 7132****0034 |
| 7132****0039 |
| 7132****0050 |
| 7132****0027 |
| 7032****0001 |
| 7132****0079 |
| 7132****0081 |
| 7132****0054 |
| 7132****0059 |
| 7132****0086 |
| 7132****0082 |
| 7132****0042 |
| 7132****0055 |
| 7132****0055 |
| 7132****0055 |
| 7134****7123 |
| 7156****7123 |
| 7156****7134 |
| 7156****3423 |
| 7156****7183 |
| 7146****6412 |
+--------------+
41 rows in set (0.00 sec)

mysql>