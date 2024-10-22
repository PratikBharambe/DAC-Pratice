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

mysql> select namefirst, namelast, dob, emailid from student limit 5;
+-----------+----------+------------+------------------------+
| namefirst | namelast | dob        | emailid                |
+-----------+----------+------------+------------------------+
| saleel    | bagde    | 1984-06-12 | saleel.bagde@gmail.com |
| omkar     | rokde    | 1969-10-25 | omkar.rakde@gmail.com  |
| ulka      | joshi    | 1970-10-25 | ulka.joshi@gmail.com   |
| rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com  |
| ruhan     | bagde    | 1984-01-12 | ruhan.bagde@gmail.com  |
+-----------+----------+------------+------------------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM student WHERE ID IN (1, 2, 5, 7);
+----+-----------+----------+------------+-------------------------+
| ID | namefirst | namelast | DOB        | emailID                 |
+----+-----------+----------+------------+-------------------------+
|  1 | saleel    | bagde    | 1984-06-12 | saleel.bagde@gmail.com  |
|  2 | omkar     | rokde    | 1969-10-25 | omkar.rakde@gmail.com   |
|  5 | ruhan     | bagde    | 1984-01-12 | ruhan.bagde@gmail.com   |
|  7 | sharmin   | bagde    | 1986-12-14 | sharmin.bagde@gmail.com |
+----+-----------+----------+------------+-------------------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM student WHERE ID not IN (5, 10, 15) limit 7;
+----+-----------+----------+------------+--------------------------+
| ID | namefirst | namelast | DOB        | emailID                  |
+----+-----------+----------+------------+--------------------------+
|  1 | saleel    | bagde    | 1984-06-12 | saleel.bagde@gmail.com   |
|  2 | omkar     | rokde    | 1969-10-25 | omkar.rakde@gmail.com    |
|  3 | ulka      | joshi    | 1970-10-25 | ulka.joshi@gmail.com     |
|  4 | rahul     | patil    | 1982-10-31 | rahul.patil@gmail.com    |
|  6 | lala      | prasad   | 1980-12-01 | lala.prasad@gmail.com    |
|  7 | sharmin   | bagde    | 1986-12-14 | sharmin.bagde@gmail.com  |
|  8 | vrushali  | bagde    | 1984-12-29 | vrushali.bagde@gmail.com |
+----+-----------+----------+------------+--------------------------+
7 rows in set (0.00 sec)

mysql> select * from faculty limit 2;
+----+-----------+----------+------------+------------------------+
| ID | namefirst | namelast | DOB        | emailID                |
+----+-----------+----------+------------+------------------------+
|  1 | prachi    | gupta    | 1974-06-12 | prachi.gupta@gmail.com |
|  2 | ketan     | shukla   | 1972-10-25 | ketan.shukla@gmail.com |
+----+-----------+----------+------------+------------------------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM student_phone order by number;
+----+-----------+------------+----------+
| ID | studentID | number     | isActive |
+----+-----------+------------+----------+
|  5 |         5 | 7032300001 |        1 |
| 25 |         5 | 7032300001 |        1 |
| 18 |        18 | 7032300011 |        1 |
| 14 |        14 | 7032300013 |        1 |
| 16 |        16 | 7032300023 |        1 |
|  4 |         4 | 7032300027 |        1 |
|  1 |         1 | 7032300034 |        1 |
|  2 |         2 | 7032300039 |        1 |
| 12 |        12 | 7032300042 |        1 |
|  3 |         3 | 7032300050 |        1 |
|  8 |         8 | 7032300054 |        1 |
| 13 |        13 | 7032300055 |        1 |
|  9 |         9 | 7032300059 |        1 |
| 19 |        19 | 7032300066 |        1 |
|  6 |         6 | 7032300079 |        1 |
|  7 |         7 | 7032300081 |        1 |
| 11 |        11 | 7032300082 |        1 |
| 17 |        17 | 7032300084 |        1 |
| 10 |        10 | 7032300086 |        1 |
| 20 |        20 | 7032300096 |        1 |
| 15 |        15 | 7032300099 |        1 |
| 24 |         4 | 7132300027 |        1 |
| 21 |         1 | 7132300034 |        1 |
| 22 |         2 | 7132300039 |        1 |
| 32 |        12 | 7132300042 |        0 |
| 23 |         3 | 7132300050 |        1 |
| 28 |         8 | 7132300054 |        0 |
| 33 |        13 | 7132300055 |        0 |
| 34 |        13 | 7132300055 |        0 |
| 35 |        13 | 7132300055 |        1 |
| 29 |         9 | 7132300059 |        0 |
| 26 |         6 | 7132300079 |        1 |
| 27 |         7 | 7132300081 |        0 |
| 31 |        11 | 7132300082 |        0 |
| 30 |        10 | 7132300086 |        0 |
| 36 |         6 | 7134567123 |        0 |
| 41 |        25 | 7146566412 |        1 |
| 39 |        23 | 7156563423 |        0 |
| 37 |        21 | 7156567123 |        1 |
| 38 |        22 | 7156567134 |        1 |
| 40 |        24 | 7156567183 |        0 |
+----+-----------+------------+----------+
41 rows in set (0.00 sec)

mysql> SELECT * FROM student_address where id in (2, 4, 6, 10) order by id desc;
+----+-----------+-------------------------------------------------------------+
| ID | studentID | address                                                     |
+----+-----------+-------------------------------------------------------------+
| 10 |        10 | 7710 Covington Rd , New State Road, New York, 37188         |
|  6 |         6 | 165 Village Dr., P.O. Box 3700, Oakland, TN, Oakland, 38060 |
|  4 |         4 | 7720 Covington Rd, Pink Stand, TN, San Francisco, 37188     |
|  2 |         2 | 2263 Ga 17 Hwy N, Millen, GA, Atlanta, 30442                |
+----+-----------+-------------------------------------------------------------+
4 rows in set (0.03 sec)

mysql>
