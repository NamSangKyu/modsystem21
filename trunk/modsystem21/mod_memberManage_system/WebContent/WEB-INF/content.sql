create table content(
	no int auto_increment primary key, 
	title varchar(40),
	writer varchar(40),
	date varchar(40),
	manager varchar(40),
	content varchar(500)
)
select * from content;
delete from content;
insert into content(sname,mname,gname,time,mcontent,gcontent,ea,subject,week) values('a','b','c','1000','a1','b2',4,'asd',2);

create table employee(
	id varchar2(40) primary key,
	pass varchar2(40),
	eId varchar2(40),
	name  varchar2(40),
	dept  varchar2(40),
	position  varchar2(40)
)

insert into EMPLOYEE values('nam2626','1234','nam2626@gmail.com','남상규','교육부','강사')

create table content(
	no number primary key,
	title varchar2(40),
	writer varchar2(40),
	date varchar2(40),
	manager varchar2(40),
	content varchar2(500)
)