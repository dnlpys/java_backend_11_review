DROP TABLE COMMENTS ;
CREATE TABLE COMMENTS 
(
  CNUM NUMBER NOT NULL 
, WNUM NUMBER NOT NULL 
, CONTENT VARCHAR2(100) NOT NULL 
, WDATE DATE DEFAULT sysdate 
, WRITER VARCHAR2(20) NOT NULL 
, CONSTRAINT COMMENTS_PK PRIMARY KEY 
  (
    CNUM 
  )
  ENABLE 
);

ALTER TABLE COMMENTS
ADD CONSTRAINT COMMENTS_FK1 FOREIGN KEY
(
  WNUM 
)
REFERENCES BOARD
(
  WNUM 
)
ON DELETE CASCADE ENABLE;

DROP SEQUENCE SEQ_COMMENTS;
CREATE SEQUENCE SEQ_COMMENTS;

select * from comments order by cnum desc;

insert into comments(cnum,wnum,content,writer) values(seq_comments.nextval,1,'comment1','tester1');
insert into comments(cnum,wnum,content,writer) values(seq_comments.nextval,1,'comment2','tester1');
insert into comments(cnum,wnum,content,writer) values(seq_comments.nextval,1,'comment3','admin1');
insert into comments(cnum,wnum,content,writer) values(seq_comments.nextval,2,'comment1','tester1');
insert into comments(cnum,wnum,content,writer) values(seq_comments.nextval,2,'comment2','tester1');
insert into comments(cnum,wnum,content,writer) values(seq_comments.nextval,2,'comment3','admin1');
insert into comments(cnum,wnum,content,writer) values(seq_comments.nextval,3,'comment1','admin1');
insert into comments(cnum,wnum,content,writer) values(seq_comments.nextval,3,'comment2','admin1');
insert into comments(cnum,wnum,content,writer) values(seq_comments.nextval,3,'comment3','admin1');
insert into comments(cnum,wnum,content,writer) values(seq_comments.nextval,3,'comment4','tester1');
commit;

