create database sqlassignment;

use  sqlassignment;


  -- creating employee2 table
  select *from employee2;
  
  

create table employee2 (
      emp_id int not null,
      name text not null,
      department text not null,
      location text not null,
      salary int not null
);

insert into employee2 values(12461,'bharath','stores','hyderabad',55000);
insert into employee2 values(12462,'shravya','ecommerce','hyderabad',13000);
insert into employee2 values(12463,'madhu','merchandise','kochi',70000);
insert into employee2 values(12464,'abhi','stores','chennai',80000);
insert into employee2 values(12465,'yashu','ecommerce','chennai',80000);
insert into employee2 values(12466,'sudheer','ecommerce','hyderabad',79000);
insert into employee2 values(12467,'nivas','merchandise','hyderabad',80000);
insert into employee2 values(12468,'vikas','sales','kochi',80000);
insert into employee2 values(12469,'pradeep','stores','hyderabad',70000);
insert into employee2 values(12470,'mahesh','ecommerce','hyderabad',90000);
insert into employee2 values(12471,'venkat','stores','hyderabad',85000);

select * from employee2;


-- procedure to insert values

delimiter &&
create procedure insert_values(
        in emp_id int,
        in name text,
        in department text,
        in location text,
        in salary int
)
begin 
 insert into employee2 values(emp_id,name,department,location,salary);
end&&
delimiter ;

call insert_values(12472,'sangam','ecommerce','hyderabad',70000);



-- procedure to update values

delimiter &&
create procedure update_values(
       in p_emp_id int,
       in p_location text,
       in p_salary int
)
begin 
 update employee2 set location=p_location , salary=p_salary
 where p_emp_id=emp_id;
end&&
delimiter ;



call update_values(12472,'chennai',100000);



-- procedure to delete values

delimiter &&
create procedure delete_values(
       in p_emp_id int
)
begin 
 delete from employee2 where p_emp_id=emp_id;
end&&
delimiter ;

call delete_values(12472);
SET SQL_SAFE_UPDATES = 0;




-- procedure to retrieve the table data

delimiter &&
create procedure get_data()
 begin 
  select * from employee2;
end&&
delimiter ;

call get_data();



-- function

DELIMITER $$
CREATE FUNCTION get_salary(p_emp_id INT) 
RETURNS INT
DETERMINISTIC
BEGIN
 DECLARE p_salary int;
 SELECT salary INTO p_salary FROM employee2 WHERE emp_id = p_emp_id;
 RETURN p_salary;
END $$
DELIMITER ;



-- creating a view 

select get_salary(12462);

create view  employee2_details as 
select name,department,salary from employee2 where salary>100000;

select * from employee2_details;









