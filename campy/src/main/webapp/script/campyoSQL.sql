
create table MEMBER(
  USER_ID VARCHAR2(12) CONSTRAINT MEMBER_ID_PK primary key,
  USER_PASS VARCHAR2(16) not null,
  USER_NAME VARCHAR2(15) not null,
  USER_TEL VARCHAR2(11) not null,
  USER_EMAIL VARCHAR2(30) not null,
  SDATE date not null,
  USER_EXITYN VARCHAR(1) not null
);
insert into member values('test', '1234', 'ȫ�浿', '01012341234','test@naver.com',sysdate,'y');
commit;
select * from member;
create table camp(
  camp_name VARCHAR2(30) CONSTRAINT camp_name_PK primary key,
  camp_city VARCHAR2(30) not null,
  camp_kind VARCHAR2(30) not null,
  camp_image VARCHAR2(30) not null
);

create table room(
  room_name VARCHAR2(30),
  room_camp VARCHAR2(30) UNIQUE not null,
  room_maxhead NUMBER(2) not null,
  room_price NUMBER(8) not null,  
  room_image VARCHAR(30),
  room_intime VARCHAR(5),
  room_outtime VARCHAR(5),
   CONSTRAINT room_name_room_camp_PK primary key(room_name,room_camp),
  CONSTRAINT fk_camp FOREIGN KEY(room_camp)
  REFERENCES camp(camp_name) ON DELETE CASCADE
);

create table notice(
  notice_num NUMBER(5) CONSTRAINT notice_num_PK primary key,
  notice_tittle VARCHAR2(30) not null,
  notice_content VARCHAR2(300) not null,
  notice_writer VARCHAR2(12) not null,
  notice_regdate date,
  notice_updater VARCHAR2(12) not null,
  notice_updatedate date,
  CONSTRAINT fk_notice_writer FOREIGN KEY(notice_writer)
  REFERENCES MEMBER(user_id) ON DELETE SET NULL,
  CONSTRAINT fk_notice_updater FOREIGN KEY(notice_updater)
  REFERENCES MEMBER(user_id) ON DELETE SET NULL
);

create table rsvn(
  rsvn_num NUMBER(5) CONSTRAINT rsvn_num_PK primary key,
  rsvn_name VARCHAR2(15) not null,
  rsvn_tel VARCHAR2(11) not null,
  rsvn_man VARCHAR2(3) not null,
  rsvn_intime date not null,
  rsvn_outtime date not null,
  rsvn_roomname VARCHAR2(30) not null,
  rsvn_camp VARCHAR2(30) not null,
  rsvn_del_rsrvyn VARCHAR2(1) not null,
  rsvn_userid VARCHAR2(12) not null,
  CONSTRAINT FK_RSVN_ROOMNAME_ROMMCAMP FOREIGN KEY(rsvn_roomname,rsvn_camp)
  REFERENCES room(room_name,room_camp) ON DELETE SET NULL,
  CONSTRAINT FK_RSVN_USERID FOREIGN KEY(rsvn_userid)
  REFERENCES MEMBER(user_id) ON DELETE SET NULL
);

create table image(
  image_name VARCHAR2(30) CONSTRAINT image_name_PK primary key,
  image_num NUMBER(5),
  image_userfile VARCHAR2(30),
  image_save VARCHAR2(30),
  image_type VARCHAR2(30),
  image_size VARCHAR2(30),
  CONSTRAINT FK_image_num FOREIGN KEY(image_num)
  REFERENCES review(review_num) ON DELETE CASCADE
);
select * from member;
commit;
