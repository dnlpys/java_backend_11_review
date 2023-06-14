--movie

CREATE TABLE MOVIE 
(
  NUM NUMBER NOT NULL 
, TITLE VARCHAR2(50) NOT NULL 
, PRICE NUMBER NOT NULL 
, PRODUCER VARCHAR2(20) 
, CONSTRAINT MOVIE_PK PRIMARY KEY 
  (
    NUM 
  )
  ENABLE 
);

--RESERVATION
CREATE TABLE RESERVATION 
(
  NUM NUMBER NOT NULL 
, USER_ID VARCHAR2(20) NOT NULL 
, MOVIE_NUM NUMBER NOT NULL 
, REGDATE DATE DEFAULT sysdate 
, MOVIE_DATE DATE 
, MCOUNT NUMBER 
, CONSTRAINT RESERVATION_PK PRIMARY KEY 
  (
    NUM 
  )
  ENABLE 
);

ALTER TABLE RESERVATION
ADD CONSTRAINT RESERVATION_FK1 FOREIGN KEY
(
  USER_ID 
)
REFERENCES MEMBER
(
  ID 
)
ENABLE;

ALTER TABLE RESERVATION
ADD CONSTRAINT RESERVATION_FK2 FOREIGN KEY
(
  MOVIE_NUM 
)
REFERENCES MOVIE
(
  NUM 
)
ENABLE;


--------------------------
CREATE sequence SEQ_MOVIE ;

CREATE sequence SEQ_RESERVATION ;
drop sequence SEQ_RESERVATION ;

insert into movie(num,title,price,producer) values(SEQ_MOVIE.nextval,'�����̴���',10000,'�� ���̹�');
insert into movie(num,title,price,producer) values(SEQ_MOVIE.nextval,'��ũ',12000,'�̾�');
insert into movie(num,title,price,producer) values(SEQ_MOVIE.nextval,'���̾��',10000,'�� �ĺ��');
insert into movie(num,title,price,producer) values(SEQ_MOVIE.nextval,'��Ʈ��',10000,'������ ����');
insert into movie(num,title,price,producer) values(SEQ_MOVIE.nextval,'�������',10000,'��Ƽ ��Ų��');

select * from movie;

insert into reservation(num,user_id,movie_num,movie_date,mcount) 
values(SEQ_RESERVATION.nextval,'tester',1,
TO_DATE('2023-10-25 10:10:10','YYYY-MM-DD HH24:MI:SS'),2);

insert into reservation(num,user_id,movie_num,movie_date,mcount) 
values(SEQ_RESERVATION.nextval,'tester',2,
TO_DATE('2023-11-25 10:10:10','YYYY-MM-DD HH24:MI:SS'),3);

insert into reservation(num,user_id,movie_num,movie_date,mcount) 
values(SEQ_RESERVATION.nextval,'admin',4,
TO_DATE('2023-12-25 10:10:10','YYYY-MM-DD HH24:MI:SS'),1);

select * from reservation;

select r.num,r.user_id,r.movie_num,m.title,r.regdate,r.movie_date,r.mcount from reservation r join movie m on (r.movie_num = m.num) where user_id='tester' order by num;

