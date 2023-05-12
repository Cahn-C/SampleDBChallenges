use [SAMPLEDB]


-- Challenge 1
select e.employee_id, e.first_name, e.last_name, e.salary, d.department_name
from hcm.employees e
join hcm.departments d
on e.department_id = d.department_id


-- Challenge 2
select e.employee_id, e.first_name, e.last_name, e.salary, d.department_name
from hcm.employees e
left join hcm.departments d
on e.department_id = d.department_id


-- Challenge 3
select d.department_name, count(e.employee_id) as number_of_employees
from hcm.employees e
left join hcm.departments d
on e.department_id = d.department_id
group by d.department_name
order by 2
