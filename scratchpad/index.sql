.open dreamhome.sqlite
.mode column

SELECT staffno, fname, lname, position, salary - (SELECT AVG(salary) FROM STAFF) AS salary_difference
FROM STAFF 
WHERE salary > (SELECT AVG(salary) FROM STAFF)


