

use company;

CREATE TABLE Software (
    name VARCHAR(18) NOT NULL,
    title VARCHAR(20) NOT NULL,
    dev_in VARCHAR(18) NOT NULL,
    scost DECIMAL(7,2),
    dcost INT(5),
    sold INT(3));
    
INSERT INTO Software (name, title, dev_in, scost, dcost, sold) 
VALUES ('somdutt', 'parachutes', 'basic', 399.95, 6000, 43);
INSERT INTO Software (name, title, dev_in, scost, dcost, sold) 
VALUES ('ram', 'superapp', 'java', 89.99, 4500, 150);
INSERT INTO Software (name, title, dev_in, scost, dcost, sold) 
VALUES ('ram', 'gadgetify', 'python', 129.95, 3500, 180);
INSERT INTO Software (name, title, dev_in, scost, dcost, sold) 
VALUES ('rajesh2', 'texteditor', 'basic', 49.95, 2000, 300);
INSERT INTO Software (name, title, dev_in, scost, dcost, sold) 
VALUES ('preeti', 'alarmapp', 'basic', 19.99, 1200, 400);
INSERT INTO Software (name, title, dev_in, scost, dcost, sold) 
VALUES ('san', 'dbadmin', 'dbase', 59.99, 2500, 100),('neha', 'dataextract', 'dbase', 89.99, 3000, 200);
Insert into software values ('rahul','PHK','go',100,3000,50);
INSERT INTO Software (name, title, dev_in, scost, dcost, sold) 
VALUES ('ram', 'superapp2', 'java', 100, 4500, 80);
INSERT INTO Software (name, title, dev_in, scost, dcost, sold) 
VALUES ('somdutt', 'gadgetifed', 'python', 129.95, 3500, 180);
INSERT INTO Software (name, title, dev_in, scost, dcost, sold) 
VALUES 
('john123', 'cloudapp', 'java', 150.75, 2500, 120),
('mike001', 'gamingX', 'python', 199.99, 4500, 210),
('alice99', 'photomagic', 'c++', 99.50, 3200, 75),
('bob88', 'webbuilder', 'html', 29.99, 1200, 320),
('charlie5', 'dataviz', 'java', 49.95, 1800, 180);
INSERT INTO Software (name, title, dev_in, scost, dcost, sold) 
VALUES ('somu', 'giftify', 'rust', 120, 900, 100);
INSERT INTO Software (name, title, dev_in, scost, dcost, sold) 
VALUES ('sonu', 'looter', 'pascal', 120, 6000, 100);
INSERT INTO Software (name, title, dev_in, scost, dcost, sold) 
VALUES ('mani', 'nityfy', 'ruby', 120, 6000, 0);
select * from software;

CREATE TABLE Programmer (
    name VARCHAR(18) NOT NULL,
    dob DATE NOT NULL,
    doj DATE NOT NULL,
    sex VARCHAR(1) NOT NULL,
    prof1 VARCHAR(18),
    prof2 VARCHAR(18),
    salary INT(4) NOT NULL
);
desc programmer;
INSERT INTO Programmer (name, dob, doj, sex, prof1, prof2, salary) 
VALUES ('somdutt', '1966-04-21', '1992-04-21', 'm', 'pascal', 'basic', 3200);
INSERT INTO Programmer (name, dob, doj, sex, prof1, prof2, salary)
VALUES
('john', '1985-03-12', '2010-06-15', 'm', 'java', 'python', 4500),
('mike', '1990-07-24', '2015-01-10', 'm', 'c++', 'html', 3700),
('alice', '1983-11-30', '2012-09-25', 'f', 'java', 'sql', 4800),
('bob', '1992-02-20', '2020-08-19', 'm', 'ruby', 'go', 5000),
('charlie', '1988-05-05', '2018-04-30', 'm', 'python', 'javascript', 4100),
('diana', '1995-09-15', '2021-02-01', 'f', 'swift', 'kotlin', 4300);

