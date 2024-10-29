mysql>
mysql>
mysql> create table empl(id int , zone int) partition by list(zone) (partition p1 values in (1, 2, 3), partition p2 values in (4, 5, 6));
Query OK, 0 rows affected (0.69 sec)

mysql> desc empl;
+-------+------+------+-----+---------+-------+
| Field | Type | Null | Key | Default | Extra |
+-------+------+------+-----+---------+-------+
| id    | int  | YES  |     | NULL    |       |
| zone  | int  | YES  |     | NULL    |       |
+-------+------+------+-----+---------+-------+
2 rows in set (0.04 sec)

mysql> insert into empl values(1, 6), (1, 4), (2, 4), (3, 3);
Query OK, 4 rows affected (0.09 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from empl partition(p1);
+------+------+
| id   | zone |
+------+------+
|    3 |    3 |
+------+------+
1 row in set (0.03 sec)

mysql> select * from empl partition(p2);
+------+------+
| id   | zone |
+------+------+
|    1 |    6 |
|    1 |    4 |
|    2 |    4 |
+------+------+
3 rows in set (0.01 sec)

mysql> select * from empl;
+------+------+
| id   | zone |
+------+------+
|    3 |    3 |
|    1 |    6 |
|    1 |    4 |
|    2 |    4 |
+------+------+
4 rows in set (0.38 sec)

mysql> drop table empl;
Query OK, 0 rows affected (1.88 sec)

mysql>