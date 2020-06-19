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



