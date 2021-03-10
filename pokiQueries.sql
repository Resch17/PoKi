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

--6
/*
SELECT Top 76 a.Name, g.Name as Grade, gen.Name as Gender
	FROM Author a
		LEFT JOIN Grade g on g.Id = a.GradeId
		Left Join Gender gen on gen.Id = a.GenderId
	ORDER BY a.Name;
*/

--7
/*
SELECT SUM(WordCount) as TotalWordsInPoems FROM Poem;
*/

--8
/*
SELECT top 1 Title, WordCount 
	FROM Poem
	ORDER BY WordCount;
*/

--9
/*
SELECT COUNT(*) as Grade3Authors
	FROM Author
	WHERE GradeId = 3;
-- 2344
*/

--10
/*
SELECT COUNT(*) as AuthorCount
	FROM Author
	WHERE GradeId = 1 or GradeId = 2 or GradeId = 3;
-- 4404
*/

--11
/*
SELECT COUNT(*) as FourthGradePoems
	FROM Poem p
		LEFT JOIN Author a on p.AuthorId = a.Id
	WHERE a.GradeId = 4;
-- 10806
*/

-- 12
/*
SELECT COUNT(*) as PoemsPerGrade, a.GradeId as Grade
	FROM Poem p
		LEFT JOIN Author a on p.AuthorId = a.Id
	GROUP BY a.GradeId
	ORDER BY a.GradeId;
*/

--13
/*
SELECT GradeId as Grade, COUNT(*) as AuthorsPerGrade
	FROM Author
	GROUP BY GradeId
	ORDER BY GradeId;
*/

--14
/*
SELECT Top 1 Title
	FROM Poem
	ORDER BY WordCount desc;
-- The Misterious Black
*/

--15
/*
SELECT Top 1 Count(*) as PoemCount, a.Name, a.Id as AuthorId
	FROM Poem p
		LEFT JOIN Author a on a.Id = p.AuthorId
	GROUP BY a.Id, a.Name
	ORDER BY PoemCount desc;
-- jessica - 118
*/

--16
/*
SELECT COUNT(*) as SadPoems 
	FROM PoemEmotion pe
		LEFT JOIN Emotion e on e.Id = pe.EmotionId
	WHERE e.Name = 'Sadness';
-- 14570
*/


--17
/*
SELECT COUNT(*) as EmotionlessPoems 
	FROM Poem p
		LEFT JOIN PoemEmotion pe on p.Id = pe.PoemId
	WHERE pe.Id IS NULL;
-- 3368
*/

--18
/*
SELECT Top 1 COUNT(*) as PoemCount, e.Name as Emotion
	FROM PoemEmotion pe
		LEFT JOIN Emotion e on e.Id = pe.EmotionId
	GROUP BY e.Name
	ORDER BY PoemCount;
-- Anger - 11105
*/

-- 19
/*
SELECT Top 1 COUNT(*) as JoyfulPoems, a.GradeId as Grade
	FROM Poem p
		JOIN Author a on p.AuthorId = a.Id
		JOIN PoemEmotion pe on p.Id = pe.PoemId
	WHERE pe.EmotionId = 4
	GROUP BY a.GradeId
	ORDER BY JoyfulPoems desc;
-- 5th Grade - 8928
*/

-- 20
/*
SELECT TOP 1 COUNT(*) as FearfulPoems, g.Name as Gender
	FROM Poem p
		JOIN Author a on p.AuthorId = a.Id
		JOIN Gender g on a.GenderId = g.Id
		JOIN PoemEmotion pe on p.Id = pe.PoemId
		JOIN Emotion e on e.Id = pe.EmotionId
	WHERE e.Name = 'Fear'
	GROUP BY g.Name
	ORDER BY FearfulPoems;
-- Ambiguous - 1435
*/