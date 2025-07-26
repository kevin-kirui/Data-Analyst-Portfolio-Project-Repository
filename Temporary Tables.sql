-- Temporary Tables -- Lives in Memory only within a session
-- Option 1
CREATE TEMPORARY TABLE temp_table
(first_name VARCHAR(50),
last_name VARCHAR(50),
movie_title VARCHAR(100)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES('Kevin', 'Kirui', 'Avengers: The Last Dream of American Call IIV');
SELECT *
FROM temp_table;

-- Option 2
SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k;
