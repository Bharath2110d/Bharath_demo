create database student;
 
 use student;
 
 create table department(
     department_id int primary key,
	 department_name varchar(50) not null,
     EmpCount int 
);
     
create  table employee(
		employee_id int,
        employee_name varchar(20),
        salary int,
        location varchar(30),
        doj date,
        department_id int,
        FOREIGN KEY (department_id) REFERENCES department(department_id)
        );
	
INSERT INTO Department (department_name, Empcount) VALUES 
('manager' , 10),
('teamlead' , 20),
('TN' , 10);

INSERT INTO Employee (Name, salary, location, departmentid, DOJ) VALUES
('bharat',500000,'hyderbad',12461,'2024-10-20'),
('shravya',600000,'hyderbad',12469,'2023-10-20'),
('abhi',80000,'kochi',12766,'2022-09-20'),
('mahesh',40000,'chennai',12467,'2022-06-20'),
('venkat',50000,'hyderbad',12456,'2022-09-03'),
('akshya',60000,'hyderbad',12347,'2022-08-04'),
('madhu',70000,'kochi',12348,'2022-09-06'),
('pradeep',80000,'chennai',12345,'2022-08-09'),
('sai',50000,'chennai',12346,'2022-07-09'),
('sangam',40000,'hyderbad',12468,'2022-04-20');

-- 1)Create a Stored Procedure that takes employee id as IN parameter and updated salary as OUT parameter.
-- Then update the salary of the employee

delimiter //
create procedure update_salary(
IN emp_id int,
OUT updated_salary decimal(10,2)
)
begin
declare current_salary decimal(10,2);
select salary into current_salary from employee where employee_Id=emp_id;
update employee set salary=current_salary where employee_Id=emp_id;
select salary into updated_salary from employee where employee_Id=emp_id;
end //
delimiter ;

-- 2)Create a function that takes location as an argument and Display the details of
-- all employees in the specified location.

delimiter //
create function get_Employees_on_location(location_name varchar(10)) returns int
begin
declare res INT;
set res = (select count(*) from employee where location=location_name);
return res;
end //
delimiter ;

select get_Employee_on_location('Hyderabad') as count_employee;

-- 3)Create a view to display the employeeId,departmentname of all employees in "TN"
--  and "manager" departments who joined in 2022

create view employee_of_TN_and_mangager as 
select e.employee_Id,e.Name,d.department_Name from employee e join department d on e.department_id=d.department_id and (d.department_Name='manager' or d.department_Name='TN')
and year(e.doj)=2022;










     
 
