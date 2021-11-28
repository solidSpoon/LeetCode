CREATE TABLE IF NOT EXISTS Employee
(
    Id     int,
    Salary int
);

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N := N - 1;
    RETURN (
        # Write your MySQL query statement below.
        SELECT IFNULL(
                       (SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT 1 OFFSET N), NULL
                   )
    );
END

#TODO