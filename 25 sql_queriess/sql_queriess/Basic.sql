#TABLE RELATED
select * from emp.employee;

use emp;
select * from employee;

select emp_id, emp_name from employee;

#WHERE QUERY
select * from employee where location='Maharashtra';
select * from employee where job_domain='sales';
select * from employee where location='maharashtra' and job_domain='sales';

#DISTINCT QUERY
select distinct location from employee;

#LIKE QUERY
select * from employee where emp_name like 's%';
select * from employee where emp_name like '%ar%';

#AND & BETWEEN
select * from employee where score>9;
select * from employee where score>6;

select * from employee where score>=6 and score<=9;
select * from employee where score between 6 and 9;

#OR & IN
select emp_id, emp_name from employee where joining_date=2000 or joining_date=2001 or joining_date=2005;
select emp_id, emp_name from employee where joining_date in(2000,2001,2005);

#ORDER BY, DESC, LIMIT & OFFSET
select * from employee where location = 'punjab' order by score;
select * from employee where location = 'maharashtra' order by score desc;
select * from employee where location = 'maharashtra' order by score desc limit 5;
select * from employee where location = 'maharashtra' order by score desc limit 5 offset 1;

#COUNT
select count(*) from employee where job_domain="marketing";

#MAX,MIN,AVG
select max(score) from employee where job_domain= 'marketing';
select min(score) from employee where job_domain= 'marketing';
select avg(score) from employee where job_domain= 'marketing';
select round(avg(score),1) from employee where job_domain= 'marketing';

select max(score) as max_score,
	   min(score) as min_score,
       round(avg(score),1) as avg_score
 from employee 
 where job_domain= 'marketing';
 
#GROUP BY
 select location, count(location) from employee group by location;
 
 select job_domain, count(job_domain) as domain_count,round(avg(score),1) as avg_score 
 from employee 
 group by job_domain 
 order by avg_score desc;
 
#HAVING
 select 
           joining_date,
           count(*) as date_count
	from employee 
	group by joining_date
	having date_count>1
	order by date_count desc;
    
#IF QUERY   
 select 
	emp_name,
	if (job_domain='sales', 'PROMOTED', 'NEXT TIME PAKKA') as job_status 
	from employee;
    
#CASE QUERY    
    select 
	emp_name,
	case
		when job_domain='sales' then'PROMOTED'
		when job_domain='marketing' then'FIRED'
		else 'NEXT TIME PAKKA'
		end
        as job_status
    from employee;


















