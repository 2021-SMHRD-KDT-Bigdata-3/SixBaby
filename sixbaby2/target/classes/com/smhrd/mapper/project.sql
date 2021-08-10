--#----------------------------------------------------------------------------------------#

--# ȸ�� ���̺�
create table member
(id varchar(12) not null, pw varchar(20) not null,
nickname varchar(20) not null, name varchar(50) not null,
gender varchar(50) not null, birth varchar(50) not null,
tell varchar(50) not null,
primary key(id));

--# �Ʊ� ���̺�
create table baby
(baby_num int not null auto_increment, id varchar(12) not null,
baby_name varchar(50) not null, baby_birth varchar(50) not null,
baby_gender varchar(50) not null, 
primary key(baby_num));

--# �Խ��� ���̺�
create table boards
(board_no int not null auto_increment, category varchar(50) not null,
title varchar(50) not null, nickname varchar(20) not null,
picture varchar(50), contents varchar(500) not null,
indate datetime default now(),
primary key(board_no));

--# ��� ���̺�
create table comments
(comment_no int not null auto_increment, board_no int not null,
nickname varchar(20) not null, contents varchar(500) not null,
likes int default 0,
primary key(comment_no));

--# �����ϱ� ���̺�
create table diary
(id varchar(12) not null, diary_no int not null auto_increment, baby_no int not null,
title varchar(50) not null, contents varchar(1000) not null,
diary_data varchar(50), picture varchar(2000),
primary key(diary_no));

--# �Ʊ���� ���̺� (condition - hungry/pup/burping/cold_hot �̷��� 4���� ������ ������!)
--## condition�� FK�� �Ұ�
create table babycondition
(condition_num int not null auto_increment,
id int not null,
 conditions varchar(20) not null,
 condition_date datetime default now(), 
 primary key(condition_num));

--# �ذ�å ���̺�
create table solution
(conditions varchar(20) not null,
exp varchar(3000) not null, 
solu varchar(3000) not null,
primary key(conditions));

--#----------------------------------------------------------------------------------------#

--# �������� ���� �� Ȯ��

insert into member
values('test', '1234', 'user', '����Ʈ', '����', '00-01-01', '010-1111-1111');

select * from boards;

select * from member;

select * from comments;

select * from diary;


select * from babycondition;

select * from solution;

insert into comments
values('4','4','����','�����ٶ󸶹ٻ������ī��Ÿ�ϰ����Űܰ����Ա�������������������������','3');
insert into comments
values('2','2','������������','�������־־־־־־־�','2');
insert into comments
values('3','3','������','�ϱ�ȴ�','1');

select * from boards order by board_no desc;


insert into solution
values('hungry','������','�������');
insert into solution
values('pup','ȣ��ȣ��','������ ������');
insert into solution
values('burping','������','������');
insert into solution
values('cold_hot','ȣ�ѷѷ�','������');


--#----------------------------------------------------------------------------------------#

--# ������ ���� �ϳ� ���� ���Ʋ����� ���� �����Կ� (������ ���� ȸ��Ż�� ��������!)
insert into member
values('admin', 'admin', '���Ʋ���������', 'admin', '����', '70-03-17', '010-7777-7777');

