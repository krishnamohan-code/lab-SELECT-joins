SELECT role.name,user_new.name
FROM role
JOIN user_new
ON role.id=user_new.id;


--2
select * from role join USER_NEW
on role.id=USER_NEW.id;
--3
select USER_NEW.name
from USER_NEW join role on role.id =USER_NEW.id;
--4
select USER_NEW.PHONENUMBER, USER_NEW.EMAILID, profile.BATCH, DEPARTMENT.name, profile.DESIGNATION, EXPERIENCE.COMPANY_NAME
from USER_NEW
inner join profile on  USER_NEW.id=profile.id 
inner join  degree on profile.DEGREE_ID = degree.id
inner join DEPARTMENT on degree.DEPARTMENT_ID = DEPARTMENT.id
inner join EXPERIENCE on profile.id = EXPERIENCE.PROFILE_ID
and user_new.name = 'PROGRAD' and experience.currentValue=3;

--5
select USER_NEW.name, SKILL.name 
from USER_NEW
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join SKILLS on profile.id = SKILLS.id
where role.name = 'Alumini';
--6
select user_new.name, experience.company_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join experience on user_new.id = experience.id
where role.name = 'Alumini'
order by USER_NEW.name,EXPERIENCE.COMPANY_NAME;
--7
select user_new.name, experience.company_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join experience on user_new.id = experience.id
where role.name = 'Alumini'
order by user_new.name,experience.company_name;

select * from USER_NEW;
--8
select user_new.name, experience.company_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join experience on user_new.id = experience.id
where role.name = 'Alumini' and EXPERIENCE.CURRENTVALUE=1
order by USER_NEW.name;
--9
select user_new.name, experience.company_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join experience on user_new.id = experience.id
where role.name = 'Alumini' and EXPERIENCE.CURRENTVALUE=1 and profile.BATCH='2008'
order by USER_NEW.name;
--10.

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
where role.name='Alumni' and user_new.profile_id is not null
order by user_new.name;

--11.
select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
where role.name='Alumni' and profile.batch='2008'
order by user_new.name;

--12.

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
where role.name='Alumni' and degree.name='BSC_CT'
order by user_new.name;

--13. Write a query to return alluser_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - degree
--  - department
--  - where role.name='Alumni' and department.name='CSE'
--  - Display in the order of user_new.name;  

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
inner join department on user_new.id = department.id
where role.name='Alumni' and department.name='CSE'
order by user_new.name;
                     
--14. Write a query to return all user_new.name, higher_degree.university_name from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - higher_degree
--  - department
--  - where role.name='Alumni' and higher_degree.degree_name is not null
--  - Display in the order of user_new.name,higher_degree.university_name 

select user_new.name, higher_degree.university_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join higher_degree on user_new.id = higher_degree.id
inner join department on user_new.id = department.id
where role.name='Alumni' and higher_degree.degree_name is not null
order by user_new.name,higher_degree.university_name;

--15.

select user_new.name, higher_degree.university_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join higher_degree on user_new.id = higher_degree.id
inner join department on user_new.id = department.id
where role.name='Alumni' and higher_degree.degree_name is not null
order by user_new.name,higher_degree.university_name;

--16.

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
inner join higher_degree on user_new.id = higher_degree.id
inner join department on user_new.id = department.id
where role.name='Alumni' and higher_degree.university_name='Texas University'
order by user_new.name;

--17.

select user_new.name, profile.batch from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
where role.name='Alumni' and profile.gender='female'
order by user_new.name;

--18.

select user_new.name, profile.batch,degree.name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
where role.name='Alumni' and profile.gender='female'
order by user_new.name;


--19. 

select user_new.name, profile.batch,degree.name,department.name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
inner join department on user_new.id= department.id
where role.name='Alumni' and profile.gender='female'
order by user_new.name;

--19. Write a query to return all degree.name, department.name from degree where there are matching ids in the tables 
--  - department
--  - Display in the order of degree.name;

select degree.name, department.name from degree
inner join department on degree.department_id= department.id
order by degree.name;


--20. Write a query to return all user_new.name, profile.designation from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - where role.name='Alumni' and profile.gender='male'
--  - Display in the order of user_new.name;                                     

select user_new.name, profile.designation from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
where role.name='Alumni' and profile.gender='male'
order by user_new.name;

--21

select user_new.name, profile.designation from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join experience on user_new.id = experience.id
where role.name='Alumni' and experience.currentValue=1 and experience.company_name='TCS'
order by user_new.name;

--22.

select user_new.name, querytable.content from user_new
inner join querytable on user_new.role_id = querytable.id
order by user_new.name;

--23. 

select user_new.name, querytable.content from user_new
inner join querytable on user_new.role_id = querytable.id
where querytable.parent_id is not null
order by user_new.name;

--24. 

select user_new.name, post.content from user_new
inner join post on user_new.role_id = post.id
order by user_new.name;
                   
--25.                                       

select user_new.name, post.content from user_new
inner join post on user_new.role_id = post.id
inner join post_type on post.type_id = post_type.id
where  post_type.name='Technology'
order by user_new.name,post.dateof;

--26.       

select user_new.name, post.content from user_new
inner join post on user_new.role_id = post.id
inner join post_type on post.type_id = post_type.id
where post.dateof='2013'
order by user_new.name,post.dateof,post.content;

--27.                        

select user_new.name, department.name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
inner join department on user_new.id= department.id
inner join profile_skills on user_new.profile_id = profile_skills.profile_id
inner join skills on profile_skills.skill_id = skills.id
where skills.name='Programming'
order by user_new.name;

--28.

select user_new.name, events.name from user_new
inner join events on user_new.id = events.id
inner join role on user_new.role_id = role.id
where role.name='Alumni'
order by user_new.name,events.dateof,events.name desc;

--29
select user_new.name, events.name from user_new
inner join events on user_new.id = events.id
inner join role on user_new.role_id = role.id
where role.name='Alumni'
order by user_new.name,events.dateof;










