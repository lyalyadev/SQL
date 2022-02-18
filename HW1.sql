--1. Output all fields and all rows.
select * from students;
--2. Output all students in the table
select name from students;
--3. Output only Id of users
select id from students;
--4. Output only user name
select name from students;
--5. Output only user's email
select email from students;
--6. Output the name and email of the users
select name, email from students;
--7. Output users' id, name, email, and creation date
select id, name, email, created_on from students;
--8. Output the users with password 12333
select * from students 
where password = '12333';
 --9. Output the users which were created on 2021-03-26 00:00:00
select * from students 
where created_on = ('2021-03-26 00:00:00');
 --10. Output the users which have the word Anna in the name
select * from students where name like ('%Anna%');
 --11. Output the users which have 8 at the end of their names.
select * from students where name like '%8'; 
 --12. Output the users that have the letter a at the end of their name.
select * from students where name like '%a';
 --13. Output users who were created 2021-07-12 00:00:00
select * from students where created_on = ('2021-07-12 00:00:00');
 --14. Output the users that were created 2021-07-12 00:00:00 and have a password of 1m313
select * from students where created_on = '2021-07-12 00:00:00' and password like '1m313';
--15. Output the users who were created 2021-07-12 00:00:00 and who have the word Andrey in their name
select * from students where created_on = '2021-07-12 00:00:00' or name = 'Andrey';
 --16. Output the users that were created 2021-07-12 00:00:00 and have the number 8 in their name
select * from students where created_on = '2021-07-12 00:00:00' or name = '%8%';
--17. Output the users whose id is 110
select * from students where id = 110;
--18. Output the user whose id is 153
select * from students where id = 153;
--19. Output the user whose id is more than 140
select * from students where id > 140;
--20. Output the user whose id is less than 130
select * from students where id <130;
--21. Output the user whose id is less than 127 or more than 188
select * from students where id <127 or id >188;
--22. Output the user whose id is less or equal to 137
select * from students where id <= 137;
-- 23. Output the user who has an id greater than or equal to 137
select * from students where id >= 137;
-- 24. Output the user whose id is more than 180 but less than 190
select * from students where id > 180 and id < 190;
--25. Output the user whose id is between 180 and 190
select * from students where id between 180 and 190;
--26. Output users with password equal to 12333, 1m313, 123313
select * from students where password similar to '(12333|1m313|123313)';
--27. Display users where created_on is equal to 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select * from students where created_on similar to '(2020-10-03 00:00:00|2021-05-19 00:00:00|2021-03-26 00:00:00)';
-- 28. Output the minimal id 
select min(id) from students;
--29. Output the maximum id.
select max(id) from students;
-- 30. Output number of users
select count(id) from students;
-- 31. Output user id, name, creation date of the user. Sort in ascending order of the date when the user was added.
select id, name, created_on from students order by created_on;
-- 32. Output user id, name, user creation date. Sort in descending order by the date the user was added.
select id, name, created_on from students order by created_on desc;
