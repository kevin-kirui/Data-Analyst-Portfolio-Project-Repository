-- CASE STATEMENTS
SELECT first_name, last_name, age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Adult'
    WHEN age >= 50 THEN 'Old'
END AS age_bracket
FROM employee_demographics
;
-- Pay Increase and Bonus
-- < 50000 = 5% 
-- > 70000 = 7% 
-- Finance = 10% 
SELECT first_name, last_name, salary,
CASE
	WHEN salary <= 50000 THEN Salary * 1.05
    WHEN salary >= 50000 THEN Salary * 1.07
END AS new_salary,
CASE
	WHEN dept_id = 6 Then salary * 1.10
END AS bonus
FROM employee_salary
;