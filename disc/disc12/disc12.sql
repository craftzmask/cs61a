SELECT name
FROM records
WHERE supervisor = "Oliver Warbucks"


SELECT *
FROM records
WHERE name = supervisor;


SELECT name
FROM records
WHERE salary > 50000
ORDER BY name ASC;


SELECT name, salary2023 - salary2022
FROM salaries
ORDER BY salary2023 - salary2022 DESC
LIMIT 3;