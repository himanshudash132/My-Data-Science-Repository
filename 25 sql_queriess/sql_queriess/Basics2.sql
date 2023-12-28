select * from employee where emp_name like 's%r';
select * from employee where emp_name like '_h%'; 
select * from employee where emp_name like '_hridhar';
select * from employee where emp_name like 's_r_dhar';


create database student;


create table student.academic(
	student_id int,
    firstname varchar(255),
    remarks varchar(255),
    primary key (student_id)
    );
    
create table student.sports(
	sport_id int,
    sport_name varchar(255),
    student_id int,
    primary key (sport_id),
    foreign key (student_id) references academic(student_id));
    
    
    create table a1(
	student_id int,
    firstname varchar(255),
    remarks varchar(255),
    primary key (student_id)
    );
    
    
    insert into student.academic
    values  (1,'A','GOOD'),
			(2,'B','GOOD'),
            (3,'C','GOOD'),
            (4,'D','GOOD'),
            (5,'E','GOOD'),
            (6,'F','GOOD'),
            (7,'G','GOOD'),
            (8,'H','GOOD'),
            (9,'I','GOOD'),
            (10,'J','GOOD');
    
    
	
    update student.academic
    set firstname = 'shreedhar'
    where student_id = 2;
    
    
    alter table student.academic
    add  address varchar(255);
    
    alter table student.academic
    drop column address;
    
    alter table student.academic
    rename column firstname to first_name;
    
    SET SQL_SAFE_UPDATES = 0;
    delete from student.academic where first_name = 'shreedhar';
    
    drop database student;
    
    drop table student.academic;
    
    
    
    
    SELECT student_id, GROUP_CONCAT( remarks ) as "REMARK", COUNT(*) as 'Number of remarks' 
	 FROM student.academic group by student_id;
     
     SELECT student_id, GROUP_CONCAT( DISTINCT remarks ) as "REMARK",COUNT(*) as 'Number of remarks'
	 FROM student.academic group by student_id;
    