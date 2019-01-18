
drop table better;
drop table pitcher;


create table better (
	name 		varchar2(20) 	not null,  		 --선수이름
    age         NUMBER          DEFAULT 0,       --나이
	team		varchar2(50) 	not null, 		 --팀명
	year 	    NUMBER 	        DEFAULT 0,  	 --연도
	game 		NUMBER 	        DEFAULT 0, 		 --게임수
	avg 		NUMBER          DEFAULT 0,       --타율
    hit         NUMBER 	        DEFAULT 0,       --안타
    hr          NUMBER 	        DEFAULT 0,       --홈런
    rbi         NUMBER          DEFAULT 0,       --타점
    sb          NUMBER 	        DEFAULT 0,        --도루
    position	varchar2(50)	not null,		--포지션
    url			varchar2(300)	not null		--사진주소
);
insert into better (name, age, team, year, game, avg, hit, hr, rbi, sb,position,url)
values ('오지환', 29, 'LG트윈스',2017, 107, 0.272 ,91,8,39,10,'내야수(우투좌타)','./resources/image/lg02.jpg');

create table pitcher (
	name 		varchar2(20) 	not null,  		--선수이름
    age         NUMBER          DEFAULT 0,      --나이
	team		varchar2(50) 	not null, 		--팀명
	year 	    NUMBER 	        DEFAULT 0,  	--연도
	era 		NUMBER 	        DEFAULT 0, 		--게임수
	win 		NUMBER 	        DEFAULT 0,      --타율
    lose        NUMBER          DEFAULT 0,      --홈런
    save        NUMBER 	        DEFAULT 0,      --타점
    hold        NUMBER 	        DEFAULT 0,      --도루
    so          NUMBER 	        DEFAULT 0,      --삼진
    position	varchar2(50)	not null,		--포지션
    url			varchar2(300)	not null		--사진주소
);

insert into pitcher (name, age, team, year, era, win, lose, save, hold, so,position,url)
values ('차우찬', 32, 'LG트윈스',2017, 28, 10,7,0,0,157,'투수(좌투좌타)','./resources/image/lg23.jpg');

commit;
