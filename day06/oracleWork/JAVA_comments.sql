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
ENABLE;

drop table comments;

create sequence seq_comments;

select * from comments;