INSERT INTO Programmer (name, dob, doj, sex, prof1, prof2,salary)
VALUES ('Amit kumar','1990-05-15','2020-01-10', 'm', 'pascal', 'cobol',6000),
('Priya','1985-08-25','2018-06-20', 'f', 'cobol', 'pascal',5500);
INSERT INTO Programmer (name, dob, doj, sex, prof1, prof2,salary)
VALUES ('Ravi','1992-03-10','2021-07-15', 'M', 'C', 'go',7000),
('bharath kumar','1988-11-05','2019-03-22', 'm', 'javascript', 'C',6300);
insert into programmer values('ranjana','1988-11-05','2019-03-22', 'F', 'javascript', 'C',7300);
INSERT INTO Programmer (name, dob, doj, sex, prof1, prof2,salary)
VALUES ('Ravinath','1992-03-10','2021-07-15', 'M', 'Dbase', 'go',4000),
('savan','1988-11-05','2019-03-22', 'M', 'javascript', 'Dbase',3300);
INSERT INTO Programmer (name, dob, doj, sex, prof1, prof2,salary)
VALUES ('Amit kumar','1990-05-15','2020-01-10', 'm', 'rust', 'go',6000);
select * from Programmer;
select * from Software;


CREATE TABLE Studies (
    name     VARCHAR(15) NOT NULL,
    splace   VARCHAR(15) NOT NULL,
    course   VARCHAR(15) NOT NULL,
    ccost DECIMAL(10, 2) NOT NULL
);
INSERT INTO Studies (name, splace, course, ccost) 
VALUES ('somdutt kumar', 'sabhari', 'pgdca', '4500'),('devdutt', 'bdps', 'dcs', '5000');

INSERT INTO Studies (name, splace, course, ccost) 
VALUES ('rahul kumar', 'delhi', 'mca', 7000),
('priya', 'noida', 'bca', 5500),
('arvind kumar', 'kanpur', 'diploma', 3000),
('neha', 'lucknow', 'pgdca', 6000),
('vikram kumar', 'jaipur', 'bba', 5000);

INSERT INTO Studies (name, splace, course, ccost) 
VALUES 
('mahesh', 'paragathi', 'PDM', 3500),
('venkat', 'paragathi', 'CSE', 4000);

select * from Programmer;
select * from Studies;

-- queries 1
-- 2) Display the names and ages of all programmers

select name,TIMESTAMPDIFF(YEAR, dob, CURDATE()) AS age from Programmer;

-- 3) Display the names and ages of all the programmers who have undergone training in java course.
select name,timestampdiff(YEAR,dob,CURDATE()) as ages,prof1 AS age from Programmer where prof1='java' or prof2='java';

-- 4) What is the highest numbers of copies sold by a package?
select name,title,dev_in,scost,dcost,sold from Software order by sold desc limit 1;

-- 5) Display the names and date of birth of all the programmer born in JANUARY.
select name,month(dob) from Programmer where month(dob)=7;

-- 6) Display lowest course fee.
select * from Studies;
select name,splace,course,ccost from Studies order by ccost limit 1;

-- 7) How many programmer has done Cobol course.
select * from Programmer where prof1='cobol' or prof2='cobol'; 
select * from Programmer;

-- 8) How much revenue has been earned through sales of packages in C.

-- 9) Display the details of software developed by Ramesh?
select name,title,dev_in,scost,dcost,sold from Software where name='ramesh';

-- 10) How many programmers studied at SABHARI.
select count(*)as programmers_studied ,splace from studies where splace='sabhari' group by splace;
select * from studies;

-- 11) Display the details of PACKAGES whose sales crossed the 20000 mark.
select title,dev_in,(scost)*sold as total_sales from software where (scost)*sold>20000;

-- 12) Find out the number of copies which should be sold in order to recover the development cost of each package.
select * from software;
select name,title,dev_in,(dcost/scost) as no_of_copies from software;

-- 13) What is the price of the costliest software developed in BASIC?
select max(dcost) as developed_costly,dev_in from software where dev_in='basic' group by dev_in;

-- 14) Display the details of packages for which development cost has been recovered.
select name,title,dev_in,scost*sold as total from software where (dcost/scost)<(scost*sold);
select * from software;

-- 15) How many packages were developed in dbase?
select dev_in,count(dev_in) as no_of_dev_projects from software where dev_in='dbase' group by dev_in;

-- 16) How many programmers studies at paragathi?
select splace,count(splace) from studies where splace='paragathi' group by splace;

-- 17) How many programmers paid 5000 to 10000 for their course?
select name,splace,course,ccost from studies where ccost between 5000 and 10000;

