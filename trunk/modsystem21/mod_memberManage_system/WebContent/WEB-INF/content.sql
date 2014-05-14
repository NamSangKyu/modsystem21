create table content(
	no int auto_increment primary key, 
	title varchar(40),
	writer varchar(40),
	date varchar(40),
	manager varchar(40),
	content varchar(500)
)
insert into content(title, writer,date,manager,content) values('글제목1','작성자','날짜','담당자1','내용');
insert into content(title, writer,date,manager,content) values('글제목2','작성자','날짜','담당자2','내용');
insert into content(title, writer,date,manager,content) values('글제목3','작성자','날짜','담당자3','내용');
insert into content(title, writer,date,manager,content) values('글제목4','작성자','날짜','담당자4','내용');
insert into content(title, writer,date,manager,content) values('글제목5','작성자','날짜','담당자5','내용');
insert into content(title, writer,date,manager,content) values('글제목6','작성자','날짜','담당자6','내용');
insert into content(title, writer,date,manager,content) values('글제목7','작성자','날짜','담당자7','내용');
insert into content(title, writer,date,manager,content) values('글제목8','작성자','날짜','담당자8','내용');
insert into content(title, writer,date,manager,content) values('글제목9','작성자','날짜','담당자9','내용');
insert into content(title, writer,date,manager,content) values('글제목10','작성자','날짜','담당자10','내용');
insert into content(title, writer,date,manager,content) values('글제목11','작성자','날짜','담당자11','내용');
insert into content(title, writer,date,manager,content) values('글제목12','작성자','날짜','담당자12','내용');
insert into content(title, writer,date,manager,content) values('글제목13','작성자','날짜','담당자13','내용');
select @RNUM, no, title, writer, date, manager, content from content, (select @RNUM:=0);
delete from content;
insert into content(sname,mname,gname,time,mcontent,gcontent,ea,subject,week) values('a','b','c','1000','a1','b2',4,'asd',2);
select * from content order by no asc limit 0,5
create table employee(
	id varchar2(40) primary key,
	pass varchar2(40),
	eId varchar2(40),
	name  varchar2(40),
	dept  varchar2(40),
	position  varchar2(40)
)
create table employee(
	id varchar(40) primary key,
	pass varchar(40),
	eId varchar(40),
	name  varchar(40),
	dept  varchar(40),
	position  varchar(40)
)
delete from employee
insert into EMPLOYEE values('nam2629',md5('1234'),'nam2626@gmail.com','남상규1','교육부','강사');
insert into EMPLOYEE values('nam2621',md5('1234'),'nam2626@gmail.com','남상규2','교육부','강사');
insert into EMPLOYEE values('nam2622',md5('1234'),'nam2626@gmail.com','남상규3','교육부','강사');
insert into EMPLOYEE values('nam2623',md5('1234'),'nam2626@gmail.com','남상규4','사업부','사원');
insert into EMPLOYEE values('nam2624',md5('1234'),'nam2626@gmail.com','남상규5','사업부','주임');
insert into EMPLOYEE values('nam2625',md5('1234'),'nam2626@gmail.com','남상규6','사업부','대리');
insert into EMPLOYEE values('nam2627',md5('1234'),'nam2626@gmail.com','남상규7','교육부','강사');
insert into EMPLOYEE values('nam2628',md5('1234'),'nam2626@gmail.com','남상규8','교육부','강사');
insert into EMPLOYEE values('nam2618',md5('1234'),'nam2626@gmail.com','남상규9','관리부','주임');
insert into EMPLOYEE values('nam2638',md5('1234'),'nam2626@gmail.com','남상규10','관리부','사원');
insert into EMPLOYEE values('nam2648',md5('1234'),'nam2626@gmail.com','남상규11','관리부','과장');
insert into EMPLOYEE values('nam1648',md5('1234'),'nam2626@hanmail.net','남상규11','관리부','과장');
insert into EMPLOYEE values('nam6648',md5('1234'),'nam2626@naver.com','남상규11','관리부','과장');
insert into EMPLOYEE values('nam5648',md5('1234'),'nam2626@gmail.com','남상규11','관리부','과장');
insert into EMPLOYEE values('nam4648',md5('1234'),'nam2626@gmail.com','남상규11','관리부','과장');
insert into EMPLOYEE values('nam3648',md5('1234'),'nam2626@gmail.com','남상규11','관리부','과장');
insert into EMPLOYEE values('nam2648',md5('1234'),'nam2626@gmail.com','남상규11','관리부','과장');
insert into EMPLOYEE values('nam2626',md5('1234'),'nam2626@gmail.com','남상규11','관리부','과장');
select * from employee
