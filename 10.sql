 --
 SELECT *
 FROM students
 WHERE [student age]
 BETWEEN 10 AND 20;
 -- RETRIEVING STRINGS THAT MATCHES A PATTERN
 SELECT *
 FROM students
 WHERE [student name]
 LIKE 'A___';

 SELECT *
 FROM students
 WHERE [student name]
 LIKE 'al%';

SELECT *
FROM students
WHERE [student name]
LIKE '[AJ][UT]';

SELECT *
FROM students
WHERE [student name]
LIKE '[AJ][UD]___t';

SELECT *
FROM students
WHERE [student name]
LIKE '[^AJ]%';

--USING GROUP BY CLAUSE
--GROUP BY CLAUSE helps to group related records as one group
ALTER TABLE students
ADD [course type]varchar(20)

UPDATE students
SET [course type] ='ADSE'
WHERE [student name] LIKE 'AL%';

UPDATE students
SET [course type] ='Hardweb'
WHERE [student name] LIKE'JU%';

UPDATE students
SET [course type] ='Data Science'
WHERE[course type] IS NULL;

SELECT [course type]
FROM students
GROUP BY [course type];

--AGGREGATE FUNCTIONS 
SELECT *
FROM students;

SELECT COUNT([student name])
FROM students;

SELECT MIN([student age])
FROM students;

SELECT MAX([student age])
FROM students;

SELECT SUM ([student age])
FROM students;

SELECT SUM([student age])/ COUNT([student age])
FROM students;

SELECT AVG([student age])
FROM students;

--COMBINING GROUP BY CLAUSE OR FUNCTION WITH AGGREGATE FUNCTION

SELECT [course type],
COUNT([student name]) AS StudentsPerCourse,
MIN([student age]) AS MinimumAge,
MAX([student age]) AS MaximumAge
FROM students
GROUP BY[course type];

--ORDER BY FUNCTION HELPS TO ARRANGE A PARTICULAR RECORD OR VALUES IN A COLUMN EITHER IN ASCENDING OR DESCENDING ORDER
SELECT*
FROM students
ORDER BY [student age];

-- ORDER BY FUNCTION IN DESCENDING ORDER
SELECT*
FROM students
ORDER BY[student age] DESC;

--ORDER BY FUNCTION IN ASCENDING ORDER
SELECT*
FROM students
ORDER BY [student age] ASC;

--COMBINING THE WHERE CLAUSE,GROUP BY AND ORDER BY FUNCTION TOGETHER
SELECT[course type]
FROM students
WHERE [student age] > 20
GROUP BY[course type]
ORDER BY[course type] DESC;

--USING SELECT WITHOUT FROM
SELECT 3*5;
SELECT 10 % 3;

--USING SELECT WITH CERTAIN STRING METHODS
SELECT LEFT('BRUNO MARS',5)
