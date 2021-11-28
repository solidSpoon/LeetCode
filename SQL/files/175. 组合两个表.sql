CREATE TABLE IF NOT EXISTS Person
(
    personId  int,
    firstName varchar(255),
    lastName  varchar(255)
);
CREATE TABLE IF NOT EXISTS Address
(
    addressId int,
    personId  int,
    city      varchar(255),
    state     varchar(255)
);

SELECT firstName, lastName, city, state
FROM Person A1
         LEFT JOIN Address A2 ON A1.personId = A2.personId;