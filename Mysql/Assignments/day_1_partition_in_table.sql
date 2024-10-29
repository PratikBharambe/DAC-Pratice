Microsoft Windows [Version 10.0.19045.4894]
(c) Microsoft Corporation. All rights reserved.

C:\Users\IET>mysql
^C
C:\Users\IET>
C:\Users\IET>
C:\Users\IET>
C:\Users\IET>
C:\Users\IET>
C:\Users\IET>mysql -h 192.168.10.150 -P 3306 -u dac16 -p
Enter password: *******
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 200
Server version: 8.1.0 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| dac16              |
| information_schema |
| performance_schema |
+--------------------+
3 rows in set (0.04 sec)

mysql> use dac16;
Database changed
mysql> show tables;
+-----------------+
| Tables_in_dac16 |
+-----------------+
| empl            |
+-----------------+
1 row in set (0.02 sec)

mysql> desc empl'
    '> ;
    '> ;
    '> ^C
mysql>
mysql>
mysql>
mysql> desc empl;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| name   | varchar(10) | NO   |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.04 sec)

mysql> insert into empl values(1, "Pratik", 1000),(2, "Divya", 3500), (3, "ram", 10000), (4, "shyam", 5000);
Query OK, 4 rows affected (0.08 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from empl;
+------+--------+--------+
| id   | name   | salary |
+------+--------+--------+
|    1 | Pratik |   1000 |
|    2 | Divya  |   3500 |
|    3 | ram    |  10000 |
|    4 | shyam  |   5000 |
+------+--------+--------+
4 rows in set (0.02 sec)

mysql> select * from empl pratition(p1);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(p1)' at line 1
mysql> select * from empl partition(p1);
+------+--------+--------+
| id   | name   | salary |
+------+--------+--------+
|    1 | Pratik |   1000 |
+------+--------+--------+
1 row in set (0.04 sec)

mysql> select * from empl partition(p2);
+------+-------+--------+
| id   | name  | salary |
+------+-------+--------+
|    2 | Divya |   3500 |
+------+-------+--------+
1 row in set (0.03 sec)

mysql> select * from empl partition(p3);
+------+-------+--------+
| id   | name  | salary |
+------+-------+--------+
|    3 | ram   |  10000 |
|    4 | shyam |   5000 |
+------+-------+--------+
2 rows in set (0.02 sec)

mysql> select * from empl where id = 1;
+------+--------+--------+
| id   | name   | salary |
+------+--------+--------+
|    1 | Pratik |   1000 |
+------+--------+--------+
1 row in set (0.04 sec)

mysql> select * from empl where id = 3;
+------+------+--------+
| id   | name | salary |
+------+------+--------+
|    3 | ram  |  10000 |
+------+------+--------+
1 row in set (0.01 sec)

mysql> select * from empl partition(p2) where id = 3;
Empty set (0.03 sec)

mysql> select * from empl partition(p2) where id = 2;
+------+-------+--------+
| id   | name  | salary |
+------+-------+--------+
|    2 | Divya |   3500 |
+------+-------+--------+
1 row in set (0.96 sec)

mysql> drop table empl;
Query OK, 0 rows affected (1.88 sec)
