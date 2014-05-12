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

insert into EMPLOYEE values('nam2626','1234','nam2626@gmail.com','남상규','교육부','강사')
select * from employee
