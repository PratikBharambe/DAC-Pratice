/*
drop function if EXISTS f1;
delimiter $

create function f1(nod int) RETURNS int
deterministic
BEGIN
	DECLARE salSum int;
	select sum(sal) into salSum from emp where deptno = nod;
	RETURN salSum;
end $
delimiter ;
*/

drop function if EXISTS autoNumberTo;
delimiter $
create function autoNumberTo() RETURNS int
deterministic
BEGIN
	DECLARE last_id int;
	DECLARE new_id int;
	select count(id) into last_id from student_new;
	set new_id = last_id + 1;
	RETURN new_id;
end $
delimiter ;