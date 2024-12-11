create database employee;

use employee;

CREATE TABLE Programmer (
    name VARCHAR(18) NOT NULL,
    dob DATE NOT NULL,
    doj DATE NOT NULL,
    sex VARCHAR(1) NOT NULL,
    prof1 VARCHAR(8),
    prof2 VARCHAR(8),
    salary INT(4) NOT NULL
);
INSERT INTO Programmer (name, dob, doj, sex, prof1, prof2, salary)
VALUES
('Bharath', '2001-06-10', '2024-11-20', 'm', 'java', 'python', 5000),
('Aravind','2001-03-23' , '2024-11-20', 'm','c++','python',4000),
('akshya','2001-10-04','2024-11-20', 'f','html','python',5000),
('venkat','2001-09-23', '2024-11-20','m','dotnet','python',5000),
('pradeep','2001-06-10','2024-11-20','m','js','python',6000),
('sangaam','2001-07-24','2024-11-20','m','sql','python',7000),
('mahesh','2001-11-27','2024-11-20','m','js','python',8000),
('pavan','2001-03-23','2024-11-20','m','dot','python',7000),
('sai varma','2001-09-24','2024-11-20','m','net','python',3000);
 
 select * from programmer;
 
 CREATE TABLE Software (
    name VARCHAR(18) NOT NULL,
    title VARCHAR(20) NOT NULL,
    dev_in VARCHAR(15) NOT NULL,
    scost DECIMAL(7,2),
    dcost INT(5),
    sold INT(3));
    select * from software;
    
    INSERT INTO Software (name, title, dev_in, scost, dcost, sold)
    values
    ('somdutt', 'parachutes', 'basic', 399.95, 6000, 43),
    ('shravya','desktop','pascal',550.99,5000,50),
    ('abhi','mouse','pascal',500,6000,45),
    ('raju','laptop','pascal',500,4500,50),
    ('mary','accenture','c',550,7000,49);
    select * from software;
    
    CREATE TABLE Studies (
    name     VARCHAR(35) NOT NULL,
    splace   VARCHAR(25) NOT NULL,
    course   VARCHAR(45) NOT NULL,
    ccost DECIMAL(10, 2) NOT NULL
);
INSERT INTO Studies (name, splace, course, ccost) 
values
('shravya','sproothy','b.tech',5000),
('abhi','mecs','BE',6000),
('bharath','mecs','BE',8000),
('arvind','mecs','BE',5000),
('akshya','vjit','jntu',6000),
('pradeep','vjit','jntu',5000),
('yashu','mecs','BE',7000),
('sudheer','mecs','BE',8000);
select * from studies;

   
    -- Queries 1
	
-- 1)Find out the SELLING COST AVERAGE for the packages developed in PASCAL?
SELECT AVG(SCOST)
FROM SOFTWARE
WHERE DEV_IN LIKE 'PASCAL';

 -- 2) Display the names and ages of all programmers.
 select name,TIMESTAMPDIFF(YEAR, dob, CURDATE()) AS age from Programmer;
 
-- 3) Display the names and ages of all the programmers who have undergone training in DCS course.

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
SELECT SUM(SOLD) FROM Software WHERE dev_in = 'c';

-- 9) Display the details of software developed by Rajesh?

SELECT title FROM Software WHERE NAME = 'RAJESH';

-- 10) How many programmers studied at SABHARI.

SELECT count(name) from Studies WHERE splace = 'Sabhari';

-- 11) Display the details of PACKAGES whose sales crossed the 20000 mark.

SELECT * FROM Software where scost=550;

-- 12) Find out the number of copies which should be sold in order to recover the development cost of each package.
select * from software;
select name,title,dev_in,(dcost/scost) as no_of_copies from software;

-- 13) What is the price of the costliest software developed in BASIC?

SELECT MAX(scost) FROM Software WHERE dev_in = 'basic';

-- 14) Display the details of packages for which development cost has been recovered.

SELECT * FROM Software

where (SOLD*scost)>dcost



-- 15) How many packages were developed in dbase?
select dev_in,count(dev_in) as no_of_dev_projects from software where dev_in='dbase' group by dev_in;
    
    -- 16) How many programmers studies at paragathi?

SELECT count(name) from Studies where splace = 'mecs';

-- 17) How many programmers paid 5000 to 10000 for their course?

SELECT * FROM Studies WHERE ccost >= 5000 AND ccost <= 10000;

