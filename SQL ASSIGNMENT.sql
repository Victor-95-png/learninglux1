#ASSIGNMENT

-- 1HR wants to track employees hired in the last year for performance reviews.
select first_name, last_name, hire_date, department_id
from employees
where hire_date >= DATE_SUB(NOW(), INTERVAL 12 month);

-- 2Management wants to group employees into salary categories for compensation planning:
select first_name, last_name, salary,
case
	when salary < 50000 then 'low salary' 
	when salary between 50000 and 200000 then 'medium salary' 
	else 'high salary' 
end as salary_caegory
from employees;

-- 3HR needs to retrieve employees based on department names instead of department IDs. Since the employees table stores only the department_id, they need a stored procedure that:

create procedure GetEmployeesByDepartmentName13(in department_name varchar(255))
begin
	select first_name, last_name, salary, job_title
	from SAMPLES.employees e
	join SAMPLES.departments d on e.department_id = d.department_id
	where job_title  = 'software engineer';
end;

call GetEmployeesByDepartmentName13('Engineering');














































































