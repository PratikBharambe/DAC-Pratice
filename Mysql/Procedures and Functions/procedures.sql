/*
drop procedure if exists pro1;
delimiter $

create procedure pro1()
begin
	select "hello world";
end $
delimiter ;


drop procedure if exists pro1;
delimiter $

create procedure pro1(in x int, in y int)
begin
	select x + y 'sum'
end $
delimiter ;



drop procedure if exists pro1;
delimiter $

create procedure pro1(in x int, in y int, out z int)
begin
	set z := x+y;
end $
delimiter ;





drop procedure if exists pro1;
delimiter $

create procedure pro1(in x int)
begin
	select ename, job, deptno from emp where deptno = x;
end $
delimiter ;





drop procedure if exists pro1;
delimiter $

create procedure pro1(in x int)
begin
	DECLARE flag bool DEFAULT false;
	select DISTINCT true into flag from emp where deptno =  x;
	if flag THEN
		select ename, job, deptno from emp where deptno = x;
	ELSE
		select "not found";
	end if;
end $
delimiter ;



drop procedure if exists pro1;
delimiter $

create procedure pro1(in x int)
begin
	select ename, job, sal from emp limit x; 
end $
delimiter ;


drop procedure if exists pro1;
delimiter $

create procedure pro1(in x int)
begin
	declare z2 int DEFAULT 0;
	select count(*) - x into z2 from emp;
	select ename, job, sal from emp limit z2, x;
end $
delimiter ;


drop procedure if exists pro1;
delimiter $

create procedure pro1(in x int)
begin
	declare exit handler for 1136 select "Invalid number of values";
	INSERT into dept values(15, 25, 53, 24);
end $
delimiter ;




drop procedure if exists pro1;
delimiter $

create procedure pro1(in y VARCHAR(64))
begin
	seT @X := CONCAT('SELECT * FROM ', y);
	SELECT @X;
	PREPARE statement from @x;
	execute statement;
end $
delimiter ;


drop procedure if exists pro1;
delimiter $
create procedure pro1(in c varchar(1000), in t varchar(1000))
begin 
	
	set @x := concat("select ", c , " from ", t);
	prepare stat  from @x;
	execute stat;

end $
delimiter ;
*/


DELIMITER $

CREATE PROCEDURE generate_random_string()
BEGIN
    DECLARE random_string VARCHAR(6);
    SET random_string = SUBSTR(MD5(RAND()), 1, 6);
    SELECT random_string;
END $

DELIMITER ;