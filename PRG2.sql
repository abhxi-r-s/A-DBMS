create database marklist;
use marklist;

create table student(name varchar(30),student_number int(23),class varchar(20),major varchar(30));
create table course(course_name varchar(20),course_no varchar(20),credit_hr int,department varchar(20));
create table section(sec_id int,course_no varchar(20),sem varchar(20),year date,instructor varchar(20));
create table grade_report(student_no int,student_id int,grade varchar(20));
create table prerequisite(course_no varchar(20),prerequisite_no varchar(20));

insert into student values ('Smith',17,'1','CS'),('Brown',8,'2','CS');
insert into course values ('Computer Science','CS1310',4,'CS'),('Data Structures','CS3320',4,'CS'),('Discrete Mathematics','MATH2410',3,'MATH'),('Database','CS3380',3,'CS');
insert into section values (85,'MATH2410','Fall','07','King'),(92,'CS1310','Fall','07','Anderson'),(102,'CS3320','Spring','08','Knuth'),(112,'MATH2410','Fall','08','Chang'),(119,'CS1310','Fall','08','Anderson'),(135,'CS3380','Fall','08','Stone');
insert into grade_report values(17,112,'B'),(17,119,'C'),(8,85,'A'),(8,92,'A'),(8,102,'B'),(8,135,'A');
insert into prerequisite values('CS3380','CS3320'),('CS3380','MATH2410'),('CS3320','CS1310');

SELECT * FROM STUDENT;
SELECT * FROM COURSE;
SELECT * FROM SECTION;
SELECT * FROM PREREQUISITE;
SELECT * FROM GRADE_REPORT;
