--function
--������ �Լ� >> �� : ����Լ�-��,ī��Ʈ,�ְ�,�ּҰ�,���..
--������ �Լ� >> �� : ������ȯ�Լ�.,,

--1.����Լ�
--��ü����� �˻�
select count(*) from employees;

--�Ŵ޳����� ��ü������� �޿��� ��
select sum(salary),sum(salary)*1300 from employees;

--������� �޿��� �ְ�޿����
select max(salary) from employees;

--������� �޿��� �ּұ޿����
select min(salary) from employees;

--������� ��ձ޿����
select avg(salary) from employees;


--2. �����Լ�
select chr(65),ascii('A') from dual;

--|| >> concat
select concat(first_name,job_id) from employees;

--��ҹ��ں���
select first_name,lower(first_name),upper(first_name)
from employees;

--LPAD �����ֱ�
select LPAD('yangssem', 13, '*#') from dual;
select LPAD(first_name, 13, '*'),
RPAD(first_name, 13, '*') from employees;

--���� �Ǵ� Ư�� ���� ����(������ �յڿ��� ����)
select LTRIM('aa123456aa', 'aa'),
RTRIM('aa123456aa', 'aa')from dual;

--�ǵ������� ������ �ƴϰ� ��½ÿ��� ������ ����
select REPLACE('yang and sam', 'sa', 'sse') from dual;

select job_id,REPLACE(job_id, 'AC', 'TC') from employees;

select REPLACE('yang and sam', 'sa', 'sse') from dual;

--���ڿ��� �Ϻκ� ����
select SUBSTR('ABCDEFG', 2, 1) from dual;
select SUBSTR('ABCDEFG', 2, 2),SUBSTR('ABCDEFG', 2, 3) from dual;

select INSTR('010-2222-8888','-') from dual;
select INSTR('CORPORATE FLOOR','OR', 1, 3) from dual;

--���ڿ��� ����
select length('yangssem') from dual;
select first_name,length(first_name) from employees;

--������� �̸��� 7�����̻��� ����鸸 ���
select first_name,length(first_name) from employees
where length(first_name) >= 7;

--���ڿ����� �ִ밪,�ּҰ�
select greatest('CC', 'ABCDE', 'CA','ca','cc') from dual;
select least('CC', 'ABCDE', 'CA','ca','cc') from dual;

select greatest('12', '132', '34') from dual;

--�������� �ִ밪,�ּҰ�
select greatest(12, 132, 34) from dual;
select least(12, 132, 34) from dual;

--��µ� �����͵���  �ΰ��� ������� ��ü���ִ��Լ�
select salary,commission_pct,
nvl(commission_pct, 5) ,nvl(commission_pct, 5)*salary
from employees;

select salary,commission_pct,
nvl2(commission_pct, 5,10) ,nvl2(commission_pct, 5,10)*salary
from employees;

select salary + salary * nvl2(commission_pct, 5,10)   
from employees;

--decode : �÷��� �����ϴ� �б��Լ�
select last_name, job_id, salary,
decode( job_id, 'IT_PROG', salary*1.1,salary) AS "�Ǽ��ɾ�" 
from employees;

select last_name, job_id, salary,
decode( job_id, 
    'IT_PROG', salary*1.1,
    'AD_PRES', salary*1.2,
    'AD_VP', salary*1.3,
    salary) AS "�Ǽ��ɾ�" 
from employees;

--case when then : �÷��� �����ϴ� �б��Լ�
select last_name, job_id, salary,
case job_id 
    when 'IT_PROG' then salary*1.1
    when 'AD_PRES' then  salary*1.2
    when 'AD_VP' then  salary*1.3
    else salary 
end AS "�Ǽ��ɾ�" 
from employees;

--2) ��¥�Լ�
select sysdate,sysdate+1,sysdate-1 from dual;


select 
sysdate,
add_months(sysdate,1), 
add_months('23/05/06',1),
add_months('23/12/06',-3)
from dual;

--�شٿ��� ������ ��
select HIRE_DATE, LAST_DAY(HIRE_DATE) from employees;
select HIRE_DATE, NEW_TIME(HIRE_DATE, 'GMT', 'PDT') 
from employees where EMPLOYEE_ID=100;

--�γ�¥���� ������
select sysdate,hire_date,months_between(sysdate,hire_date) 
from employees;

--1:�Ͽ���, 2:������,, ���尡��� ������ ��¥
select NEXT_DAY(sysdate ,3) from dual;
select NEXT_DAY(sysdate ,6) from dual;

--3) ���ں�ȯ�Լ�

--to_char
select SYSDATE, 
TO_CHAR(SYSDATE, 'D'),
TO_CHAR(SYSDATE, 'DAY'),
TO_CHAR(SYSDATE, 'DY'),
TO_CHAR(SYSDATE, 'MM'),
TO_CHAR(SYSDATE, 'MONTH'),
TO_CHAR(SYSDATE, 'YYYY'),
TO_CHAR(SYSDATE, 'YY'),
TO_CHAR(SYSDATE, 'DD')
from dual;

select SYSDATE, 
TO_CHAR(SYSDATE, 'YYYY-MM-DD'),
TO_CHAR(SYSDATE, 'HH:MI:SS')
from dual;

--���ں�ȯ�Լ�,����Ŭ�� �ڵ�ĳ���ñ�ɵ� �ִ�.
select to_number('100')+1,'100'+1 from dual;

--��¥��ȯ�Լ�
select sysdate, TO_DATE(sysdate, 'yy/mm/dd') FROM dual;
select sysdate, TO_DATE('13-03-20', 'dd/mm/yy') FROM dual;

--�ý����Լ�
select user from dual; --Ŀ��Ʈ�� ����ڸ� ��ȯ.


--�����Լ�
select 
avg(salary),    --��ü���
ceil(avg(salary)), -- �Ҽ������� �ø�
floor(avg(salary)),  --�Ҽ������� ����,����
round(avg(salary)),
round(avg(salary),3)   -- �ݿø�,�ڸ��� ��������.
from employees;

--count()
select count(*) from employees;

select count(commission_pct) from employees;

select count(employee_id) from employees;

select count(department_id) from employees;
select count(salary) from employees;
--sum()
select sum(salary),avg(salary),sum(salary)/107 from employees;

--avg()
select avg(commission_pct),sum(commission_pct)/35 from employees;

select department_id , floor(avg(salary)) 
from employees
--where department_id is not null --�׷캰 ó���� ������
group by department_id
having department_id is not null;  --�׷캰 ó���� ������

select job_id , floor(avg(salary)) salary
from employees
group by job_id;

select department_id , floor(avg(salary)) salary
from employees
group by department_id;

select job_id , sum(salary) salary from employees group by job_id;

select location_id,department_name
from departments
group by location_id,department_name;

select floor(dbms_random.value()*49)+1 from dual;

---����Ǯ��
--Q1:���� 8000�̻��� ������� �μ��� ��տ����� �ݿø����� ����϶�.




