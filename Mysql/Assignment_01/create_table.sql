mysql>
mysql>
mysql>
mysql> create table course(id int primary key, name varchar(45), duration varchar(45), summery varchar(1024));
Query OK, 0 rows affected (0.13 sec)

mysql> desc course;
+----------+---------------+------+-----+---------+-------+
| Field    | Type          | Null | Key | Default | Extra |
+----------+---------------+------+-----+---------+-------+
| id       | int           | NO   | PRI | NULL    |       |
| name     | varchar(45)   | YES  |     | NULL    |       |
| duration | varchar(45)   | YES  |     | NULL    |       |
| summery  | varchar(1024) | YES  |     | NULL    |       |
+----------+---------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql>
mysql> create table student(id int primary key, namefirst varchar(45) , namelast varchar(45), dob Date, emailid varchar(128));
Query OK, 0 rows affected (0.07 sec)

mysql> desc student;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int          | NO   | PRI | NULL    |       |
| namefirst | varchar(45)  | YES  |     | NULL    |       |
| namelast  | varchar(45)  | YES  |     | NULL    |       |
| dob       | date         | YES  |     | NULL    |       |
| emailid   | varchar(128) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> create table student_phone(id int primary key, studentid int, number varchar(45), isActive bool, foreign key(studentid) references student(id));
Query OK, 0 rows affected (0.17 sec)

mysql> desc student_phone;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| id        | int         | NO   | PRI | NULL    |       |
| studentid | int         | YES  | MUL | NULL    |       |
| number    | varchar(45) | YES  |     | NULL    |       |
| isActive  | tinyint(1)  | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> create table student_address (id int primary key, studentid int unique key not null, address varchar(128), foreign key(studentid) references student(id));
Query OK, 0 rows affected (0.17 sec)

mysql> desc student_address
    -> ;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int          | NO   | PRI | NULL    |       |
| studentid | int          | NO   | UNI | NULL    |       |
| address   | varchar(128) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> create table faculty(id int primary key, namefirst varchar(45), namelast varchar(45), dob date, emailid varchar(128));
Query OK, 0 rows affected (0.47 sec)

mysql> desc faculty;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int          | NO   | PRI | NULL    |       |
| namefirst | varchar(45)  | YES  |     | NULL    |       |
| namelast  | varchar(45)  | YES  |     | NULL    |       |
| dob       | date         | YES  |     | NULL    |       |
| emailid   | varchar(128) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> create table faculty_phone (id int primary key, facultyid int, number varchar(10), foreign key(facultyid) references faculty(id));
Query OK, 0 rows affected (0.14 sec)

