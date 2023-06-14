select floor(dbms_random.value()*49)+1 from dual;

create table multi_students(num number,name varchar2(10));
create sequence seq_multi_students;

insert into  multi_students(num,name) values(seq_multi_students.nextval,'강미선');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'강윤수');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'김나연');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'김남진');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'김도현');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'김범준');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'김상현');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'김서하');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'김선아');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'김소희');

insert into  multi_students(num,name) values(seq_multi_students.nextval,'김애리');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'김재희');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'김지은');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'김태형');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'김희강');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'남민서');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'노건호');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'노승한');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'라경채');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'문서연');
    
insert into  multi_students(num,name) values(seq_multi_students.nextval,'문연주');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'박민영');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'박예지');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'서준');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'서형석');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'소예솔');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'손진용');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'신경윤');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'위서영');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'유동원');
    
insert into  multi_students(num,name) values(seq_multi_students.nextval,'윤영웅');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'이유정');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'이재민');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'이재훈');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'이종관');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'이진원');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'이현석');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'이형주');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'이효림');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'임수정');
    
insert into  multi_students(num,name) values(seq_multi_students.nextval,'장병엽');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'정주원');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'정현호');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'정형수');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'조윤범');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'진가영');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'최용섭');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'최유진');
insert into  multi_students(num,name) values(seq_multi_students.nextval,'한요한');
select * from multi_students;

select num,name 
from multi_students
where num = (select floor(dbms_random.value()*49)+1 from dual);


--위서영,김범준,유동원
--임수정,이종관,신경윤
--최유진,남민서,김희강
--김지은,문서연,이형주




