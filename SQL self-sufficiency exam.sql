--1
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'naep';

--2
SELECT *
FROM naep
LIMIT 50;

--3
SELECT state, COUNT(avg_math_4_score) AS count, AVG(avg_math_4_score) AS average,
MAX(avg_math_4_score) AS maximum, MIN(avg_math_4_score) AS minimum
FROM naep
GROUP BY state
ORDER BY state DESC;

--4
SELECT state, COUNT(avg_math_4_score) AS count, AVG(avg_math_4_score) AS average,
MAX(avg_math_4_score) AS maximum, MIN(avg_math_4_score) AS minimum
FROM naep
GROUP BY state
HAVING MAX(avg_math_4_score) - MIN(avg_math_4_score) > 30
ORDER BY state DESC;

--5
SELECT state AS bottom_10_states
FROM naep
WHERE year = 2000
ORDER BY avg_math_4_score DESC
LIMIT 10;

--6
SELECT state, ROUND(AVG(avg_math_4_score),2)
FROM naep
WHERE year = 2000
GROUP BY state;

--7
-- The result is not distinct so I will use to different code
SELECT state AS below_average_states_y2000
FROM naep
WHERE avg_math_4_score <  ALL
    (SELECT AVG(avg_math_4_score)
FROM naep
WHERE year = 2000) ;

-- This is the same query with distinct result
SELECT DISTINCT(state) AS below_average_states_y2000
FROM naep
WHERE avg_math_4_score <  ALL
    (SELECT AVG(avg_math_4_score)
FROM naep
WHERE year = 2000) ;

--8
SELECT state AS scores_missing_y2000
FROM naep
WHERE avg_math_4_score is null AND year = 2000;

--9
SELECT naep.state, ROUND(avg_math_4_score,2), total_expenditure
FROM naep LEFT OUTER JOIN finance
ON naep.id = finance.id
WHERE naep.year = 2000 AND avg_math_4_score IS NOT null
ORDER BY total_expenditure;