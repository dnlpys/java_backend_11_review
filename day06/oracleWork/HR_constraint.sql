--제약조건
ALTER TABLE TEST1  
MODIFY (PNUM NOT NULL);

ALTER TABLE TEST1
ADD CONSTRAINT TEST1_UK1 UNIQUE 
(
  P2NUM 
)
ENABLE;


---------------------------------
create table dept(
DEPTNO NUMBER(2) primary key
);

CREATE TABLE EMP_TAB(
EMPNO NUMBER(4), 
ENAME VARCHAR2(10), 
JOB_ID VARCHAR2(9),
MGR NUMBER(4) CONSTRAINT EMP_SELF_KEY REFERENCES EMP_TAB(EMPNO), 
HIRE_DATE DATE,
SAL NUMBER(7),
COMM NUMBER(1),
DEPTNO NUMBER(2) NOT NULL,
CONSTRAINT EMP_DEPTNO_FK FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO), 
CONSTRAINT EMP_EMPNO_PK PRIMARY KEY(EMPNO)
);


select constraint_name from user_constraints;


-----------------------------
CREATE TABLE TEST_DEPT 
(
  DEPTNO NUMBER NOT NULL 
, DNAME VARCHAR2(20) DEFAULT '개발부' 
, LOC CHAR(1) 
, CONSTRAINT TEST_DEPT_PK PRIMARY KEY 
  (
    DEPTNO 
  )
  ENABLE 
);

ALTER TABLE TEST_DEPT
ADD CONSTRAINT TEST_DEPT_CHK1 CHECK 
(loc in('1','2'))
ENABLE;

------------------------------
CREATE TABLE TEST_EMP 
(
  NO NUMBER(4) NOT NULL 
, NAME VARCHAR2(20) NOT NULL 
, LOC VARCHAR2(4) 
, JUMIN CHAR(13) 
, DEPTNO NUMBER 
, CONSTRAINT TEST_EMP_PK PRIMARY KEY 
  (
    NO 
  )
  ENABLE 
);

ALTER TABLE TEST_EMP
ADD CONSTRAINT TEST_EMP_UK1 UNIQUE 
(
  JUMIN 
)
ENABLE;

ALTER TABLE TEST_EMP
ADD CONSTRAINT TEST_EMP_FK1 FOREIGN KEY
(
  DEPTNO 
)
REFERENCES TEST_DEPT
(
  DEPTNO 
)
ENABLE;

ALTER TABLE TEST_EMP
ADD CONSTRAINT TEST_EMP_CHK1 CHECK 
(loc in('서울','부산'))
ENABLE;
------------------------------
INSERT INTO test_dept (deptno, loc) VALUES(10, '2');
INSERT INTO test_dept VALUES(20, '기획부', '1');
INSERT INTO test_dept VALUES(30, '영업부', '2');
INSERT INTO test_dept VALUES(40, '관리부', '1');
INSERT INTO test_dept VALUES(50, '관리부2', '3');--check error

select * from test_dept;

insert into test_emp values(100,'kim','서울','8808081234567',10);
insert into test_emp values(101,'kim1','부산','8808081234568',10);

select * from test_emp;
------------------------------
CREATE TABLE TEST_BOARD 
(
  WNUM NUMBER(4) NOT NULL 
, WRITER VARCHAR2(10) NOT NULL 
, TITLE VARCHAR2(100) NOT NULL 
, CONTENT VARCHAR2(4000) NOT NULL 
, WDATE DATE DEFAULT sysdate NOT NULL 
, VCOUNT NUMBER 
, CONSTRAINT TEST_BOARD_PK PRIMARY KEY 
  (
    WNUM 
  )
  ENABLE 
);
------------------------------
CREATE TABLE TEST_BOARD_COMM 
(
  COMM_ID NUMBER(4) NOT NULL 
, WRITER VARCHAR2(10) NOT NULL 
, TITLE VARCHAR2(100) NOT NULL 
, CONTENT VARCHAR2(1000) NOT NULL 
, WDATE DATE DEFAULT sysdate NOT NULL 
, WNUM NUMBER(4) 
, VCOUNT NUMBER 
, CONSTRAINT TEST_BOARD_COMM_PK PRIMARY KEY 
  (
    COMM_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX TABLE1_PK1 ON TEST_BOARD_COMM (COMM_ID ASC) 
  )
  ENABLE 
);

ALTER TABLE TEST_BOARD_COMM
ADD CONSTRAINT TEST_BOARD_COMM_FK1 FOREIGN KEY
(
  WNUM 
)
REFERENCES TEST_BOARD
(
  WNUM 
)
ENABLE;
------------------------------
