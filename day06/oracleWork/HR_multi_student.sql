select floor(dbms_random.value()*49)+1 from dual;

create table multi_students(num number,name varchar2(10));
create sequence seq_multi_students;

insert into  multi_students(num,name) values(seq_multi_students.nextval,'���̼�');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�質��');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�賲��');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�赵��');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�����');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�����');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�輭��');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�輱��');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�����');

insert into  multi_students(num,name) values(seq_multi_students.nextval,'��ָ�');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'����');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'���μ�');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'���ȣ');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�����');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'���ä');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
    
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�ڹο�');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�ڿ���');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'����');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�ҿ���');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�Ű���');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
    
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�����');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'��ȿ��');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�Ӽ���');
    
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�庴��');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'���ֿ�');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'����ȣ');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�ֿ뼷');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'������');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'�ѿ���');
select * from multi_students;

select num,name 
from multi_students
where num = (select floor(dbms_random.value()*49)+1 from dual);


--������,�����,������
--�Ӽ���,������,�Ű���
--������,���μ�,����
--������,������,������




