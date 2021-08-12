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
title varchar(100) not null, nickname varchar(20) not null,
picture varchar(2000), contents varchar(3000) not null,
indate datetime default now(),
primary key(board_no));


--# 댓글 테이블
create table comments
(comment_no int not null auto_increment, board_no int not null,
nickname varchar(20) not null, contents varchar(1000) not null,
likes int default 0,
primary key(comment_no));

--# 육아일기 테이블
create table diary
(id varchar(12) not null, diary_no int not null auto_increment, baby_no int not null,
title varchar(100) not null, contents varchar(3000) not null,
diary_data varchar(50), picture varchar(2000),
primary key(diary_no));

--# 아기상태 테이블 (condition - hungry/pup/burping/cold_hot 이렇게 4종류 데이터 들어갈거임!)
--## condition을 FK로 할것
create table babycondition
(condition_num int not null auto_increment,
id varchar(20) not null,
 conditions varchar(20) not null,
 condition_date datetime default now(), 
 primary key(condition_num));

--# 해결책 테이블
create table solution
(conditions varchar(20) not null,
exp varchar(4000) not null, 
solu varchar(4000) not null,
primary key(conditions));

--#----------------------------------------------------------------------------------------#

--# 가데이터 삽입 및 확인

select * from member;

select * from boards;


select * from comments;

select * from diary;

select * from babycondition;

select * from solution;

select * from boards order by board_no desc;

select * from boards where category="tip" order by board_no desc;

insert into babycondition (id, conditions) VALUES('mod101', 'dc');

insert into member
values('test', '1234', '초보맘', '송채연', '여자', '98-09-27', '010-1234-5678');
insert into member
values('tt', 'tt', '닉넴tt', '이름tt', '남자', '92-05-20', '010-1111-1111');


--#----------------------------------------------------------------------------------------#

--#  hu(배고픔) bu (트름) ti(졸림) dc(기저귀)
insert into solution
values('hu','- 배가 고파서 우는 아기들은 으~앵에 하며 울기 시작합니다.<br>
- 크고 강한 울음소리를 냅니다.<br>
- 힘껏 젖을 빨려 할때의 입모양을 하여 그런 소리가 나요.<br>
- 젖을 주지 않으면 울음소리가 더욱 더 격렬해져요.<br>
- 아기는 배가 고프면 정말 고통스러워해요.<br>
- 울기 전 목구멍 안에서 기침을하는 듯한 소리를 냅니다.<br>
- 짧게 울다가 길고 지속적인 울음으로 바뀝니다.<br>',
'* 젖을 아기 입술에 한방울 떨어뜨려 주세요.<br>
- 젖꼭지를 아기 입에 대면 반사적으로 아기가 입을 벌리는데 이때 바로 물리지 마시고 젖을 한 방울 떨어뜨려 젖냄새를 맡게 해주세요. 냄새를 맡고
아기가 입을 크게 벌리면 그때 젖을 물려서 더 깊게 물릴 수 있습니다.<br>
- 손가락을 써 아기 입을 떨어트리세요. 젖을 빠는 아기의 입은 진공상태같아서 잘 빠지지 않습니다. 아기 입을 떨어트릴 때에는 억지로 하지 마시고 손가락을 아기입 가장자리에 밀어 넣고 아기의 고개를 살짝 옆으로 돌려주면 쉽게 뺄 수 있습니다.<br>
- 수면제 효과의 물젖 : 젖을 먹기 시작한 처음 5-10분 동안은 물젖이 나옵니다. 물젖에는 수면제 효과가 있는 옥시토신, 변 배출을 많이하게 하는 수분과 유당이 풍부합니다. 그래서 아기가 10분정도 먹다가 잠들기도 합니다. 만약 아기가 너무 변을 자주 본다면 물젖을 미리 조금 짜고 수유하면 됩니다. 더 잘 재우려면 후반부까지 먹이세요. 15-18분이 지나면 나오는 모유는 지방이 풍부하고 걸쭉합니다. 갈로리가 높아서 아기의 몸무게를 높이고 쑥쑥 자라게 해줍니다. 만약 아기가 초반
부 물젖만 먹고 잠들어 버리면 후반부 모유의 지방을 섭취하지 못해 자다가도 더 자주 깨고 더 자주 먹고싶어 할수 있어요.<br>');

insert into solution
values('bu','- 트림을 하고 싶은 아기들은 에~-에~에 하고 자주 짧은 간격으로 같은 소리로 웁니다.<br>
- 에ㅎ~하는 소리로 시작하며 이 소리는 입에 갇힌 공기를 내보내려는 소리입니다.<br>
- 꺽꺽거리는 것처럼 짧은 울음소리를 냅니다.<br>',
'* 수유 중간중간 트림을 시켜요.<br>
- 분유수유를 한다면 아기가 분유를 반쯤 마셨을 때 잠깐 트림시켜주세요. 모유수유의 경우 가슴을 바꿀때 쉬면서 트림을 시켜주시면 됩니다.<br>
- 잠들었을땐 얼굴을 옆으로 돌려주세요. 아기가 잠이든 경우 토할 경우를 대비해 얼굴을 옆으로 향하게 돌리고 앞은 베개를 머리에 받쳐 상체를 높게 해 주세요.<br>
- 트름을 시킬 때는 아기를 세워 안아주세요. 음식물과 공기 먼저 분리해서 공기만 내보내게 해야 합니다. 그러려면 세워 안는 것이 좋습니다. 등을 쓰다듬으면서 등뼈왼쪽의 약간 오목한 부위를 누르듯 살살 만져 주세요.<br>');

insert into solution
values('ti',' - 졸린 아기의 울음 소리는 오오아- 하고 하품과 비슷합니다.<br>
- 작고 느리게 시작해 점차 커지는 소리입니다.<br>
- 입을 크게 벌리고 울어요.<br>
- 울다 지쳐 잠드는 경우도 많습니다.<br>
- 칭얼대면서 울기 시작하며 입모양을 동그랗게 오므려 "0"자 모양을 내며 웁니다.<br>
- 심하게 칭얼칭얼대며 눈을 비비는 행동을 하면서 울음을 냈을 경우 부모가 안아서 재워주기를 바라는 의사표현이예요.<br>',
'* 1개월 이전부터 밤은 어둡게, 낮은 밝게.<br>
- 밤에는 자고 낮에는 논다는 것을 가르쳐 줘야 합니다. 할 수 있으면 낮에는 많이 먹고 밤에는 적게 먹게 의도적으로 조절을 시작해 볼수 있어요.<br>
* 생후 6주에는 수면교육을 시작해요.<br>
- 수면교육은 초기에 수면 인식을 가르치는 것이 가장 중요합니다. 매일 같은 시간에 같은 분위기로 이야기를 들려주거나 노래를 불러주거나 목욕을 시켜주어 이렇게 하면 잠을 자야한다는 것을 몸에 익히게 해 주세요.<br>
* 재우면서 먹이지 마세요.<br>
- 아기가 6주차가 되면 젖을 물려 재우거나 안아 재우는 것은 피해주세요. 항상 안아 재우면 혼자 잠들기 어렵습니다. 잠이 들기전에 눕혀 주세요.<br>');

insert into solution
values('dc','- 아기는 기분이 불쾌할 경우에 목젖이 갈라지는 듯한 소리를 내게 됩니다. 혹시 끄액끄액 하는 울음 소리가 난다면 스트레스를 받았다는 신호이니 혹시 덥고 추운건 아닌지, 누워있는 상태가 불편한지 꼭 살펴주세요.<br>
- 아기는 아프면 헝헝헝 하는 소리를 내게 되요. 발열이 있꺼나 혹은 넘어지고 다치는 경우에 자지러지듯이 격렬하게 우는 경우가 있어요. 아기가 아프거나 괴로워서 울 경우 길고 높은 비명을 지르게 됩니다. 엄마가 듣기에는 가장 날카로운 소리로 느껴지게 됩니다.<br>',
'* 아무런 고통이 없는 것 같은데 계속 울음을 보인다면 아기의 체온이나 몸 상태를 체크해보고 아무런 이상(발열, 배소변 등)이 없다면 아기를 안고 가볍게 흔들며 토닥여주세요.<br>
- 안아주는 방법<br>
1. 아기를 안을 때에는 가장 조심해야하는 부분이 목입니다. 대천문을 건드리지 않도록 조심하고 손바닥을 이용해 엉덩이를 받쳐준다.<br>
2. 목은 팔의 근육으로 살포시 걸쳐주고 아기를 안을떄에는 손가락에 힘을 주지 않아야 합니다.<br>
- 기저귀 가는 법(배소변 경우)<br>
1. 평평하고 부드러운 곳 위에 아기를 눕혀 몸에 붙지 않게 기저귀를 제거합니다.<br>
2. 아기용 물티슈로 생식기 부위를 앞에서 뒷 방향으로 깨끗하게 닦아 줍니다.<br>
3. 새 기저귀를 아기 밑에 깔고 깨끗한 천으로 두드리면서 말립니다.<br>
4. 기저귀 뒷부분의 테이프를 앞부분에 부착하여 기저귀를 너무 조이지 않게 고정합니다.<br>');


--#----------------------------------------------------------------------------------------#

--# 관리자 계정 하나 만들어서 육아꿀팁에 내용 넣을게요 (관리자 계정 회원탈퇴 하지마여!)
insert into member
values('admin', 'admin', '육아꿀팁관리자', 'admin', '여자', '70-03-17', '010-7777-7777');

insert into member
values('admin2', 'admin2', '관리자', 'admin2', '남자', '70-03-17', '010-8888-8888');

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

--#----------------------------------------------------------------------------------------#

--# 각 게시판 공지글
insert into boards(category, title, nickname, picture, contents)
values('free', '자유게시판 글작성 주의사항!!!', '관리자','', '- 게시글 하루 20개까지 작성 가능
- 같은 날짜에 중복 게시글(제목 또는 본문 내용 포함)은 3개까지 작성 가능');

insert into boards(category, title, nickname, picture, contents)
values('help', '도움요청 게시판 글작성 주의사항!!!', '관리자','', '- 게시글 하루 20개까지 작성 가능
- 같은 날짜에 중복 게시글(제목 또는 본문 내용 포함)은 3개까지 작성 가능');

insert into boards(category, title, nickname, picture, contents)
values('item', '용품추천 게시판 글작성 주의사항!!!', '관리자','', '- 게시글 하루 20개까지 작성 가능
- 같은 날짜에 중복 게시글(제목 또는 본문 내용 포함)은 3개까지 작성 가능
- 육아용품과 관계없는 제품등록은 불가
- 상품명 및 정보 작성 필수');

--#----------------------------------------------------------------------------------------#
