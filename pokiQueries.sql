-- 1
/*
SELECT Name
	FROM Grade;
-- 1st thru 5th grade
*/

--2 
/*
SELECT Name
	FROM Emotion;
-- Anger, Fear, Sadness, Joy
*/

--3
/*
SELECT Count(*) as PoemCount
	FROM Poem;
-- 32842
*/

--4
/*
SELECT Top 76 Name
	FROM Author
	ORDER BY Name;
*/

--5
/*
SELECT Top 76 a.Name, g.Name as Grade
	FROM Author a
		LEFT JOIN Grade g on g.Id = a.GradeId
	ORDER BY a.Name;
*/