USE LMS;
1.
SELECT* FROM Candidate_Bank_Details
WHERE Candidate_Id=1;

2.
SELECT* FROM Candidate_Bank_Details
WHERE Candidate_Id=1 AND Name='Chaithra';

3.
SELECT *FROM Candidate_Qualification
WHERE degree_name=BE 
ORDER_BY  `training_institute` DESC;
 


 4.
 SELECT* FROM Candidate_Qualification
 WHERE passing_year BETWEEN 2011 AND 2019;


 5.
 SELECT * FROM Fellowship_Candidate
 WHERE First_Name LIKE 'C%';
 --FRIST NAME STARTS WITH C

 6.
 SELECT * FROM Fellowship_Candidate
 WHERE First_Name LIKE '%C';
 --WHERE FRIST NAME ENDS WITH C


 7.
--FRST NAME ANYWHERE COTAINS C AND ORDERBY THERE FIRST NAME IN DESC
 SELECT * FROM `Fellowship_Candidate`
 WHERE `First_Name` LIKE '%C%'
 AND ORDER BY  First_Name DESC;


 8.
SELECT *FROM Fellowship_Candidate
WHERE Hired_City IN('Bangalore, Mumbai');

9.
SELECT *FROM Fellowship_Candidate
where Mobile_Number IS NOT_NULL;

10.
SELECT *FROM Fellowship_Candidate
where Mobile_Number IS NULL;

11.
SELECT *FROM Fellowship_Candidate
WHERE Joining_Date>'2020-01-01';

12.
--IT WILL LIMIRT THE CANDIDATE TO 4 MEANS IT WILL SHOW ONLY 4  ISTEAD OF ALL CANDIDATE DEATILS
SELECT *FROM Fellowship_Candidate
LIMIT 4;

13.
SELECT *FROM Fellowship_Candidate
LIMIT 2,3;
--it will exclude frst 2 candidates and then it will show 3 candidates details

14
SELECT First_Name,Emailid
FROM Fellowship_Candidate;
--another way of retriving the data of fellowship candidate


15.
SELECT *FROM Fellowship_Candidate
WHERE Emailid IS NOT_NULL OR 
Mobile_Number LIKE '%9';


16.
SELECT *FROM Fellowship_Candidate
WHERE Joining_Date>= '2020-01-02' AND
Hired_Lab=bangalore OR Hired_Lab='Mumbai';


17.
SELECT *FROM Fellowship_Candidate
WHERE Candidate_Status='joined' OR
Document_Status='Verified';

18.
SELECT* FROM Fellowship_Candidate
WHERE NOT(Local_Address=NULL OR Permanent_Address=NULL);


19.
--REGEX EXAMPLE
SELECT*  FROM Fellowship_Candidate
WHERE First_Name REGEXP 'chaithra';

20.
-- first name start with chaithra 
SELECT* FROM Fellowship_Candidate
WHERE First_Name REGEXP '^chaithra';


21.
-- it will check all 3 names and list it out
SELECT *FROM Fellowship_Candidate
WHERE First_Name REGEXP 'Chaithra|Archana|Banu';

22.
--$ it will indiacte whose name ends with 
SELECT* FROM Fellowship_Candidate
WHERE Last_Name REGEXP 'Nagraj$';


23.
SELECT *FROM Fellowship_Candidate
WHERE Last_Name REGEXP '[gak]j';
--this will check last name with before g,a,k, with j
--means either gj,or,aj,or kj


24.
SELECT *FROM Fellowship_Candidate
WHERE First_Name REGEXP '[A-Z]';
--IT i will indicate like any char in between a to z

25.

SELECT *FROM Company
WHERE location='Bangalore'
ORDER BY name DESC;


--JOINS


26.
SELECT *FROM Fellowship_Candidate
JOIN Hired_Candidate
ON Fellowship_Candidate.Id=Hired_Candidate.Id;


27.
SELECT *FROM Fellowship_Candidate
JOIN Hired_Candidate
ON Fellowship_Candidate.Id=Hired_Candidate.Id
WHERE Hired_Candidate.Mobile_Number='NOT NULL'
Fellowship_Candidate.First_Name='chaithra';
