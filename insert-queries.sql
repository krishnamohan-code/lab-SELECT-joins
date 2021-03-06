insert into role(id,name)values(1,'designer');
insert into role(id,name)values(2,'guide');

select * from role;

insert into skill(id,description,name)values(1,'self learning','learn');
insert into skill(id,description,name)values(2,'technical skills','coding');
select * from skill;

insert into post_type(id,name)values(1,'business');
insert into post_type(id,name)values(2,'business');
select * from post_type;


insert into department(id,name)values(1,'bpo');
insert into department(id,name)values(2,'IT');
select * from department;

insert into degree(id,department_id,name)values(1,1,'EEE');
insert into degree(id,DEPARTMENT_ID,name)values(2,2,'ECE');
select * from degree;
insert into profile(id,address,batch,degree_id,designation,gender)values(1,'London','En',1,'HR','Male');
insert into profile(id,address,batch,degree_id,designation,gender)values(2,'Chennai','For',2,'Manager','Female');

insert into higher_degree(id,degree_name,university_name,profile_id)values(1,'BE','MIT',1);
insert into higher_degree(id,degree_name,university_name,profile_id)values(2,'BE','STANFORD',2);


insert into EXPERIENCE(id,COMPANY_NAME,CURRENTVALUE,ENDDATE,STARTDATE,PROFILE_ID)values(2,'CTS',1,TO_DATE('2008/11/11','YYYY/MM/DD'),TO_DATE('2019/11/11','YYYY/MM/DD'),2);
select * from EXPERIENCE;

insert into project(id,name,number_of_members,profile_id,short_description)values(1,'Alumini management',10,1,'for school and college');
insert into project(id,name,NUMBER_OF_MEMBERS,PROFILE_ID,SHORT_DESCRIPTION)values(2,'Library management',11,2,'for school and college');
select * from project;

insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(1,'abcd@efgh.com','abcd','efgh',9884642005,1,1,'abcdefgh');
insert into USER_NEW(id,EMAILID,name,password,PHONENUMBER,PROFILE_ID,ROLE_ID,USERNAME)values(2,'ijkl@mnop.com','ijkl','mnop',9845621745,2,2,'ijklmnop');
select * from user_new;
insert into querytable(id,content,dateof,parent_id,user_id)values(1,'Alumini management',TO_DATE('2008/11/11','YYYY/MM/DD'),1,1);
insert into QUERYTABLE(id,content,DATEOF,PARENT_ID,USER_ID)values(2,'Library management',TO_DATE('2008/11/19','YYYY/MM/DD'),2,2);
select * from querytable;
 insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(1,TO_DATE('2008/11/11','YYYY/MM/DD'),'Alumni meet','OBA','ProGrad',1);
 insert into EVENT(id,DATEOF,DESCRIPTIONVALUE,INVITATION,name,ORGANISER_ID)values(2,TO_DATE('2008/11/11','YYYY/MM/DD'),'Library opening','member','FACEPrep',2);
select * from event;