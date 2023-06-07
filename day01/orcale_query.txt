DROP TABLE MEMBER;

CREATE TABLE MEMBER 
(
  NUM NUMBER NOT NULL 
, ID VARCHAR2(20) NOT NULL 
, PW VARCHAR2(20) NOT NULL 
, NAME VARCHAR2(20) NOT NULL 
, TEL VARCHAR2(20) NOT NULL 
, SAVE_NAME VARCHAR2(50) DEFAULT 'default.png' 
, CONSTRAINT MEMBER_PK PRIMARY KEY 
  (
    NUM 
  )
  ENABLE 
);

ALTER TABLE MEMBER
ADD CONSTRAINT MEMBER_UK1 UNIQUE 
(
  ID 
)
ENABLE;

CREATE SEQUENCE SEQ_MEMBER;
DROP SEQUENCE SEQ_MEMBER;

select * from member order by num desc;

insert into member(num,id,pw,name,tel) values(seq_member.nextval,'admin1','hi11','kim1','011');
insert into member(num,id,pw,name,tel) values(seq_member.nextval,'admin2','hi11','kim1','011');
insert into member(num,id,pw,name,tel) values(seq_member.nextval,'admin3','hi11','kim1','011');
insert into member(num,id,pw,name,tel) values(seq_member.nextval,'admin4','hi11','kim1','011');
insert into member(num,id,pw,name,tel) values(seq_member.nextval,'admin5','hi11','kim1','011');
insert into member(num,id,pw,name,tel) values(seq_member.nextval,'tester1','hi11','lee1','011');
insert into member(num,id,pw,name,tel) values(seq_member.nextval,'tester2','hi11','lee2','011');
insert into member(num,id,pw,name,tel) values(seq_member.nextval,'tester3','hi11','lee3','011');
insert into member(num,id,pw,name,tel) values(seq_member.nextval,'tester4','hi11','lee4','011');
insert into member(num,id,pw,name,tel) values(seq_member.nextval,'tester5','hi11','lee5','011');
commit;