-- Review basic's section
-- view students table
SELECT
    *
FROM students;

-- the big 6
SELECT
    grade_level,
    ROUND(AVG(gpa), 2) AS avg_gpa
FROM students
WHERE school_lunch = 'Yes'
GROUP BY grade_level
HAVING ROUND(AVG(gpa), 2) < 3.3
ORDER BY grade_level;
-- common keywords

-- distinct
SELECT DISTINCT
    grade_level
FROM students;
-- count
SELECT
    COUNT(DISTINCT grade_level)
FROM students;
-- MAX and MIN
SELECT
    MAX(gpa),
    MIN(gpa)
FROM students;

-- gpa range
SELECT
    MAX(gpa) - MIN(gpa) AS gpa_range
FROM students;
-- AND
SELECT
    *
FROM students
WHERE grade_level < 12 AND school_lunch = 'Yes';

-- in

-- is null

-- like