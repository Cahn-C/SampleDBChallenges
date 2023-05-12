use [SAMPLEDB]


-- Challenge 1
select e.employee_id, e.first_name, e.last_name, m.employee_id, m.first_name as manger_first_name, m.last_name as manager_last_name
from hcm.employees e
left join hcm.employees m
on e.manager_id = m.employee_id


-- Challenge 2
select p.product_id, p.product_name, w.warehouse_id, w.warehouse_name, i.quantity_on_hand
from oes.products p
join oes.inventories i
on p.product_id = i.product_id
join oes.warehouses w
on i.warehouse_id = w.warehouse_id


-- Challenge 3
select e.employee_id, e.first_name, e.last_name, d.department_name, j.job_title, e.state_province
from hcm.employees e
left join hcm.departments d
on e.department_id = d.department_id
left join hcm.jobs j
on e.job_id = j.job_id
left join hcm.countries c
on e.country_id = c.country_id
where c.country_name = 'Australia'


-- Challenge 4
select pc.category_name, p.product_name, sum(oi.quantity) as total_quantity
from oes.products p
join oes.order_items oi
on p.product_id = oi.product_id
join oes.product_categories pc
on p.category_id = pc.category_id
group by p.product_name, pc.category_name
order by pc.category_name, p.product_name


-- Challenge 5
select p.product_name, pc.category_name, coalesce(sum(oi.quantity), 0) as total_quantity
from oes.products p
left join oes.order_items oi
on p.product_id = oi.product_id
left join oes.product_categories pc
on p.category_id = pc.category_id
group by p.product_name, pc.category_name
order by p.product_name, pc.category_name
