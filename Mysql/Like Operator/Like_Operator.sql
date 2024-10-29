mysql> select ename, job from emp where ename like 'a%';
+--------+----------+
| ename  | job      |
+--------+----------+
| AARAV  | CLERK    |
| ALLEN  | SALESMAN |
| ADAMS  | CLERK    |
| AARUSH | SALESMAN |
| ALEX   | MANAGER  |
+--------+----------+
5 rows in set (0.08 sec)

mysql> select ename, job, sal from emp where sal like '2%';
+-------+----------+------+
| ename | job      | sal  |
+-------+----------+------+
| JONES | MANAGER  | 2975 |
| BLAKE | MANAGER  | 2850 |
| CLARK | MANAGER  | 2450 |
| GRASS | SALESMAN | 2575 |
+-------+----------+------+
4 rows in set (0.00 sec)

mysql> select ename, job, sal from emp where ename like '%A%';
+----------+---------------------+------+
| ename    | job                 | sal  |
+----------+---------------------+------+
| GITA     | Compliance officers | 1750 |
| VRUSHALI | Compliance officers | 1750 |
| SHARMIN  | Public Relation     | 1750 |
| BANDISH  | Public Relation     | 1750 |
| AARAV    | CLERK               | 3350 |
| THOMAS   | CLERK               | 1750 |
| ALLEN    | SALESMAN            | 1600 |
| WARD     | SALESMAN            | 1250 |
| MARTIN   | SALESMAN            | 1250 |
| BLAKE    | MANAGER             | 2850 |
| CLARK    | MANAGER             | 2450 |
| ADAMS    | CLERK               | 1100 |
| JAMES    | CLERK               |  950 |
| HOFFMAN  | MANAGER             | 4150 |
| GRASS    | SALESMAN            | 2575 |
| AARUSH   | SALESMAN            | 1350 |
| ALEX     | MANAGER             | 1250 |
| NATASHA  | CLERK               | 1750 |
| SANGITA  | Compliance officers | 1750 |
| SUPRIYA  | ANALYST             | 1750 |
+----------+---------------------+------+
20 rows in set (0.00 sec)

mysql> select ename, job, sal from emp where ename like '%A%A%';
+---------+---------------------+------+
| ename   | job                 | sal  |
+---------+---------------------+------+
| AARAV   | CLERK               | 3350 |
| ADAMS   | CLERK               | 1100 |
| AARUSH  | SALESMAN            | 1350 |
| NATASHA | CLERK               | 1750 |
| SANGITA | Compliance officers | 1750 |
+---------+---------------------+------+
5 rows in set (0.00 sec)

mysql> select ename, job, sal from emp where ename like '%AA%';
+--------+----------+------+
| ename  | job      | sal  |
+--------+----------+------+
| AARAV  | CLERK    | 3350 |
| AARUSH | SALESMAN | 1350 |
+--------+----------+------+
2 rows in set (0.00 sec)

mysql> select ename, job, sal from emp where ename like '%N';
+---------+-----------------+------+
| ename   | job             | sal  |
+---------+-----------------+------+
| SHARMIN | Public Relation | 1750 |
| ALLEN   | SALESMAN        | 1600 |
| MARTIN  | SALESMAN        | 1250 |
| HOFFMAN | MANAGER         | 4150 |
+---------+-----------------+------+
4 rows in set (0.00 sec)

mysql> select ename, job, sal from emp where ename like '__a%';
+---------+-----------------+------+
| ename   | job             | sal  |
+---------+-----------------+------+
| SHARMIN | Public Relation | 1750 |
| BLAKE   | MANAGER         | 2850 |
| CLARK   | MANAGER         | 2450 |
| ADAMS   | CLERK           | 1100 |
| GRASS   | SALESMAN        | 2575 |
+---------+-----------------+------+
5 rows in set (0.00 sec)

mysql> select ename, job, sal from emp where length(ename) = 4;;
+-------+---------------------+------+
| ename | job                 | sal  |
+-------+---------------------+------+
| GITA  | Compliance officers | 1750 |
| WARD  | SALESMAN            | 1250 |
| KING  | PRESIDENT           | 5000 |
| FRED  | vice PRESIDENT      | 5000 |
| FORD  | ANALYST             | 3000 |
| ALEX  | MANAGER             | 1250 |
+-------+---------------------+------+
6 rows in set (0.00 sec)

ERROR:
No query specified

mysql> select ename, job, sal from emp where ename like '____';
+-------+---------------------+------+
| ename | job                 | sal  |
+-------+---------------------+------+
| GITA  | Compliance officers | 1750 |
| WARD  | SALESMAN            | 1250 |
| KING  | PRESIDENT           | 5000 |
| FRED  | vice PRESIDENT      | 5000 |
| FORD  | ANALYST             | 3000 |
| ALEX  | MANAGER             | 1250 |
+-------+---------------------+------+
6 rows in set (0.00 sec)

mysql> select ename, hiredate from emp where hiredate like '____-07%';
+----------+------------+
| ename    | hiredate   |
+----------+------------+
| GITA     | 1981-07-19 |
| VRUSHALI | 1981-07-19 |
| SHARMIN  | 1981-07-19 |
| BANDISH  | 1981-07-19 |
| THOMAS   | 1981-07-19 |
| NATASHA  | 1981-07-19 |
| SANGITA  | 1981-07-19 |
| SUPRIYA  | 1981-07-19 |
+----------+------------+
8 rows in set (0.00 sec)

mysql> select * from temp1;
+------+------------------------+
| col1 | col2                   |
+------+------------------------+
|    1 | 25%                    |
|    2 | 1.st%                  |
|    3 | 30.12%                 |
|    4 | 12^4                   |
|    5 | 1^2^3                  |
|    6 | 56*12*.12              |
|    7 | 1st INT                |
|    8 | Rs. 1000               |
|    9 | $5000                  |
|   10 | ABB+                   |
|   11 | _ABB                   |
|   12 | A_BB                   |
|   13 | CNN                    |
|   14 | C_N_N                  |
|   15 | CN_N                   |
|   16 | ABB_                   |
|   17 | AB_B                   |
|   18 | %ABB                   |
|   19 | A%B%B                  |
|   20 | L&T                    |
|   21 | L_&_T                  |
|   22 | ABB-200                |
|   23 | ABB:200                |
|   24 | ABB_200                |
|   25 | ABB/200/300            |
|   26 | AC/100, AC/200, AC/300 |
|   27 | A_BC                   |
|   28 | A_B_C                  |
|   29 | A\_BC                  |
+------+------------------------+
29 rows in set (0.05 sec)

mysql> select * from temp1 where col2 like '%\%%';
+------+--------+
| col1 | col2   |
+------+--------+
|    1 | 25%    |
|    2 | 1.st%  |
|    3 | 30.12% |
|   18 | %ABB   |
|   19 | A%B%B  |
+------+--------+
5 rows in set (0.00 sec)

mysql> select * from temp1 where col2 like '%\_%';
+------+---------+
| col1 | col2    |
+------+---------+
|   11 | _ABB    |
|   12 | A_BB    |
|   14 | C_N_N   |
|   15 | CN_N    |
|   16 | ABB_    |
|   17 | AB_B    |
|   21 | L_&_T   |
|   24 | ABB_200 |
|   27 | A_BC    |
|   28 | A_B_C   |
|   29 | A\_BC   |
+------+---------+
11 rows in set (0.04 sec)
