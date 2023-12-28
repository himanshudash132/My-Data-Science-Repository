CREATE DEFINER=`root`@`localhost` PROCEDURE `states1`(in loc varchar(50), out total_count int)
BEGIN
select count(*) into total_count from employee where employee.location=loc;
END