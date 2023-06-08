DROP TABLE BOARD ;

CREATE TABLE BOARD 
(
  WNUM NUMBER NOT NULL 
, TITLE VARCHAR2(50) NOT NULL 
, CONTENT VARCHAR2(2000) 
, WRITER VARCHAR2(20) NOT NULL 
, WDATE DATE DEFAULT sysdate 
, VCOUNT NUMBER DEFAULT 0 
, CONSTRAINT BOARD_PK PRIMARY KEY 
  (
    WNUM 
  )
  ENABLE 
);
ALTER TABLE BOARD
ADD CONSTRAINT BOARD_FK1 FOREIGN KEY
(
  WRITER 
)
REFERENCES MEMBER
(
  ID 
)
ON DELETE CASCADE ENABLE;


DROP SEQUENCE SEQ_BOARD;
CREATE SEQUENCE SEQ_BOARD;

select * from board order by wnum desc;

insert into board(wnum,title,content,writer) values(SEQ_BOARD.nextval,'title1','content1','tester1');
insert into board(wnum,title,content,writer) values(SEQ_BOARD.nextval,'title2','content2','tester1');
insert into board(wnum,title,content,writer) values(SEQ_BOARD.nextval,'title3','content3','tester2');
insert into board(wnum,title,content,writer) values(SEQ_BOARD.nextval,'title4','content4','tester2');
insert into board(wnum,title,content,writer) values(SEQ_BOARD.nextval,'title5','content5','tester3');
insert into board(wnum,title,content,writer) values(SEQ_BOARD.nextval,'title6','content6','tester3');
insert into board(wnum,title,content,writer) values(SEQ_BOARD.nextval,'title7','content7','tester4');
insert into board(wnum,title,content,writer) values(SEQ_BOARD.nextval,'title8','content8','tester4');
insert into board(wnum,title,content,writer) values(SEQ_BOARD.nextval,'title9','content9','tester5');
insert into board(wnum,title,content,writer) values(SEQ_BOARD.nextval,'title10','content10','tester5');
commit;