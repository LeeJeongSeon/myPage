--****************************************************************************************************************************************************--
-- 테이블 별 분류

-- 회원 테이블 -----------------------------------------------------------------------------------------------------------------------------------

-- 테이블 삭제
drop table mypage_member;

-- 테이블 생성 (아이디, 비밀번호, 이름, 이메일, 소개글, 성별)
create table mypage_member (
userid varchar2(50) not null primary key, 
passwd varchar2(50) not null,
name varchar2(50) not null,
email varchar2(100) not null,
introduce varchar2(300) default '안녕하세요!',
admin varchar2(10) default 'false' not null
);

-- 아이디 중복확인
select count(*) from mypage_member where userid='kim123';

-- 회원가입
insert into mypage_member (userid, passwd, name, email, introduce, admin)
values ('admin', '1234', '관리자', 'admin12@gmail.com', '관리자입니다.', 'true');
insert into mypage_member (userid, passwd, name, email)
values ('kim123', '12345', '김아무개', 'kim123@gmail.com');
insert into mypage_member (userid, passwd, name, email, introduce)
values ('-', '-', '(알 수 없음)', '-', '-');

-- 회원 명단 열람
select * from mypage_member;

-- 로그인 
select count(*) from mypage_member 
where userid='kim123' and passwd='12345';

-- 정보 수정 전 비밀번호 재 입력
select userid from mypage_member
where passwd='1234';

-- 회원 정보 수정
update mypage_member
set passwd='1234', name='김이박', email='kim123@gmail.com'
where userid='kim123';

-- 회원 탈퇴
delete from mypage_member where userid='park';

-- 데이터 비우기
delete from mypage_member;

commit;
-- 게시글 테이블 ----------------------------------------------------------------------------------------------------------------------------------

-- 테이블 삭제
drop table mypage_post;

-- 테이블 생성
--(게시글 번호, 아이디, 이름, 제목, 내용, 게시일, 조회수, ip 번호, 첨부파일 이름, 첨부파일 용량, 다운로드수, 추천수, 수정여부)
create table mypage_post (
num number not null primary key,
userid varchar2(50) not null references mypage_member(userid),
name varchar2(50) not null,
subject varchar2(50) not null,
content clob not null,
reg_date date default sysdate,
readcount number default 0,
ip varchar2(30) not null, 
filename varchar2(200) default '-',
filesize number default 0, 
downcount number default 0,
recommendcount number default 0,
edited varchar2(2) default 'N'
);

-- 게시글 쓰기
insert into mypage_post (num, userid, name, subject, content, ip) 
values ((select nvl(max(num)+1,1) from mypage_post), 'kim123', (select name from mypage_member where userid='kim123'), 
'게시물', '테스트용 게시물입니다.', '127.0.0.1');

--게시글 상세보기
select * from mypage_post
where num=1;

select * 
		from (
			select A.*, rownum as rn
			from (
				select num, userid, name, subject, content, reg_date, readcount, ip, filename, filesize, downcount, recommendcount, edited
				,(select count(*) from post_comment 
				where post_num=num) comment_count
				from mypage_post
				order by num desc) A 
			) where rn between 1 and 5;

-- 게시글 목록 열람(최신순)
select * from mypage_post
order by num desc;
-- 게시글 목록 열람(날짜순)
select * from mypage_post
order by num;
-- 게시글 목록 열람(조회수 순)
select * from mypage_post
order by readcount desc;
-- 게시글 목록 열람(추천수 순)
select * from mypage_post
order by recommendcount desc;

-- 게시글 검색(글쓴이)
select * from mypage_post 
where name like '%시%';
-- 게시글 검색(제목)
select * from mypage_post 
where subject like '%시%';
-- 게시글 검색(글쓴이+제목)
select * from mypage_post 
where name like '%시%' or subject like '%시%';

-- 전체 게시글 개수
select count(*) from mypage_post;
-- 내 게시글 개수
select count(*) from mypage_post where userid='kim123';

