CREATE TABLE salary (ID INT, amount INT, primary key (ID));

CREATE TRIGGER total BEFORE INSERT ON salary
FOR EACH ROW SET @sum = @sum + NEW.amount;
       
SET @sum = 0;

INSERT INTO salary VALUES(1,50000);

SELECT @sum AS 'Total amount';

select * from salary;
INSERT INTO salary VALUES(2,50000),(3,20000),(4,30000);
SELECT @sum AS 'Total amount';

CREATE TRIGGER total1 BEFORE UPDATE ON salary
FOR EACH ROW SET @sum = @sum + NEW.amount - OLD.amount;

update salary
set amount = 30000
where ID = 3;
SELECT @sum AS 'Total amount';

CREATE TRIGGER total2 AFTER DELETE ON salary
FOR EACH ROW SET @sum = @sum - OLD.amount;

DELETE FROM salary where ID = 1;
SELECT @sum AS 'Total amount';

drop trigger total2;
       
drop table salary