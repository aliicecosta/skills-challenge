CREATE TABLE Students ( id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR(20), value INTEGER )

INSERT INTO Students
	(name, value)
VALUES
	('Julia', 81),
    ('Carol', 68),
    ('Maria', 99),
    ('Andreia', 78),
    ('Jaqueline', 63),
    ('Marcela', 88);

CREATE TABLE Notes ( grade INTEGER, min_value INTEGER, max_value INTEGER )

INSERT INTO Notes
	(grade, min_value, max_value)
VALUES
	(1,0,9),
    (2,10,19),
    (3,20,29),
    (4,30,39),
    (5,40,49),
    (6,50,59),
    (7,60,69),
    (8,70,79),
    (9,80,89),
    (10,90,100);

SELECT CASE WHEN n.grade < 8 THEN NULL ELSE s.name END AS name, n.grade, s.value
FROM Students s
INNER JOIN Notes n
ON s.value < n.max_value and s.value > n.min_value
ORDER BY n.grade desc, s.name ASC

SELECT IF(n.grade < 8, NULL, s.name) AS name, n.grade, s.value
FROM Students s
INNER JOIN Notes n
ON s.value < n.max_value and s.value > n.min_value
ORDER BY n.grade desc, s.name ASC

-- FINAL QUERY
SELECT CASE WHEN n.grade < 8 THEN NULL ELSE s.name END AS name, n.grade, s.value
FROM Students s
INNER JOIN Notes n
ON s.value < n.max_value and s.value > n.min_value
ORDER BY 
	CASE WHEN n.grade >= 8 then n.grade END DESC,
    CASE WHEN n.grade >= 8 then s.name END ASC,
    CASE WHEN n.grade < 8 then n.grade END DESC,
    CASE WHEN n.grade < 8 then s.value END ASC