-- 18) What is the average course fee?
select * from studies;
select avg(ccost) as AVG_cost from studies;

-- 19) Display the details of programmers knowing python?
select name,dob,doj,sex,prof1,prof2 from programmer where prof1='python' or prof2='python';
    
    -- 20) How many programmers know either Cobol or Pascal?

SELECT COUNT(NAME) FROM Programmer WHERE PROF1 = 'PASCAL' OR PROF1 = 'JAVA' OR PROF2 = 'PASCAL' OR PROF2 = 'JAVA';

-- 21) How many programmers don't know Pascal & C?

SELECT NAME FROM Programmer WHERE PROF1!= 'PASCAL' AND PROF1!='C' AND PROF2 != 'PASCAL' AND PROF2 != 'C';

-- 22) How old is the oldest male programmers?

select max(TIMESTAMPDIFF(YEAR,dob,CURDATE())) as oldest_Programmer from programmer where sex='m';

-- 23) What is the average age of female programmers?

select avg(timestampdiff(year,dob,curdate())) as AVG_AGE_Women from programmer where sex='f';

 -- 24) Calculate the experience in years for each programmers and display along with the names in descending order?
select name,dob,doj,sex,timestampdiff(year,doj,curdate()) as experience from programmer order by experience desc;

-- 25) Who are the programmers who celebrate their birthday during the current month?
select name,dob,sex,salary from programmer where month(dob)=month(curdate());

-- 26) How many female programmers are there?

SELECT COUNT(NAME) FROM Programmer WHERE SEX ='f';

-- 27) What are the languages known by the male programmers?

SELECT NAME,PROF1,PROF2 FROM Programmer WHERE SEX = 'M'

-- 28) What is the Average salary?
select avg(salary) from programmer;

-- 29) How many people draw 2000 to 4000?

SELECT NAME FROM Programmer WHERE SALARY>='2000' OR SALARY <='4000';
 
-- 30) Display the details of those who don't know Clipper, Cobol or Pascal?

SELECT * FROM Programmer WHERE PROF1!= 'PASCAL' AND PROF1!='C++' AND PROF1!='JAVA' AND PROF2 != 'PASCAL' AND PROF2 != 'C++' AND PROF2 !='JAVA';

-- 31) How many Female programmers knowing C are above 24 years of age?
select * from programmer where (prof1='C' or prof2='C') and timestampdiff(year,dob,curdate())>24 and sex='f';

-- 32) Who are the programmers who will be celebrating their Birthday within a week?
select * from programmer;
update programmer set dob='2001-06-10' where name='bharath';
select week(dob),week('2024-11-29') from programmer where name='bharath';
select * from programmer where week(dob)=week(curdate());

-- 33)Display the details of those with less than a year's experience?
select name,dob,doj,sex,salary,timestampdiff(year,doj,curdate()) as experience from programmer where timestampdiff(year,doj,curdate())<1;

-- 34 Display the details of those who will be completing 2 years of service this year?
update programmer set doj='2023-01-10' where name='bharath';
select name,dob,doj,sex,salary,DATEDIFF(CURDATE(),DOJ)/365 as experience from programmer;
SET SQL_SAFE_UPDATES = 0;

-- 35 )Calculate the amount to be recovered for those packages whose development cost has not been recovered?

SELECT (DCOST-(SOLD*SCOST)) AS RECOVERED_PACKAGES,TITLE FROM SOFTWARE WHERE (SCOST * SOLD) < DCOST;

-- 36) List the packages which have not been sold so far?

SELECT TITLE AS SOFTWARE FROM Software WHERE SOLD = 0;

-- 37) Find out the cost of the software developed by shravya?

SELECT SCOST FROM Software WHERE NAME = 'shravya';
-- 38) Display the institute’s names from the studies table without duplicates?

SELECT DISTINCT SPLACE AS INSTITUTE_NAME FROM STUDIES;
-- 39) How many different courses are mentioned in the studies table?

SELECT COUNT(DISTINCT COURSE) AS DIFF_COURSES FROM STUDIES;
-- 40) Display the names of the programmers whose names contain 2 occurrences of the letter A?

SELECT NAME FROM PROGRAMMER WHERE NAME LIKE('%a%a%');

-- 41) Display the names of programmers whose names contain unto 5 characters?

