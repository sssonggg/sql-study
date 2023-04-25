
create database spring;
use spring;


-- auto_increment : mysql, mariadb의 방언
-- 오라클의 시퀀스 기능. 자동으로 첫번쨰 인서트 데이터1
-- 순차적으로 1씩 증가하는 데이터를 자동으로 삽입.

create table person(
	id int(10) auto_increment,
	person_name varchar(50) not null,
	person_age int(3),
	constraint pk_person_id
	primary key (id)
);

select * from person;