-- 18) What is the average course fee?
select * from studies;
select avg(ccost) as AVG_cost from studies;

-- 19) Display the details of programmers knowing python?
select name,dob,doj,sex,prof1,prof2 from programmer where prof1='python' or prof2='python';

-- 20) How many programmers know either Cobol or Pascal?
SELECT COUNT(*) FROM Programmer WHERE prof1 IN ('Cobol', 'Pascal') OR prof2 IN ('Cobol', 'Pascal');

-- 21) How many programmers don't know Pascal & C?
SELECT *
FROM Programmer
WHERE prof1 NOT IN ('C', 'Pascal') and prof2 NOT IN ('C', 'Pascal');

-- 22) How old is the oldest male programmers?
select max(TIMESTAMPDIFF(YEAR,dob,CURDATE())) as oldest_Programmer from programmer where sex='m';

-- 23) What is the average age of female programmers?
select avg(timestampdiff(year,dob,curdate())) as AVG_AGE_Women from programmer where sex='f';
-- or
select avg(timestampdiff(year,dob,curdate())) as avg_age_women from programmer group by sex having sex='f';

-- 24) Calculate the experience in years for each programmers and display along with the names in descending order?
select name,dob,doj,sex,timestampdiff(year,doj,curdate()) as experience from programmer order by experience desc;

-- 25) Who are the programmers who celebrate their birthday during the current month?
select name,dob,sex,salary from programmer where month(dob)=month(curdate());

-- 26) How many female programmers are there?
select count(*) from programmer where sex='F';

-- 27) What are the languages known by the male programmers?
select name,sex,prof1,prof2 from programmer where sex='m';

-- 28) What is the Average salary?
select avg(salary) from programmer;

-- 29) How many people draw 2000 to 4000?
select count(*) from programmer where salary between 2000 and 4000;


-- 30) Display the details of those who don't know Clipper, Cobol or Pascal?
select name,dob,doj,sex,prof1,prof2 from programmer where prof1 NOT IN ('clipper','cobol','pascal') and prof2 NOT IN ('clipper','cobol','pascal');

-- 31) How many Female programmers knowing C are above 24 years of age?
select * from programmer where (prof1='C' or prof2='C') and timestampdiff(year,dob,curdate())>24 and sex='f';

-- 32) Who are the programmers who will be celebrating their Birthday within a week?
select * from programmer;
update programmer set dob='1988-11-29' where name='sangam';
select week(dob),week('2024-11-29') from programmer where name='sangam';
select * from programmer where week(dob)=week(curdate());


-- 33)Display the details of those with less than a year's experience?
select name,dob,doj,sex,salary,timestampdiff(year,doj,curdate()) as experience from programmer where timestampdiff(year,doj,curdate())<1;

-- 34) Display the details of those who will be completing 2 years of service this year? not completed
update programmer set doj='2023-01-10' where name='Amit';
select name,dob,doj,sex,salary,timestampdiff(year,doj,curdate()) as experience from programmer where timestampdiff(year,doj,curdate())<2;

-- 35) Calculate the amount to be recovered for those packages whose development cost has not been recovered?
select name,title,dev_in ,scost,dcost,sold, (dcost - (scost*sold)) as ToBe_Recovered from software where scost*sold < dcost;

-- 36) List the packages which have not been sold so far?
select name,title,dev_in,scost,dcost,sold from software where sold=0;

-- 37) Find out the cost of the software developed by Mary?
select name,title,dev_in,scost,dcost,sold from software where name='mary';

-- 38) Display the institute’s names from the studies table without duplicates?
select distinct(splace) as institue_names from studies;

-- 39) How many different courses are mentioned in the studies table?
select count(distinct(splace)) as NO_OF_DIFF_COURSES_AVAL from studies;


-- 40) Display the names of the programmers whose names contain 2 occurrences of the letter A?
select * from programmer where name like '%a%a%';

-- 41) Display the names of programmers whose names contain unto 5 characters? not completed
select * from programmer;

-- 42) How many female programmers knowing COBOL have more than 2 years experience?
select name,dob,doj,sex,prof1,prof2,(timestampdiff(year,doj,curdate())) AS Experience from programmer where sex='f' and (prof1='cobol' or prof2='cobol') and (timestampdiff(year,doj,curdate())>2);