insert into boards(category, title, nickname, picture, contents)
values('tip', '�Ʊ��������1 - ����1�������� 3~4��������', '���Ʋ���������','', '- �������� �ڽ��� �䱸�� �ǻ縦 ǥ���ϴ� �ܰ��Դϴ�.
- ���ƻ����� ���� ��ǥ���� ������ ������ �Ǵ� �ñ��̱⵵ �մϴ�.
- Ư���� �̻��� ���� ��쿡�� ������ ��ġ�� �ʱ⵵ �մϴ�.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '�Ʊ��������2 - ���� 6��������', '���Ʋ���������','', '- ������ �������� ������ ������ ��찡 �����ϴ�.
- ������ Ÿ���� �����ϰ� �Ǹ鼭 ���������� ���� ������ ��������ϴ�.
- ����ģ ȯ���� ��ȭ�� �������� ���� ���̰� ��� ������ �Ǳ⵵ �ؿ�.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '�Ʊ��������3 - �� ��������', '���Ʋ���������','', '- ������̳� ���� ���� ������ ��� ��찡 �����ϴ�.
- ���� ��ü���� ������ ���� ������ �Ͷ߸��� ��찡 �����Ƿ�, ��� ���°��� ������ �� ���캼 �ʿ䰡 �ֽ��ϴ�.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '�Ʊ��������3 - �� ���ĺ���', '���Ʋ���������','', '- �Ʊ��� �ھư� �����ϱ� �����ϸ鼭 ȭ�� ������ �������� ǥ���մϴ�.
- �ڽ��� �ǻ�� ������ ǥ���ϱ� ����ﶧ�� �������� ��Ÿ���⵵ �մϴ�.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '����', '���Ʋ���������','', '- �Ż��ƿ��� ���� ���̴� ��������� ��������� �ڿ��� �������� ���̹Ƿ� �ð��� �ΰ� ���Ѻ�����.
- ���Ҹ� ������ �� �ʿ䰡 �����ϴ�
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '��Ų�±�', '���Ʋ���������','', '- ��Ų�±״� �� ���� ���� Ȥ ���� ������, ��Ų�±׳� ���Ҵ��� ��� ġ���ؼ� ���� �� �� �ֱ� ������ ũ�� �������� �ʾƵ� �˴ϴ�.
- �ٸ� ��Ų�±״� �������� ���̶�� ���������� ������ ������ �����ϴ°� �����ϴ�.
- �������� �� �Ʊ��� �͸� �ǵ帮�� �Ǵ� ��찡 ���ϱ� ������ �ƱⰡ �������ϰ� ��Ʈ������ ���� �� �ֱ� �����Դϴ�.
- ���Ҵ�� �߰����� �� ���� �� ���� �����ϴ°� �����ϴ�.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '�Ʊ� �ȴ¹�', '���Ʋ���������','', '- �Ʊ⸦ ���� ������ ���� �����ؾ��ϴ� �κ��� ���Դϴ�.
- ��õ���� �ǵ帮�� �ʵ��� �����ϰ� �չٴ��� �̿��� �����̸� �����ݴϴ�.
- ���� ���� �������� ������ �����ְ� �Ʊ⸦ ���������� �հ����� ���� ���� �ʾƾ� �մϴ�.
* ��õ�� : �Ӹ��� ���� ����κ�
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '������ ��ȯ', '���Ʋ���������','', '- �����͸� ���� �Ʊ� �ٸ��� ���ʸ� �����ʰ� ���ʴٸ��� ����ݴϴ�.
- ���ʸ� ��� �ƱⰡ ��� �� �ֽ��ϴ�.
- ��½ ���ø��⺸�ٴ� ��¦ ����� �δٸ��� ����ݴϴ�.
- �Ʊ⿡ ���� ������ �Ʊ���� ������ ������ �����ݴϴ�.
- �����͸� ���ڰ� ���⺸�ٴ� ��ǳ�� �ߵǰ� �混�ϰ� ä���ݴϴ�.
* �Һ� : �ı��� �ʾƵ� �˴ϴ�.
* �뺯 : �⺻������ ���� �İ��ݴϴ�.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', 'Ʈ�� ��Ű��', '���Ʋ���������','', '- ������ ���� �Ʊ�� Ʈ���Ҹ��� ���� �ʱ⶧���� 10~15�� ���� Ʈ���� �� �����ּ���.
- Ʈ���� �����ص� �ɾƼ� �ص� �������ϴ�.
- �Ϲ������� ���� ������ �Ʒ��� ����ø��� ��ڿ� �ָ� ������ �並 �� �ϴ� ���̴� �ձ۰� �����ּ���.
- ���� �Ŀ��� ������ ���� �ٴ����� ���� �����ּ���.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '�Ż��� ����', '���Ʋ���������','', '- �Ż��ư� ������ �԰� �Կ����°��� �������Դϴ�.
- ������ ���� 2�� ���ĺ��ʹ� �����ø��� �м� �並 �ϰų� ü�������� �ȵǴ� ��쿡�� ������ ���� �� �ֽ��ϴ�.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '������', '���Ʋ���������','', '- �Ʊ��� ������ ���� ���� ������ �ϳ��̸� ü���� �������� �� �������� �մϴ�.
- �����͸� Ȯ���ϰ� ���ڸ� �����ִ°� ���� ȿ�����̸� �׷��� ������ �ʴ´ٸ� ��¦ ������ ���شٰų� ���� �Կ��ݴϴ�.
- �Ż��� 3����Ʈ (Ʈ��+�Կ���+������)�� �ʹ����� ���� �����̴� ��Ȳ�������� �����ϰ� ��ó�ؿ�.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '�ƱⰡ �����ϴ� ȯ��', '���Ʋ���������','', '* �µ� : 20~22�� �ִ�24��
* ���� : 50-60%
* ���� : 60foot candle
* ���� : 80 DB���� (�ϻ��� ��ȭ �Ҹ� ����)
- �Ʊ�� ���� ���� �ÿ��Ѱ� �����ؿ�.
- �Ż��Ƹ� Ű��ٰ� ������ �µ��� �ʹ� ���̴� ���� �Ʊ⿡�� ���� �ʽ��ϴ�.
- ����� ����ǳ�� �����̶�� ���� ���� ������ ���԰� ����縻�� �Ŵ� ������ ����� ü���� �����ּ���
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '�ٷ� ������ �����ϴ� 3����', '���Ʋ���������','', '* ���(119)
* ����(��ȣ��)
* ��(3���� �̳��� �Ʊ�, 38�� �̻��� ��)
- 3���� �̳��� �Ʊ�� �ݵ�� ó�� �Ͽ� �ؿ����� ����ϼ���.
- �ƱⰡ ���� ���� 119�� �θ��ų� �������� �̵��߿��� �Ʊ��� ���� �̿¼�(�������� ��)�� �۾��ּ���.
- ������ ���� ü�� �µ��� �� �����ֱ� ������ �ݵ�� �������� ���� ����ؾ� �ϸ� ���ݾ� �۾��ֱ⺸�ٴ� ũ��ũ�� �۾��ּ���.
- Ư�� �� ��, ��, �ܵ����, ��Ÿ����, ���� ���� �λ� ���� ������ ���������� �۾���� ���� ������ �ֽ��ϴ�.
');
select * from boards where category="tip" order by board_no desc;

--#----------------------------------------------------------------------------------------#
