-- Stored Procedures
SELECT *
FROM employee_salary
WHERE salary >= 50000
;

CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();

CREATE PROCEDURE large_salaries3()
SELECT *
FROM employee_salary
WHERE salary >= 50000;
SELECT *
FROM employee_salary
WHERE salary >= 10000;

CALL large_salaries3();

DELIMITER $$
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries2();

DELIMITER $$

-- Using parameters
CREATE PROCEDURE large_salaries6(employee_id_param INT)
BEGIN
	SELECT Salary
	FROM employee_salary
	WHERE employee_id = employee_id_param;
END $$

DELIMITER ;

CALL large_salaries6(1);