-- 43) What is the length of the shortest name in the programmer table?
select min(length(name)) as Min_Length,name from programmer group by name order by Min_Length limit 1;

-- 44) What is the average development cost of a package developed in COBOL?
select * from software;
select avg(dcost),dev_in from software where dev_in='cobol' group by dev_in;

-- 45) Display the name, sex, dob (DD/MM/YY format), doj for all the programmers without using conversion function?
select name,sex,dob,doj from programmer;

-- 46) Who are the programmers who were born on the last day of the month?
select name from programmer where dob=LAST_DAY(dob);

-- 47) What is the amount paid in salaries of the male programmers who do not know Cobol?
select name,prof1,prof2,salary from programmer where sex='m' and (prof1 not in ('cobol') and prof2!='cobol') ;

-- 48) Display the title, scost, dcost and difference between scost and dcost in descending order of difference?
select title,scost,dcost,(dcost-scost) as difference from software order by difference desc;

-- 49) Display the name, dob, doj of those month of birth and month of joining are same?
select * from programmer where month(doj)=month(dob);

-- 50) Display the names of the packages whose names contain more than 1 word?
select name,title,dev_in from software where name like '% %';

-- QUERIES - II
-- 1) Display THE NUMBER OF packages developed in EACH language.
select dev_in,count(dev_in) as NO_OF_PKGs_DEV from software group by dev_in;

-- 2) Display THE NUMBER OF packages developed by EACH person.
select name,count(name) as NO_OF_PKGs_DEV from software group by name;

-- 3) Display THE NUMBER OF male and female programmer.
select * from programmer;
select sex,count(sex) as count from programmer group by sex;

-- 4) Display THE COSTLIEST packages and HIGEST selling developed in EACH language. not completed
select * from software;
select dev_in,scost,sold from software group by dev_in,sold,scost order by sold,scost desc;

-- 5) Display THE NUMBER OF people BORN in EACH YEAR.
select * from programmer;
select count(year(dob)) as COUNT,year(dob) as A_YEAR  from programmer group by year(dob);

-- 6) Display THE NUMBER OF people JOINED in EACH YEAR.
select count(year(doj)) as count_SAME_YR_JOINING,year(doj) as A_YEAR from programmer group by year(doj);

-- 7) Display THE NUMBER OF people BORN in EACH MONTH.
select count(month(dob)) as COUNT_OF_EVR_MONTH_BORN,month(dob) as BORN_MONTH from programmer group by month(dob) order by BORN_MONTH;

-- 8) Display THE NUMBER OF people JOINED in EACH MONTH.
select count(month(doj)) as COUNT_OF_EVR_MONTH_JOIN,month(doj) as JOIN_MONTH from programmer group by month(doj) order by JOIN_MONTH;

-- 9) Display the language wise COUNTS of prof1.
select prof1,count(prof1) from programmer group by prof1;

-- 10) Display the language wise COUNTS of prof2.
select prof2,count(prof2) from programmer group by prof2;

-- 11) Display THE NUMBER OF people in EACH salary group.
select * from programmer;
SELECT 
    CASE 
        WHEN salary < 4000 THEN 'Below 4000'
        WHEN salary BETWEEN 4000 AND 5999 THEN '4000-5999'
        WHEN salary BETWEEN 6000 AND 7999 THEN '6000-7999'
        WHEN salary >= 8000 THEN '8000 and above'
    END AS salary_group,
    COUNT(*) AS number_of_people
FROM programmer
GROUP BY salary_group;

-- 12) Display THE NUMBER OF people who studied in EACH institute.
select count(splace),splace from studies group by splace;

-- 13) Display THE NUMBER OF people who studied in EACH course.
select course,count(course) from studies group by course;

-- 14) Display the TOTAL development COST of the packages developed in EACH language.
select dev_in,sum(dcost) from software group by dev_in;

-- 15) Display the selling cost of the package developed in EACH language.
select scost,dev_in from software;

-- 16) Display the cost of the package developed by EACH programmer.
select dev_in,sum(scost) as TOTAL_COST from software group by dev_in;


-- 17) Display the sales values of the package developed inEACH programmer.
select dev_in,sum(sold) from software group by dev_in;

-- 18) Display the NUMBER of packages developed by EACH programmer.
select name,count(name) as NO_OF_PROG_DEV from software group by name order by count(name) desc;

