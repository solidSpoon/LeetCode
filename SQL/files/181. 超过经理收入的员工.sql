CREATE TABLE IF NOT EXISTS Employee
(
    id        int,
    name      varchar(255),
    salary    int,
    managerId int
);

###
SELECT a.name AS Employee
FROM Employee a
         LEFT JOIN Employee b ON a.managerId = b.id
WHERE a.salary > b.salary;

###
SELECT a.name AS Employee
FROM Employee a,
     Employee b
WHERE a.managerId = b.id
  AND a.salary > b.salary;