SELECT NAME FROM PROGRAMMER WHERE NAME LIKE('_____');
-- 42)How many female programmers knowing COBOL have more than 2 years experience?
select name,dob,doj,sex,salary,DATEDIFF(CURDATE(),DOJ)/365 as experience from programmer;

-- 43) What is the length of the shortest name in the programmer table?

SELECT MIN(NAME) AS NAME FROM PROGRAMMER;

-- 44) What is the average development cost of a package developed in COBOL?

SELECT AVG(DCOST) AS AVG_DEV_COST FROM SOFTWARE WHERE DEV_IN = 'C';

-- 45) Display the name, sex, dob (DD/MM/YY format), doj for all the programmers without using conversion function?
select name,sex,dob,doj from programmer;
-- 46) Who are the programmers who were born on the last day of the month?
select name from programmer where dob=LAST_DAY(dob);

-- 47) What is the amount paid in salaries of the male programmers who do not know Cobol?
select name,prof1,prof2,salary from programmer where sex='m' and (prof1 not in ('cobol') and prof2!='cobol') ;

-- 48) Display the title, scost, dcost and difference between scost and dcost in descending order of difference?

SELECT TITLE,SCOST,DCOST,(SCOST-DCOST) AS DIFFERENCE_DCOST

FROM SOFTWARE ORDER BY (SCOST-DCOST) DESC;

-- 48) Display the title, scost, dcost and difference between scost and dcost in descending order of difference?
select title,scost,dcost,(dcost-scost) as difference from software order by difference desc;

-- 50) Display the names of the packages whose names contain more than 1 word?

SELECT TITLE AS PACKAGES FROM SOFTWARE WHERE TITLE LIKE ('__%');

-- QUERIES - II

-- 1) Display THE NUMBER OF packages developed in EACH language.

SELECT dev_in AS LANGUAGE, COUNT(TITLE) AS PACKAGE FROM Software GROUP BY dev_in;

-- 2) Display THE NUMBER OF packages developed by EACH person.

SELECT NAME AS PNAME, COUNT(TITLE) AS PACKAGE FROM Software GROUP BY NAME;

-- 3) Display THE NUMBER OF male and female programmer.

SELECT SEX, COUNT(NAME) AS NAME FROM Programmer GROUP BY SEX;

-- 4) Display THE COSTLIEST packages and HIGEST selling developed in EACH language.

SELECT DEV_IN AS LANGUAGE, MAX(SCOST) AS COSTPACK, MAX(SOLD) AS HIGHPACK FROM Software GROUP BY dev_in;

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

SELECT PROF1 AS LANGUAGE, COUNT(PROF1) AS P1COUNT FROM Programmer GROUP BY prof1;

-- 10) Display the language wise COUNTS of prof2.

SELECT PROF2 AS LANGUAGE, COUNT(PROF2) AS P2COUNT FROM Programmer GROUP BY prof2;

-- 11) Display THE NUMBER OF people in EACH salary group.

SELECT SALARY AS SALARY, COUNT(NAME) AS PEOPLE FROM Programmer GROUP BY SALARY;

-- 12) Display THE NUMBER OF people who studied in EACH institute.

SELECT SPLACE AS INSTITUTE, COUNT(NAME) AS PEOPLE FROM Studies GROUP BY SPLACE;
-- 13) Display THE NUMBER OF people who studied in EACH course.

SELECT COURSE AS STUDY, COUNT(NAME) AS PEOPLE FROM Studies GROUP BY COURSE;
-- 14) Display the TOTAL development COST of the packages developed in EACH language.

SELECT DEV_IN AS LANGUAGE, SUM(DCOST) AS TOTALCOST FROM Software GROUP BY DEV_IN;

-- 15) Display the selling cost of the package developed in EACH language.

SELECT DEV_IN AS LANGUAGE, SUM(SCOST) AS SELLCOST FROM Software GROUP BY DEV_IN;

-- 16) Display the cost of the package developed by EACH programmer.

SELECT NAME AS PNAME, SUM(DCOST) AS TOTALCOST FROM Software GROUP BY NAME;

-- 17) Display the sales values of the package developed in EACH programmer.

SELECT NAME AS PNAME, SUM(SCOST*SOLD) AS SALESVALUE FROM Software GROUP BY NAME;

-- 18) Display the NUMBER of packages developed by EACH programmer.

SELECT NAME AS PNAME, COUNT(TITLE) AS TPACK FROM Software GROUP BY NAME;

