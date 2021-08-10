--#----------------------------------------------------------------------------------------#

--# 회원 테이블
create table member
(id varchar(12) not null, pw varchar(20) not null,
nickname varchar(20) not null, name varchar(50) not null,
gender varchar(50) not null, birth varchar(50) not null,
tell varchar(50) not null,
primary key(id));

--# 아기 테이블
create table baby
(baby_num int not null auto_increment, id varchar(12) not null,
baby_name varchar(50) not null, baby_birth varchar(50) not null,
baby_gender varchar(50) not null, 
primary key(baby_num));

--# 게시판 테이블
create table boards
(board_no int not null auto_increment, category varchar(50) not null,
title varchar(50) not null, nickname varchar(20) not null,
picture varchar(50), contents varchar(500) not null,
indate datetime default now(),
primary key(board_no));

--# 댓글 테이블
create table comments
(comment_no int not null auto_increment, board_no int not null,
nickname varchar(20) not null, contents varchar(500) not null,
likes int default 0,
primary key(comment_no));

--# 육아일기 테이블
create table diary
(id varchar(12) not null, diary_no int not null auto_increment, baby_no int not null,
title varchar(50) not null, contents varchar(1000) not null,
diary_data varchar(50), picture varchar(2000),
primary key(diary_no));

--# 아기상태 테이블 (condition - hungry/pup/burping/cold_hot 이렇게 4종류 데이터 들어갈거임!)
--## condition을 FK로 할것
create table babycondition
(condition_num int not null auto_increment,
id int not null,
 conditions varchar(20) not null,
 condition_date datetime default now(), 
 primary key(condition_num));

--# 해결책 테이블
create table solution
(conditions varchar(20) not null,
exp varchar(3000) not null, 
solu varchar(3000) not null,
primary key(conditions));

--#----------------------------------------------------------------------------------------#

--# 가데이터 삽입 및 확인

insert into member
values('test', '1234', 'user', '스마트', '남자', '00-01-01', '010-1111-1111');

select * from boards;

select * from member;

select * from comments;

select * from diary;


select * from babycondition;

select * from solution;

insert into comments
values('4','4','꼬꼬','가나다라마바사아자차카파타하가갸거겨고교구규구구구구구구구구구구구구구','3');
insert into comments
values('2','2','꼬꼬오오오오','응애응애애애애애애애애','2');
insert into comments
values('3','3','흐어어어얽','하기싫당','1');

select * from boards order by board_no desc;


insert into solution
values('hungry','흐규흐규','맘마줘라');
insert into solution
values('pup','호엥호엥','기저귀 내놔라');
insert into solution
values('burping','흐엉흐엉','꺼어어억');
insert into solution
values('cold_hot','호롤롤로','난방켜');


--#----------------------------------------------------------------------------------------#

--# 관리자 계정 하나 만들어서 육아꿀팁에 내용 넣을게요 (관리자 계정 회원탈퇴 하지마여!)
insert into member
values('admin', 'admin', '육아꿀팁관리자', 'admin', '여자', '70-03-17', '010-7777-7777');

insert into boards(category, title, nickname, picture, contents)
values('tip', '아기울음이유1 - 생후1개월에서 3~4개월까지', '육아꿀팁관리자','', '- 울음으로 자신의 요구와 의사를 표현하는 단계입니다.
- 영아산통이 가장 대표적인 울음의 원인이 되는 시기이기도 합니다.
- 특별한 이상이 없는 경우에도 울음을 그치지 않기도 합니다.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '아기울음이유2 - 생후 6개월부터', '육아꿀팁관리자','', '- 울음의 원인으로 공포를 느끼는 경우가 많습니다.
- 엄마와 타인을 구분하게 되면서 낯가림으로 인해 울음이 많아진답니다.
- 지나친 환경의 변화는 낯설음을 느껴 아이가 우는 원인이 되기도 해요.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '아기울음이유3 - 돌 이전까지', '육아꿀팁관리자','', '- 배고픔이나 졸음 등의 이유로 우는 경우가 많습니다.
- 또한 신체적인 아픔을 느껴 울음을 터뜨리는 경우가 많으므로, 어디 아픈곳은 없는지 잘 살펴볼 필요가 있습니다.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '아기울음이유3 - 돌 이후부터', '육아꿀팁관리자','', '- 아기의 자아가 성장하기 시작하면서 화난 감정을 울음으로 표현합니다.
- 자신의 의사와 감정을 표현하기 어려울때에 울음으로 나타내기도 합니다.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '반점', '육아꿀팁관리자','', '- 신생아에게 흔히 보이는 몽고반점과 연어반점은 자연히 없어지는 것이므로 시간을 두고 지켜보세요.
- 섣불리 병원에 갈 필요가 없습니다
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '스킨태그', '육아꿀팁관리자','', '- 스킨태그는 귀 옆에 나는 혹 같은 것으로, 스킨태그나 설소대의 경우 치료해서 제거 할 수 있기 때문에 크게 걱정하지 않아도 됩니다.
- 다만 스킨태그는 모유수유 중이라면 모유수유가 완전히 끝나고 제거하는게 좋습니다.
- 모유수유 중 아기의 귀를 건드리게 되는 경우가 흔하기 때문에 아기가 불편해하고 스트레스를 받을 수 있기 때문입니다.
- 설소대는 발견했을 때 가능 한 빨리 제거하는게 좋습니다.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '아기 안는법', '육아꿀팁관리자','', '- 아기를 안을 때에는 가장 조심해야하는 부분이 목입니다.
- 대천문을 건드리지 않도록 조심하고 손바닥을 이용해 엉덩이를 받쳐줍니다.
- 목은 팔의 근육으로 살포시 걸쳐주고 아기를 안을때에는 손가락에 힘을 주지 않아야 합니다.
* 대천문 : 머리와 목의 연결부분
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '기저귀 교환', '육아꿀팁관리자','', '- 기저귀를 갈때 아기 다리를 한쪽만 들지않고 양쪽다리를 들어줍니다.
- 한쪽만 들면 아기가 놀랄 수 있습니다.
- 번쩍 들어올리기보다는 살짝 슬며시 두다리를 들어줍니다.
- 아기에 따라 예민한 아기들은 옆으로 돌려서 갈아줍니다.
- 기저귀를 예쁘게 차기보다는 통풍이 잘되게 헐렁하게 채워줍니다.
* 소변 : 씻기지 않아도 됩니다.
* 대변 : 기본적으로 물로 씻겨줍니다.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '트림 시키기', '육아꿀팁관리자','', '- 모유를 먹은 아기는 트림소리가 나지 않기때문에 10~15분 동안 트림을 꼭 시켜주세요.
- 트림은 서서해도 앉아서 해도 괜찮습니다.
- 일반적으로 등을 위에서 아래로 쓸어올리듯 토닥여 주면 되지만 토를 잘 하는 아이는 둥글게 돌려주세요.
- 수유 후에는 오른쪽 뺨이 바닥으로 향해 눕혀주세요.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '신생아 역류', '육아꿀팁관리자','', '- 신생아가 분유를 먹고 게워내는것은 정상적입니다.
- 하지만 생후 2주 이후부터는 수유시마다 분수 토를 하거나 체중증가가 안되는 경우에는 문제가 있을 수 있습니다.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '딸꾹질', '육아꿀팁관리자','', '- 아기의 딸꾹질 또한 흔한 증상중 하나이며 체온이 떨어졌을 때 딸꾹질을 합니다.
- 기저귀를 확인하고 모자를 씌워주는게 가장 효과적이며 그래도 멈추지 않는다면 살짝 수유를 해준다거나 물을 먹여줍니다.
- 신생아 3종세트 (트림+게워냄+딸꾹질)는 너무나도 흔한 증상이니 당황하지말고 유연하게 대처해요.
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '아기가 좋아하는 환경', '육아꿀팁관리자','', '* 온도 : 20~22도 최대24도
* 습도 : 50-60%
* 조도 : 60foot candle
* 소음 : 80 DB이하 (일상적 대화 소리 이하)
- 아기는 생각 보다 시원한걸 좋아해요.
- 신생아를 키운다고 집안의 온도를 너무 높이는 것은 아기에게 좋지 않습니다.
- 산모의 산후풍이 걱정이라면 얇은 옷을 여러겹 껴입고 수면양말을 신는 것으로 산모의 체온을 높여주세요
');
insert into boards(category, title, nickname, picture, contents)
values('tip', '바로 병원에 가야하는 3가지', '육아꿀팁관리자','', '* 경련(119)
* 질식(무호흡)
* 고열(3개월 이내의 아기, 38도 이상의 열)
- 3개월 이내의 아기는 반드시 처방 하에 해열제를 사용하세요.
- 아기가 고열이 나면 119를 부르거나 병원으로 이동중에는 아기의 몸을 미온수(미지근한 물)로 닦아주세요.
- 차가운 물은 체내 온도를 더 높여주기 때문에 반드시 미지근한 물을 사용해야 하며 조금씩 닦아주기보다는 크게크게 닦아주세요.
- 특히 귀 뒤, 목, 겨드랑이, 사타구니, 열이 많은 두상 등의 부위는 집중적으로 닦아줘야 열이 내릴수 있습니다.
');
select * from boards where category="tip" order by board_no desc;

--#----------------------------------------------------------------------------------------#
