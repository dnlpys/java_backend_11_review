--movie
DROP TABLE MOVIE ;

CREATE TABLE MOVIE 
(
  NUM NUMBER NOT NULL 
, TITLE VARCHAR2(50) NOT NULL 
, PRICE NUMBER NOT NULL 
, PRODUCER VARCHAR2(20) 
, SAVE_NAME VARCHAR2(50) DEFAULT 'mv_default.png' 
, CONSTRAINT MOVIE_PK PRIMARY KEY 
  (
    NUM 
  )
  ENABLE 
);

--RESERVATION
DROP TABLE RESERVATION;

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
DROP sequence SEQ_MOVIE ;
CREATE sequence SEQ_MOVIE ;

drop sequence SEQ_RESERVATION ;
CREATE sequence SEQ_RESERVATION ;


insert into movie(num,title,price,producer) values(SEQ_MOVIE.nextval,'스파이더맨',10000,'샘 레이미');
insert into movie(num,title,price,producer) values(SEQ_MOVIE.nextval,'헐크',12000,'이안');
insert into movie(num,title,price,producer) values(SEQ_MOVIE.nextval,'아이언맨',10000,'존 파브로');
insert into movie(num,title,price,producer) values(SEQ_MOVIE.nextval,'앤트맨',10000,'패이턴 리드');
insert into movie(num,title,price,producer) values(SEQ_MOVIE.nextval,'원더우먼',10000,'패티 젱킨스');
COMMIT;
select * from movie;

insert into reservation(num,user_id,movie_num,movie_date,mcount) 
values(SEQ_RESERVATION.nextval,'tester1',1,
TO_DATE('2023-10-25 10:10:10','YYYY-MM-DD HH24:MI:SS'),2);

insert into reservation(num,user_id,movie_num,movie_date,mcount) 
values(SEQ_RESERVATION.nextval,'tester1',2,
TO_DATE('2023-11-25 10:10:10','YYYY-MM-DD HH24:MI:SS'),3);

insert into reservation(num,user_id,movie_num,movie_date,mcount) 
values(SEQ_RESERVATION.nextval,'admin1',4,
TO_DATE('2023-12-25 10:10:10','YYYY-MM-DD HH24:MI:SS'),1);
COMMIT;
select * from reservation;

select r.num,r.user_id,r.movie_num,m.title,r.regdate,r.movie_date,r.mcount,m.price ,m.save_name
from reservation r join movie m on (r.movie_num = m.num) 
where user_id='tester1' order by num desc;


