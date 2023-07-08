SELECT day, time
FROM meetings AS m, records AS r
WHERE m.division = r.division
AND r.supervisor = 'Oliver Warbucks';


SELECT employee.name
FROM records AS employee, records AS supervisor
WHERE employee.supervisor = supervisor.name
AND employee.division <> supervisor.division;


SELECT m.day
FROM meetings AS m, records AS r
WHERE m.division = r.division
GROUP BY m.day
HAVING COUNT(*) < 5;