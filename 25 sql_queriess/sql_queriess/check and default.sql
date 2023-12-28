create database student;


create table student.academic(
	student_id int,
    firstname varchar(255),
    remarks varchar(255) default 'Can do better',
    marks int,
    check (marks>35)
    );
    
create table student.sports(
	sport_id int,
    sport_name varchar(255),
    student_id int,
    constraint abc check(sport_id != 0)
    );

	insert into student.academic (student_id,firstname,marks)
    values (2,'B',40);
    
    alter table student.academic
    alter marks set default 36;

    insert into student.academic (student_id,firstname)
    values (3,'C');

    alter table student.academic
    alter marks drop default;

    insert into student.academic
    values (2,'B','GOOD',33);
    
    insert into student.academic
    values (2,'B','GOOD',36);
    
    insert into student.sports
    values (0,'cricket',10);
    
    insert into student.sports
    values (1,'cricket',10);
    
    alter table student.academic
    add check (student_id<100);
    
    insert into student.academic
    values (101,'c','GOOD',60);
    
    insert into student.academic
    values (101,'c','GOOD',6);
    
    alter table student.sports
    drop check abc;
    
    