-- 19) Display the sales COST of packages developed by EACH programmer language wise. not completed
SELECT dev_in AS language, SUM(scost * sold) AS total_sales_cost FROM software GROUP BY dev_in;

-- 20) Display EACH programmers name, costliest package and cheapest packages developed by Him/Her.
select name,max(scost),min(scost) from software group by name;

-- 21) Display EACH language name with AVERAGE development cost, AVERAGE cost, selling cost and AVERAGE price per copy

-- 22) Display EACH institute name with NUMBER of courses, AVERAGE cost per course.
select count(course) as COURSE_COUNT,truncate(avg(ccost),0) as AVG_COST from studies group by splace order by COURSE_COUNT desc;

-- 23) Display EACH institute name with NUMBER of students. 
select count(splace) as NO_OF_STUDENTS from studies group by splace order by NO_OF_STUDENTS desc;

-- 24) Display names of male and female programmers. 
select name,sex from programmer order by sex;


-- 25) Display the programmer's name and their packages. 
select name , salary from programmer;

-- 26) Display the NUMBER of packages in EACH language.
select dev_in,count(dev_in) asNO_OF_PACKAGES from software group by dev_in;

-- 27) Display the NUMBER of packages in EACH language for which development cost is less than 2000
select * from software where dcost<2000;
select dev_in,count(dev_in) as packages_less_than_2000 from software where dcost<2000 group by dev_in;

-- 28) Display the AVERAGE difference BETWEEN scost and dcost for EACH language.
SELECT dev_in AS language,truncate(AVG(dcost-scost),0) AS avg_cost_difference FROM software GROUP BY dev_in;

-- 29) Display the TOTAL scost, dcsot and amount TOBE recovered for EACH programmer for whose dcost HAS NOT YET BEEN recovered.
SELECT name AS programmer_name, SUM(scost) AS total_scost, SUM(dcost) AS total_dcost, SUM(dcost - scost) AS amount_to_be_recovered FROM software GROUP BY name;

-- 30) Display highest, lowest and average salaries for THOSE earning MORE than 2000. 
select * from programmer;
select max(salary) as HIGHEST_SALARY,min(salary) AS MIN_SLARY,truncate(avg(salary),0) as AVG_SALARY from programmer where salary>2000;


-- QUERIES - III
-- 1) Who is the highest paid C programmer?
select name,max(salary) from programmer where prof1='C' or prof2='C' group by name limit 1;

-- 2) Who is the highest paid female cobol programmer?
select name,salary from programmer where sex='f' and (prof1='cobol' or prof2='cobol') order by salary desc limit 1;

-- 3) Display the name of the HIGEST paid programmer for EACH language (prof1)
select prof1,max(salary) as highest_Salary from programmer group by prof1 order by prof1;

-- 4) Who is the LEAST experienced programmer?
select min(timestampdiff(year,doj,curdate())) as least_experience from programmer ;

-- 5) Who is the MOST experienced programmer?
select max(timestampdiff(year,doj,curdate())) as most_experience from programmer ;

-- 6) Which language is known by ONLY ONE programmer?
select count(prof1),prof1 from (
select name ,prof1 from programmer
union all
select name ,prof2 from programmer
) as all_lang group by prof1 order by count(prof1);

-- 7) Who is the YONGEST programmer knowing DBASE?
select name ,timestampdiff(year,dob,curdate()) as youngest_programmer from programmer where prof1='dbase' or prof2='dbase' order by youngest_programmer limit 1;


-- 8) Which institute has MOST NUMBER of students?
select splace,count(splace) from studies group by splace order by count(splace) desc limit 1;

-- 9) Who is the above programmer?


-- 10) Which female programmer earns MORE than 3000/- but DOES NOT know C, C++, Oracle or Dbase?
select name,doj,dob,sex,prof1,prof2,salary from programmer where sex='f' and salary>3000 and (prof1 not in ('C','c++','oracle','dbase') and prof2 not in ('C','c++','oracle','dbase'));


-- 11) Which is the COSTLIEST course?
select name,max(ccost) as costly_course from studies group by name order by max(ccost) desc limit 1;

-- 12) Which course has been done by MOST of the students?
select course,count(course) from studies group by course order by count(course) desc limit 1;

