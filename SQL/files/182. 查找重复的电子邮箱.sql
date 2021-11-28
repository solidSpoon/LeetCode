CREATE TABLE IF NOT EXISTS Person
(
    id    int,
    email varchar(255)
);


###
SELECT email
FROM Person
WHERE id IN (SELECT MAX(id) FROM Person GROUP BY email HAVING (COUNT(1) > 1));

SELECT email
FROM Person
GROUP BY email
HAVING COUNT(1) > 1;

