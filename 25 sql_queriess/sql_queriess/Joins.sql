    #INNER JOIN
    select employee.emp_id, emp_name, job_domain, salary
	from employee
    inner join income
    on employee.emp_id=income.emp_id;
    
    #LEFT JOIN
    select employee.emp_id, emp_name, job_domain, salary
	from employee
    left join income
    on employee.emp_id=income.emp_id;
    
    #RIGHT JOIN
    select employee.emp_id, emp_name, job_domain, salary
	from employee
    right join income
    on employee.emp_id=income.emp_id; 
    
    #FULL JOIN
    select employee.emp_id, emp_name, job_domain, salary
	from employee
    left join income
    on employee.emp_id=income.emp_id
    union 
    select employee.emp_id, emp_name, job_domain, salary
	from employee
    right join income
    on employee.emp_id=income.emp_id; 
    
    #JOIN 'USING'
    select employee.emp_id, emp_name, job_domain, salary
	from employee
    left join income
    using (emp_id);
    
    #CROSS JOIN
    select concat(name, " course is available in ", lang,' language') as course_languages
	FROM course
	CROSS JOIN languages;
    
    #SELF JOIN
    select e1.emp_id, e1.emp_name, e2.job_domain
	from employee e1, employee e2
    where e1.emp_id=e2.emp_id;
    

    
    
    
    
    
    
    
   