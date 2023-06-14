--join

select employee_id,first_name,department_id
from employees;

select department_id,department_name
from departments;

select count(*) from departments; -- 27
select count(*) from employees;   --107

select 27*107 from dual;    --2889

--oracle join
select e.employee_id,e.first_name,
e.department_id,
d.department_name
from employees  e, departments d
where e.department_id = d.department_id;

select e.employee_id,
d.location_id
from employees e, departments d
where e.department_id = d.department_id
and e.employee_id=100;

--ANSI join
select e.employee_id,e.first_name,
e.department_id,
d.department_name
from employees e inner join departments d
on e.department_id = d.department_id;

select e.employee_id, d.location_id
from employees e inner join departments d
on (e.department_id = d.department_id)
and e.employee_id=100;

--emps join jobs
select e.employee_id,j.job_title
from employees e, jobs j
where e.job_id = j.job_id;

select e.employee_id,j.job_title
from employees e inner join jobs j
on (e.job_id = j.job_id);

--(emps join depts) join jobs
select e.employee_id,j.job_title,d.department_name
from employees e,departments d, jobs j
where e.department_id=d.department_id 
and e.job_id = j.job_id
and e.employee_id = 100;

--(emps join jobs) join depts
select e.employee_id,j.job_title,d.department_name
from employees e inner join jobs j
on (e.job_id = j.job_id)
inner join departments d
on (d.department_id=e.department_id)
and e.employee_id = 100;

--(depts join loc) join country
select d.department_id,d.department_name,l.city,l.country_id,c.country_name
from departments d join locations l
on(d.location_id=l.location_id)
join countries c
on(l.country_id = c.country_id);

SELECT e.first_name �̸�, e.last_name ��,
decode(d.department_name,
        'Executive','������',
        'Shipping','�߼ۺ�') �μ��� 
FROM employees e inner join departments d
on (e.department_id=d.department_id) AND e.first_name='Steven';

SELECT e.department_id �μ�ID,d.department_name �μ���, 
e.first_name �̸�,e.last_name ��, e.salary �޿�
FROM employees e join departments d
on (e.department_id=d.department_id) AND e.salary>=12000 
ORDER BY e.salary DESC;

SELECT e.first_name �̸�, e.last_name ��,
case d.department_name
        when 'Executive' then '������'
        when 'Shipping' then '�߼ۺ�'
        else '����'
end �μ��� 
FROM employees e inner join departments d
on (e.department_id=d.department_id) ;


-------------------------------
--30���μ� ������� �޿���Ͽ� �޿�������̺��� �����ؼ� ����� �� 
--���Ϸ� �մϴ�.
--�� ����� �޿��� ��޺� �ּұ޿��̻� �ִ�޿����� ������ ���� 
--����� �������ϴ�.
select e.employee_id,e.salary,
e.department_id,s.max_sal,s.grade
from employees e join  sal_grade s
on e.salary between s.min_sal and s.max_sal
where department_id = 100;

-- self join
select e1.employee_id,e1.first_name,e2.first_name
from employees e1,employees e2
where e1.manager_id = e2.employee_id
order by e1.employee_id;

select e1.employee_id,e1.first_name,e2.first_name
from employees e1 join employees e2
on e1.manager_id = e2.employee_id
order by e1.employee_id;

--outer join
select e1.employee_id,e1.first_name,e2.first_name
from employees e1,employees e2
where e1.manager_id = e2.employee_id(+)
order by e1.employee_id;

select e1.employee_id,e1.first_name,e2.first_name
from employees e1 left join employees e2
on e1.manager_id = e2.employee_id
order by e1.employee_id;

--���� �� ����� ���� �μ��� ���� ��µǵ��� �Ұ�
select e.employee_id,e.first_name,d.department_name
from employees e , departments d
where e.department_id(+) = d.department_id;

select e.employee_id,e.first_name,d.department_name
from employees e right join departments d
on e.department_id = d.department_id;

--������ �μ������̾ȵȻ���� ����Ұ�.
select e.employee_id,e.first_name,d.department_name
from employees e left join departments d
on e.department_id = d.department_id;

--using
select e.employee_id,e.first_name,d.department_name
from employees e left join departments d
using(department_id);

--full outer join
select e.employee_id,e.first_name,d.department_name
from employees e full join departments d
using(department_id);

select 
nvl(e.employee_id,0) ���,
nvl(e.first_name,'�������') �̸�,
nvl(d.department_name,'�μ�����') �μ���
from employees e full join departments d
using(department_id);

--natural join
select employee_id,department_name
from employees natural join departments;


--1.��� ���̺�� �μ� ���̺��� �����Ͽ� 
--��� ���ID,����̸�,�޿�,�μ����� 
--����϶�. (�μ��� �������� ����)

select * from employees;

--------------------------------------------

select e.employee_id,e.first_name,e.last_name,e.salary,e.hire_date,
d.department_name 
from employees e left join departments d
on(e.department_id=d.department_id)
order by employee_id desc;

select count(*) cnt from employees;


--emp job join
select e.employee_id,e.first_name,e.last_name,e.salary,e.hire_date,
j.job_title 
from employees e join jobs j
on(e.job_id=j.job_id)
order by employee_id desc;



select e.employee_id,j.job_title,d.department_name
from employees e inner join jobs j
on (e.job_id = j.job_id)
inner join departments d
on (d.department_id=e.department_id);

--view ����
CREATE VIEW VIEW_EMP_DEPT_JOB
AS select e.employee_id,j.job_title,d.department_name
from employees e inner join jobs j
on (e.job_id = j.job_id)
inner join departments d
on (d.department_id=e.department_id);

select * from VIEW_EMP_DEPT_JOB order by employee_id;