-- 13) Display name of the institute and course Which has below AVERAGE course fee?
select splace,course,ccost from studies where ccost<(select avg(ccost) from studies);

-- 14) Which institute conducts COSTLIEST course?
select splace,max(ccost) as costly_course from studies group by splace order by max(ccost) desc limit 1;

-- 15) Which course has below AVERAGE number of students?
select * from studies;
select * from (select splace,count(splace) as cnt from studies group by splace) as stu where cnt<(select avg(cnt) from studies);

-- 16) Which institute conducts the above course?

-- 17) Display names of the course WHOSE fees are within 1000(+ or -) of the AVERAGE fee.
select * from studies where ccost between (select avg(ccost) from studies)-1000 and (select avg(ccost) from studies)+1000;

-- 18) Which package has the HIGEST development cost?
select title,max(dcost) as max_cost from software group by title order by max_cost desc limit 1;

-- 19) Which package has the LOWEST selling cost?
select title,min(scost) as s_cost from software group by title order by s_cost  limit 1;

-- 20) Who developed the package, which has sold the LEAST number of copies?
select name ,min(sold) as sold from software group by name order by sold limit 1;

-- 21) Which language was used to develop the package WHICH has the HIGEST sales amount?
select dev_in from studies group by dev_in;

-- 22) How many copies of the package that has the LEAST DIFFRENCE between development and selling cost were sold?
select name ,title, dev_in, dcost-scost as least_difference,sold from software where (dcost-scost)=(select min(dcost-scost) from software);

-- 23) Which is the COSTLIEAST package developed in PASCAL?
select name,title,dcost from software where dev_in='pascal' order by dcost desc limit 1;

-- 24) Which language was used to develop the MOST NUMBER of package?
select * from software;
select dev_in,count(dev_in) as no_of_softwares_dev from software group by dev_in order by no_of_softwares_dev desc;

-- 25) Which programmer has developed the HIGEST NUMBER of package?
select name,count(name) as no_of_software_dev from programmer group by name order by count(name) desc limit 1;

-- 26) Who is the author of the COSTLIEST package?
select * from software where scost=(select max(scost) from software);

-- 27) Display names of packages WHICH have been sold LESS THAN the AVERAGE number of copies?
select * from software where sold<(select avg(sold) from software);

-- 28) Who are the female programmers earning MORE than the HIGEST paid male programmers?
select name,dob,doj,sex,prof1,prof2,salary from programmer where sex='f' and salary>(select max(salary) from programmer where sex='m');

-- 29) Which language has been stated as prof1 by MOST of the programmers?
select prof1,count(prof1) as prof1_by_most_programmers from programmer group by prof1 order by count(prof1) desc limit 1;

-- 30) Who are the authors of packages, WHICH have recovered MORE THAN double the development cost?
select name,title,dev_in,scost,dcost,sold from software where (scost*sold)>(2*dcost);


-- 31) Display programmer names and CHEAPEST package developed by them in EACH language?
select name,min(dcost) from software group by name order by min(dcost);

-- 32) Who is the YOUNGEST male programmer born in 1988?
select * from programmer;
select name,min(month(dob)) as youngest_in_1988_month_wise from programmer  where year(dob)='1988' group by name limit 1;

-- 33) Display language used by EACH programmer to develop the HIGEST selling and LOWEST selling package.
select dev_in,min(sold) as lowest_sold,max(sold) as highest_sold from software group by dev_in order by max(sold) desc;

-- 34) Who is the OLDEST female programmer WHO joined in 1992
select name,max(month(dob)) as oldest_in_1988_month_wise from programmer  where year(dob)='1992' group by name limit 1;

-- 35) In WHICH year where the MOST NUMBER of programmer born?
select (year(dob)),count(year(dob)) as no_of_prog_born from programmer group by year(dob) order by no_of_prog_born desc limit 1;


-- 36) In WHICH month did MOST NUMBRER of programmer join?
select (month(doj)) as month,count(month(doj)) as no_of_prog_join from programmer group by month(doj) order by no_of_prog_join desc limit 1;

-- 37) In WHICH language are MOST of the programmer's proficient?

-- 38) Who are the male programmers earning BELOW the AVERAGE salary of female programmers?
select * from programmer where sex='m' and salary < (select avg(salary) from programmer where sex='f');