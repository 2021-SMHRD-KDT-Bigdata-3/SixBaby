create table member
(id varchar(12) not null, pw varchar(20) not null,
nickname varchar(20) not null, name varchar(50) not null,
gender varchar(50) not null, birth varchar(50) not null,
tell varchar(50) not null,
primary key(id));

create table baby
(baby_num int not null auto_increment, id varchar(12) not null,
baby_name varchar(50) not null, baby_birth varchar(50) not null,
baby_gender varchar(50) not null, 
primary key(baby_num));

create table sound
(id varchar(12), parents_snd varchar(20));

create table boards
(board_no int not null auto_increment, category varchar(50) not null,
title varchar(50) not null, nickname varchar(20) not null,
picture varchar(50), contents varchar(500) not null,
indate datetime default now(),
primary key(board_no));

create table comments
(comment_no int not null auto_increment, board_no int not null,
nickname varchar(20) not null, contents varchar(500) not null,
likes int default 0,
primary key(comment_no));

create table babycondition
(condition_num int not null auto_increment, baby_num int not null,
hungry int, pup int, burping int, cold_hot int,
condition_date datetime default now(), 
primary key(condition_num));

create table diary
(diary_no int not null auto_increment, baby_no int not null,
title varchar(50) not null, contents varchar(1000) not null,
diary_data datetime default now(), picture varchar(50),
primary key(diary_no));

insert into member
values('test', '1234', 'user', '스마트', '남자', '00-01-01', '010-1111-1111');

insert into boards(category, title, nickname, picture, contents)
values('tip', 'test', '스마트', 'cat.jpg', '가나다라마바사아자차카타파하');

select * from boards;

select * from member;

select * from comments;

select * from diary;

insert into comments
values('4','4','꼬꼬','가나다라마바사아자차카파타하가갸거겨고교구규구구구구구구구구구구구구구','3');
insert into comments
values('2','2','꼬꼬오오오오','응애응애애애애애애애애','2');
insert into comments
values('3','3','흐어어어얽','하기싫당','1');

select * from boards order by board_no desc;
select * from boards where category="tip" order by board_no desc;
