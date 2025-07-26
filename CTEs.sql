-- CTEs

WITH CTE_Example (Gender, Avg_sal, Max_sal, Min_sal, Count_sal)AS 
(
SELECT gender, AVG(salary) AS avg_salary, MAX(salary) AS max_salary, MIN(salary) AS min_salary, COUNT(salary) AS count_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = dem.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Examplesalarysalary
;
-- Multiple CTEs - 2
WITH CTE_Example AS
(
SELECT gender, employee_id, birth_date
FROM employee_demographics
WHERE birth_date > '1985-01-01'
),
CTE_Example2 AS
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_Example
JOIN CTE_Example2
	ON CTE_Example.employee_id = CTE_Example2.employee_id
;
