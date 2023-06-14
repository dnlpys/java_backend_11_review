--java jdbc 연동계정
CREATE TABLE TEST 
(
  NUM NUMBER NOT NULL 
, NAME VARCHAR2(20) NOT NULL 
, AGE NUMBER NOT NULL 
, CONSTRAINT TABLE1_PK PRIMARY KEY 
  (
    NUM 
  )
  ENABLE 
);
----------------------------------------------------

-- data insert
insert into test(num,name,age) values(1,'kim1',11);
insert into test(num,name,age) values(2,'kim1',11);
insert into test(num,name,age) values(3,'kim3',11);

