CREATE DEFINER=`root`@`localhost` PROCEDURE `add2`(in a int, in b int, out total int)
BEGIN

set total=a+b;

END