-- 내 게시글 보기
select * from mypage_post
where userid='kim123';

--게시글 수정
update mypage_post 
set subject='테스트용 게시물', content='게시물 내용을 변경합니다. ', edited='Y'
where num=1;

-- 게시글 조회수 증가 처리
update mypage_post set readcount=readcount+1
where num=1;
-- 게시글 다운로드수 증가 처리
update mypage_post set downcount=downcount+1
where num=1;
-- 게시글 추천수 증가 처리
update mypage_post set recommendcount=recommendcount+1
where num=1;
-- 게시글 추천수 감소 처리
update mypage_post set recommendcount=recommendcount-1
where num=1;
-- 게시글 댓글수 증가 처리
update mypage_post set commentcount=commentcount+1
where num=1;
-- 게시글 댓글수 감소 처리
update mypage_post set commentcount=commentcount-1
where num=1;

-- 게시글 삭제(탈퇴 할 때)
delete from mypage_post where userid='kim123';
-- 게시글 삭제(일반 삭제)
delete from mypage_post where num=1;

--데이터 비우기
delete from mypage_post;

commit;

-- 댓글 테이블 ------------------------------------------------------------------------------------------------------------------------------------

-- 테이블 삭제
drop table post_comment;

-- 테이블 생성 (댓글번호, 아이디, 이름, 댓글, 댓글 달린 게시물번호, 작성일, 추천수, 대댓수, 수정여부)
create table post_comment (
num number not null primary key,
userid varchar2(50) not null references mypage_member(userid),
name varchar2(50) not null,
content varchar2(2000) not null,
post_num number not null references mypage_post(num),
reg_date date default sysdate,
recommendcount number default 0,
edited varchar2(2) default 'N'
);

select num, userid, name, subject, content, reg_date, readcount, ip, filename, filesize, downcount, recommendcount, edited
		,(select count(*) from post_comment where post_num=num) comment_count
		from mypage_post
		where subject like '%게%'
		order by num desc;

-- 댓글 달기
insert into post_comment (num, userid, name, content, post_num) 
values ((select nvl(max(num)+1,1) from post_comment), 'kim123', 
(select name from mypage_member where userid='kim123'), '여러분 모두 만관부!', 1);

-- 특정 게시물의 댓글 목록 열람
select * from post_comment where post_num=1;

-- 특정 게시물의 댓글 수
select count(*) from post_comment where post_num=1;

-- 내 댓글 보기
select * from post_comment
where userid='kim123';

select * 
		from (
			select A.*, rownum as rn
			from (
				select num, userid, name, subject, content, reg_date, readcount, ip, filename, filesize, downcount, recommendcount, edited
				,(select count(*) from post_comment 
				where post_num=p.num) commentcount
				from mypage_post p
				order by num desc) A
			) where rn between 1 and 5;

select count(*) from post_comment p, mypage_post m
				where post_num=m.num;
-- 댓글 수정
update post_comment 
set content='여러분 모두들 만관부^^!', edited='Y'
where num=1;

-- 댓글 추천수 증가 처리
update post_comment set recommendcount=recommendcount+1
where num=1;
-- 댓글 추천수 감소 처리
update post_comment set recommendcount=recommendcount-1
where num=1;
-- 대댓글수 증가 처리
update post_comment set commentcount=commentcount+1
where num=1;
-- 대댓글수 감소 처리
update post_comment set commentcount=commentcount-1
where num=1;

-- 댓글 삭제(탈퇴 할 때)
delete from post_comment where userid='kim123';
-- 댓글 삭제(게시글 삭제 할 때)
delete from post_comment where post_num=1;
-- 댓글 삭제(일반 삭제)
delete from post_comment where num=1;

--데이터 비우기
delete from post_comment;

commit;

--건의사항 테이블--------------------------------------------------------------------------------------------------------------------------------
drop table ask;

create table ask (
num number not null primary key,
subject varchar2(50) not null,
content varchar2(400) not null,
ask_date date default sysdate,
target varchar2(50) not null
);