mysql> desc faculty_phone;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| id        | int         | NO   | PRI | NULL    |       |
| facultyid | int         | YES  | MUL | NULL    |       |
| number    | varchar(10) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> crearte table faculty_address(id int primary key, facultyid int unique key not null, address varchar(128) , foreign key(facultyid) rederences faculty(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'crearte table faculty_address(id int primary key, facultyid int unique key not n' at line 1
mysql> create table faculty_address(id int primary key, facultyid int unique key not null, address varchar(128) , foreign key(facultyid) rederences faculty(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rederences faculty(id))' at line 1
mysql> create table faculty_address(id int primary key, facultyid int unique key not null, address varchar(128) , foreign key(facultyid) references faculty(id));
Query OK, 0 rows affected (0.14 sec)

mysql> desc faculty address;
Empty set (0.01 sec)

mysql> create table modules(id int primary key, name varchar(128), duration int);
Query OK, 0 rows affected (0.10 sec)

mysql> create table course_modules(id int primary key, courseid int, moduleid int, foreign key(courseid) references course(id), foreign key(moduleid) references modules(id));
Query OK, 0 rows affected (0.14 sec)

mysql> desc course_modules;
+----------+------+------+-----+---------+-------+
| Field    | Type | Null | Key | Default | Extra |
+----------+------+------+-----+---------+-------+
| id       | int  | NO   | PRI | NULL    |       |
| courseid | int  | YES  | MUL | NULL    |       |
| moduleid | int  | YES  | MUL | NULL    |       |
+----------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> create table faculty_qualifications(id int primary key, facultyid int, name varchar(128), college varchar(128), university varchar(128), marks varchar(45), year int, foreign key (facultyid) references faculty(id));
Query OK, 0 rows affected (0.13 sec)

mysql> desc faculty_qualification;
ERROR 1146 (42S02): Table 'dac15.faculty_qualification' doesn't exist
mysql> desc faculty_qualifications;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| id         | int          | NO   | PRI | NULL    |       |
| facultyid  | int          | YES  | MUL | NULL    |       |
| name       | varchar(128) | YES  |     | NULL    |       |
| college    | varchar(128) | YES  |     | NULL    |       |
| university | varchar(128) | YES  |     | NULL    |       |
| marks      | varchar(45)  | YES  |     | NULL    |       |
| year       | int          | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> create table cousre_batches(id int primary key, name varchar(45), courseid int, starton date, endson date, capacity int, foreign key (courseid) references course(id));
Query OK, 0 rows affected (0.14 sec)

mysql> desc cousre_batches;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| id       | int         | NO   | PRI | NULL    |       |
| name     | varchar(45) | YES  |     | NULL    |       |
| courseid | int         | YES  | MUL | NULL    |       |
| starton  | date        | YES  |     | NULL    |       |
| endson   | date        | YES  |     | NULL    |       |
| capacity | int         | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> rename table cousre_batches to course_batches;
Query OK, 0 rows affected (0.08 sec)

mysql> create table batch_students(id int primary key, batchid int, studentid int, foreign key (batchid) references course_batches(id));
Query OK, 0 rows affected (0.14 sec)

mysql> drop table batch_students;
Query OK, 0 rows affected (0.06 sec)

mysql> create table batch_students(id int primary key, batchid int, studentid int, foreign key (batchid) references course_batches(id), foreign key (studentid) references student(id));
Query OK, 0 rows affected (0.15 sec)

mysql> desc batch_students;
+-----------+------+------+-----+---------+-------+
| Field     | Type | Null | Key | Default | Extra |
+-----------+------+------+-----+---------+-------+
| id        | int  | NO   | PRI | NULL    |       |
| batchid   | int  | YES  | MUL | NULL    |       |
| studentid | int  | YES  | MUL | NULL    |       |
+-----------+------+------+-----+---------+-------+
3 rows in set (0.03 sec)

mysql> create table student_cards(id int primary key, studentid int, name varchar(45), foreign key (studentid) references student(id));
Query OK, 0 rows affected (0.15 sec)

mysql> desc student_vards;
ERROR 1146 (42S02): Table 'dac15.student_vards' doesn't exist
mysql> desc student_cards;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| id        | int         | NO   | PRI | NULL    |       |
| studentid | int         | YES  | MUL | NULL    |       |
| name      | varchar(45) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> create table student_order(id int primary key, studentid int, date date, amount int, foreign key(studentid) references student(id));
Query OK, 0 rows affected (0.13 sec)

mysql> desc student_order;
+-----------+------+------+-----+---------+-------+
| Field     | Type | Null | Key | Default | Extra |
+-----------+------+------+-----+---------+-------+
| id        | int  | NO   | PRI | NULL    |       |
| studentid | int  | YES  | MUL | NULL    |       |
| date      | date | YES  |     | NULL    |       |
| amount    | int  | YES  |     | NULL    |       |
+-----------+------+------+-----+---------+-------+
4 rows in set (0.00 sec)

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
+------------------------+
14 rows in set (0.00 sec)

mysql> create table student_qualifications(id int primary key, studentid int, name varchar(128), college varchar(128), university varchar(128), marks varchar(45), year int, foreign key (studentid) references student(id));
Query OK, 0 rows affected (0.59 sec)

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

mysql>