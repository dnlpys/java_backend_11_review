--���̺��Ϻ��� DQL
select * from tab;
--* : all column

select * from countries;

desc countries;

select country_id,country_name,region_id from countries;

select * from departments;

desc departments;

-- ��� ������� ����÷����� ���(�˻�)
select * from employees;

-- 150������ ����� ū��ȣ�� ����ϴ� ������� ����÷����� ���(�˻�)
select * from employees where employee_id >= 150;

-- ��� ������� �����ȣ,�̸�,��,�޿� �÷������� ���(�˻�)-�� ��� ������������(������)
select employee_id,first_name,last_name,salary from employees order by employee_id desc;

-- ��� ������� �����ȣ,�̸�,��,�޿� �÷������� ���(�˻�)-�� �޿� ������������(������)
select employee_id,first_name,last_name,salary from employees order by salary asc;

select JOB_ID, SALARY from employees order by JOB_ID, SALARY desc;


-----------------

--��� ������� �μ���ȣ��10���� ������� �̸�,�޿���10%�̻�ݿ����� ����ϼ���.
select first_name,last_name,salary,
salary*1.1 "�޿���10%�̻�ݿ���",salary+1000,
salary/10,salary-2000 from employees
where department_id=10;

select first_name,last_name,salary
from employees
where salary=24000;

select first_name,last_name,salary
from employees
where salary >= 15000;

select first_name,last_name,salary,department_id
from employees
where department_id != 30;

select first_name,last_name,salary,department_id
from employees
where not department_id = 30;


-- &,&&, |,||
select first_name,last_name,salary,department_id
from employees
where department_id = 20 and salary > 10000;

select first_name,last_name,salary,department_id
from employees
where department_id != 20 and salary > 10000;

select first_name,last_name,salary,department_id
from employees
where salary = 11000 or salary = 12000 or salary=15000;

select first_name,last_name,salary,department_id
from employees
where salary in(11000,12000,15000);

select first_name,last_name,salary,department_id
from employees
where salary >= 10000 and salary <= 17000;

select first_name,last_name,salary,department_id
from employees
where salary between 10000 and  17000;

select first_name,last_name,salary,department_id
from employees
where not(salary between 10000 and  17000);

select first_name,last_name,salary,department_id
from employees
where not(salary between 10000 and  17000) and department_id is null;

--department_id is not null >> �μ������� �ȵȻ���� ���� ���
select first_name,last_name,salary,department_id
from employees
where not (salary between 10000 and  17000 )
and department_id is not null;

--dual table
select 1+(2*3) from dual;

select employee_id,salary from employees
where salary>=20000 or salary <= 2100
union --�ߺ��Ȱ��� �Ѱ���
--union all --��δ�
--intersect --�ߺ��Ȱ��� ����?
--minus --�����˻��� ������� �ڿ��˻������ ����.
select employee_id,salary from employees
where salary <= 2200;

--in : ���� ���� or ����
SELECT DEPARTMENT_ID, SALARY FROM employees
WHERE DEPARTMENT_ID IN(50, 20, 100);

SELECT distinct DEPARTMENT_ID FROM employees
WHERE DEPARTMENT_ID IN(50, 20, 100);

--���� ũ��,�۴�,�̻�,����
--any : >�϶� �����͵��߿��� ���������ͺ��� ū�͵�
--any : >=�϶� �����͵��߿��� ���������� �̻��ΰ͵�
--any : <�϶� �����͵��߿��� ����ū�ͺ��� �����͵�
SELECT DEPARTMENT_ID, SALARY FROM employees
WHERE DEPARTMENT_ID >any(50, 20, 100); -- ��ū
SELECT DEPARTMENT_ID, SALARY FROM employees
WHERE DEPARTMENT_ID <any(50, 20, 100); -- ū��

SELECT DEPARTMENT_ID, SALARY FROM employees
WHERE DEPARTMENT_ID >all(50, 20, 100); --ūū
SELECT DEPARTMENT_ID, SALARY FROM employees
WHERE DEPARTMENT_ID <all(50, 20, 100); --����


SELECT employee_id, SALARY FROM employees
WHERE salary in(4400,17000,10000,12000);

SELECT employee_id, SALARY FROM employees
WHERE salary <=any(4400,17000,10000,12000);

select first_name,last_name from employees
where last_name like '%t%';
select first_name,last_name from employees
where last_name like '%in%';

select first_name,last_name from employees
where last_name like '_e%';

-- abctde a,t
select first_name,last_name from employees
where last_name like '%a%t%';

select first_name,last_name from employees
where last_name like '%a%' and last_name like '%t%';

select first_name,last_name from employees;
select first_name||last_name from employees;
select 
first_name||' '||last_name||'�� ����['||salary||']' info
from employees;

SELECT EMPLOYEE_ID FROM employees
WHERE NOT (SALARY > 1000 AND SALARY < 12000);

SELECT EMPLOYEE_ID FROM employees
WHERE NOT SALARY > 1000 AND SALARY < 12000;

drop table test2;
create table test2(fname varchar2(20));
insert into test2 values('S1234');
insert into test2 values('1234S_1234');
insert into test2 values('$S_1234');
insert into test2 values('sssS_1234');
insert into test2 values('THE X\_Y');
insert into test2 values('THE1 X_Y');
insert into test2 values('THE X\&Y');
insert into test2 values('THE X&Y');
insert into test2 values('THE2 X_Y');
insert into test2 values('THE2 90%');
insert into test2 values('THE2 30%');

select fname from test2 where fname like '%\%%' escape '\';
select fname from test2 where fname like '%\_%' escape '\' ;