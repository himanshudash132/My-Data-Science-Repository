CREATE DEFINER=`root`@`localhost` PROCEDURE `states`(in loc varchar(50))
BEGIN
select * from employee where employee.location=loc;
END