-- 19) Display the sales COST of packages developed by EACH programmer language wise.

SELECT dev_in AS language, SUM(scost) AS SALECOST FROM Software GROUP BY dev_in;

-- 20) Display EACH programmers name, costliest package and cheapest packages developed by Him/Her.

SELECT NAME AS PNAME, MAX(DCOST) AS COSTLIEST, MIN(DCOST) AS CHEAPIEST FROM Software GROUP BY NAME;

-- 21) Display EACH language name with AVERAGE development cost, AVERAGE cost, selling cost and AVERAGE price per copy.

SELECT DEV_IN AS LANGUAGE, AVG(DCOST) AS AVERAGE_DEV_COST, AVG(SCOST) AS AVERAGE_SELL_COST, AVG(SCOST) AS PRICE_PER_COPY FROM Software GROUP BY dev_in;

--  22) Display EACH institute name with NUMBER of courses, AVERAGE cost per course.

SELECT SPLACE AS INTITUTE, COUNT(COURSE) AS NOOFCOURSE, AVG(CCOST) AS AVGCOSTPERCOURSE FROM Studies GROUP BY splace;

-- 23) Display EACH institute name with NUMBER of students.

SELECT SPLACE AS INSTITUTE, COUNT(NAME) AS NO_OF_STUDENTS FROM Studies GROUP BY splace;

-- 24) Display names of male and female programmers.

SELECT NAME AS PNAME, SEX AS SEX FROM Programmer ORDER BY SEX;
  -- 25) Display the programmer's name and their packages.

SELECT NAME AS PNAME, TITLE AS PACKAGES FROM Software  ORDER BY NAME

-- 26) Display the NUMBER of packages in EACH language.

 select COUNT(TITLE) AS PACKAGES, DEV_IN AS LANGUAGES FROM SOFTWARE GROUP BY DEV_IN;
 
 -- 27) Display the NUMBER of packages in EACH language for which development cost is less than 1000.

SELECT COUNT(TITLE) AS NO_OF_PACKAGES, DEV_IN AS LANGUAGES FROM Software WHERE DCOST < 1000 GROUP BY DEV_IN;

-- 28) Display the AVERAGE difference BETWEEN scost and dcost for EACH language.

SELECT DEV_IN AS LANGUAGES, AVG(SCOST)- AVG(DCOST) DIFFERENCE FROM Software GROUP BY DEV_IN;

-- 29) Display the TOTAL scost, dcsot and amount TOBE recovered for EACH programmer for whose dcost HAS NOT YET BEEN recovered.

SELECT SUM(SCOST) AS TOTALSCOST, SUM(DCOST) AS TOTALDCOST, SUM(DCOST-(SOLD*SCOST)) AS AMOUNT_TO_BE_RECOVERED FROM Software GROUP BY NAME;

-- 30) Display highest, lowest and average salaries for THOSE earning MORE than 2000.

SELECT MAX(SALARY) AS HIGHEST_SALARY, MIN(SALARY) AS LOWEST_SALARY, AVG(SALARY) AS AVERAGE_SALARY FROM PROGRAMMER WHERE SALARY > 2000;

-- QUERIES - III

-- 1) Who is the highest paid C programmer?

SELECT * FROM PROGRAMMER WHERE SALARY = (SELECT MAX(SALARY) FROM PROGRAMMER WHERE PROF1 LIKE 'C' OR PROF2 LIKE 'C');

-- 2) Who is the highest paid female cobol programmer?

SELECT * FROM PROGRAMMER WHERE SALARY = (SELECT MAX(SALARY) FROM PROGRAMMER WHERE (PROF1 LIKE 'C' OR PROF2 LIKE 'JAVA')) AND SEX = 'F';

-- 3) Display the name of the HIGEST paid programmer for EACH lang

SELECT DISTINCT NAME,SALARY, PROF1 FROM PROGRAMMER WHERE (salary, PROF1) IN (SELECT MAX(SALARY), PROF1 FROM PROGRAMMER GROUP BY PROF1);

-- 4) Who is the LEAST experienced programmer?
select min(timestampdiff(year,doj,curdate())) as least_experience from programmer ;

-- 5) Who is the MOST experienced programmer?
select max(timestampdiff(year,doj,curdate())) as most_experience from programmer ;

-- 6) Which language is known by ONLY ONE programmer?

