#Subquery1

select * from employee order by score desc limit 1;
select * from employee where score=(select max(score) from employee);
select * from employee where score=(select min(score) from employee);

select * from employee where score in (5, 9.3);
	
select * from employee where score=(select max(score) from employee)
union
select * from employee where score=(select min(score) from employee);

#subquery2
    
select * from employee where score in (
        				(select min(score) from employee), 
    					(select max(score) from employee)
						);
     
     
#subquery3

select * from employee where job_domain=
(select high_job_domain.job_domain from 
	(select job_domain, count(*) from employee group by job_domain limit 1) as high_job_domain);                      

select job_domain, count(*) from employee group by job_domain limit 1;


#ANY & ALL
select * from employee where score > all(select score from employee where job_domain="sales");
select * from employee where score > any(select score from employee where job_domain="sales");

select * from employee where score>(select max(score) from employee where job_domain="sales");
select * from employee where score>(select min(score) from employee where job_domain="sales");




#co-relatedsubquery
select emp_id, emp_name, (select salary from income where emp_id = employee.emp_id) as salary
	from employee
	order by salary desc;
    
    
   
    
    #CTE
    with study1 as (
    select employee.emp_id, emp_name, job_domain, salary
	from employee
    inner join income
    using (emp_id))
    select emp_name, salary from study1 where salary>3;
    
    
    select emp_name, salary from study1 where salary>5;
    
    
    
    