select prof1 from Programmer group by prof1 having prof1 not in (select prof2 from Programmer ) and count(prof1)=1

union select prof2 from Programmer group by prof2 having prof2 not in (select prof1 from Programmer ) and count(prof2)=1;

-- 7) Who is the YONGEST programmer knowing DBASE?
select name ,timestampdiff(year,dob,curdate()) as youngest_programmer from programmer where prof1='dbase' or prof2='dbase' order by youngest_programmer limit 1;

-- 8) Which institute has MOST NUMBER of students?
select splace,count(splace) from studies group by splace order by count(splace) desc limit 1;

-- -- 10) Which female programmer earns MORE than 3000/- but DOES NOT know C, C++, Oracle or Dbase?
select name,doj,dob,sex,prof1,prof2,salary from programmer where sex='f' and salary>3000 and (prof1 not in ('C','c++','oracle','dbase') and prof2 not in ('C','c++','oracle','dbase'));

-- 11) Which is the COSTLIEST course?

select course from Studies where ccost=(select max(ccost) from Studies);

-- 12) Which course has been done by MOST of the students?
select course,count(course) from studies group by course order by count(course) desc limit 1;
-- 13) Display name of the institute and course Which has below AVERAGE course fee?

select splace ,course from Studies where ccost < (select avg(ccost) from Studies);

-- 14) Which institute conducts COSTLIEST course?

select splace from Studies where ccost=(select max(ccost) from Studies);

-- 15) Which course has below AVERAGE number of students?
select * from studies;
select * from (select splace,count(splace) as cnt from studies group by splace) as stu where cnt<(select avg(cnt) from studies);

-- 16) Which institute conducts the above course?

-- 17) Display names of the course WHOSE fees are within 1000(+ or -) of the AVERAGE fee.
select * from studies where ccost between (select avg(ccost) from studies)-1000 and (select avg(ccost) from studies)+1000;

-- 18) Which package has the HIGEST development cost?

select title,dcost from Software where dcost=(select max(dcost) from Software);

-- 19) Which package has the LOWEST selling cost?

select title,scost from Software where scost=(select min(scost) from Software);

-- 20) Who developed the package, which has sold the LEAST number of copies?

select name,sold from Software where sold=(select min(sold) from Software);

-- 21) Which language was used to develop the package WHICH has the HIGEST sales amount?

select dev_in,scost from Software where scost=(select max(scost) from Software);

-- 22) How many copies of the package that has the LEAST DIFFRENCE between development and selling cost were sold?
select name ,title, dev_in, dcost-scost as least_difference,sold from software where (dcost-scost)=(select min(dcost-scost) from software);

-- 23) Which is the COSTLIEAST package developed in PASCAL?

select title from Software where dcost=(select max(dcost) from Software where dev_in like 'pascal');
-- 24) Which language was used to develop the MOST NUMBER of package?

select dev_in from Software group by dev_in having max(dev_in)=(select max(dev_in) from Software)

-- 25) Which programmer has developed the HIGEST NUMBER of package?

-- 26) Who is the author of the COSTLIEST package?


-- 26) Who is the author of the COSTLIEST package?
select * from software where scost=(select max(scost) from software);

-- 27) Display names of packages WHICH have been sold LESS THAN the AVERAGE number of copies?

select title from Software where sold<(select avg(sold) from Software);

-- 28) Who are the female programmers earning MORE than the HIGEST paid male programmers?

select name from Programmer where sex='female' and salary>(select(max(salary)) from Programmer where sex='male');

-- 29) Which language has been stated as prof1 by MOST of the programmers?

select prof1 from Programmer group by prof1 having prof1=(select max(prof1) from Programmer );

-- 30) Who are the authors of packages, WHICH have recovered MORE THAN double the development cost?

select name from Software where sold*scost>2*dcost

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

-- QUERY - IV

-- 1) Display the details of THOSE WHO are drawing the same salary.

SELECT a.name,a.salary from Programmer a, Programmer b where a.SALARY = b.SALARY and a.name <> b.name;

-- 2) Display the details of software developed by male programmers earning MORE than 3000.

SELECT S.* FROM [Programmer] P INNER JOIN [Software] S on P.NAME= S.NAME AND P.SEX ='MALE' AND P.SALARY > 3000;

-- 3) Display details of packages developed in PASCAL by female programmers.

SELECT S.*
FROM ['Programmer']P, [Software] S
WHERE P.NAME = S.name AND dev_in = 'PASCAL' AND SEX = 'f';

-- 5) Display details of software developed in C by female programmers of PRAGATHI.

SELECT S.*

FROM PROGRAMMER P, SOFTWARE S, Studies ST

WHERE P.NAME = S.NAME AND S.NAME = ST.NAME AND S.dev_in = 'C' AND P.SEX = 'FEMALE' AND ST.splace = 'SPHOORTHY';

-- 6) Display NUMBER of packages NUMBER of copies sold and sales value of EACH programmer Institute-wise.

SELECT ST.SPLACE, COUNT(S.DEV_IN) as packages, COUNT(S.SOLD) as sold, SUM(S.SOLD*S.SCOST) as sales FROM Software S, STUDIES ST

WHERE S.name =ST.name GROUP BY ST.splace;

-- 7) Display details of software developed in DBASE by male programmers WHO belong to the institute on which MOST NUMBER OF programmer’s studies.



-- 8) Display the details of the software that was developed by male programmers born BEFORE 1965 and female programmers born AFTER 1975.



-- 9) Display the details of the software that was developed in the language that is NOT the programmer first proficiency.

-- 9) Display the details of the software that was developed in the language that is NOT the programmer’s first proficiency.

SELECT S.*

FROM Software S, Programmer P

WHERE S.NAME = P.NAME AND S.dev_in = P.PROF2;

-- 10) Display details of software that was developed in the language which is NEITHER first NOR second proficiency of the programmer.

SELECT S.*
FROM Software S, Programmer P
WHERE S.NAME = P.NAME AND S.dev_in != P.PROF2 AND S.dev_in != p.prof1

-- 11) Display details of software developed by male students of SABHARI.
 
 SELECT S.*

FROM Studie st, Programmer P, Software S

WHERE S.NAME = ST.NAME AND P.NAME = ST.NAME AND P.SEX = 'MALE' and st.splace = 'sphoorthy';

-- 12) Display the names of programmers WHO HAVE NOT developed any package.

SELECT P.NAME

FROM Programmer P, Software S

WHERE P.NAME = S.NAME AND S.dev_in = 'Nul';

-- 13) What is the total cost of the software developed by the programmers by APPLE?

SELECT SUM(SCOST)

FROM Software S, Studies ST

WHERE SPLACE = 'SPHOORTHY';
-- 14) Who are the programmers WHO JOINED in the same day?

SELECT A.NAME,A.DOJ

FROM PROGRAMMER A, PROGRAMMER B

WHERE A.DOJ=B.DOJ AND A.NAME<> B.NAME;
-- 15) Who are the programmers WHO HAVE THE SAME PROF2?

SELECT DISTINCT(A.NAME),A.PROF2

FROM PROGRAMMER A, PROGRAMMER B

WHERE A.PROF2=B.PROF2 AND A.NAME<> B.NAME;
-- 16) Display the total sales values of software, institutes-wise.

SELECT STUDIES.splace, SUM(SOFTWARE.SOLD * SOFTWARE.SCOST) AS SALES

FROM SOFTWARE, STUDIES

WHERE STUDIES.NAME = SOFTWARE.NAME GROUP BY STUDIES.SPLACE;

-- 17) In which institutes did the person who developed the COSTLIEST package study?

SELECT splace FROM SOFTWARE S, STUDIES ST

WHERE ST.NAME= S.NAME GROUP BY SPLACE,DCOST

HAVING MAX(DCOST) = (SELECT MAX(DCOST) FROM SOFTWARE);
-- 18) Which language listed in prof1 and prof2 HAS NOT BEEN used to develop any package?

SELECT PROF1 FROM PROGRAMMER WHERE PROF1 NOT IN(SELECT DEV_IN FROM SOFTWARE)
-- 19) How much does the person WHO developed the HIGHEST selling package earn and WHAT course did he/she undergo?

SELECT P1.SALARY, S2.COURSE
FROM PROGRAMMER P1, SOFTWARE S1, STUDIES S2
WHERE P1.NAME=S1.NAME AND S1.NAME = S2.NAME AND SCOST = (SELECT MAX(SCOST) FROM SOFTWARE)

UNION SELECT PROF2 FROM PROGRAMMER WHERE PROF2 NOT IN(SELECT DEV_IN FROM SOFTWARE)


