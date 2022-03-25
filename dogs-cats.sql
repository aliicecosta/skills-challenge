CREATE TABLE dogs (id INTEGER NOT NULL PRIMARY KEY, name VARCHAR(50) NOT NULL)

CREATE TABLE cats (id INTEGER NOT NULL PRIMARY KEY, name VARCHAR(50) NOT NULL)

INSERT INTO dogs
    (name)
VALUES
    ('Bob'),
    ('Lary')

INSERT INTO cats
    (name)
VALUES
    ('Fuku'),
    ('Zoio'),
    ('Bob')

SELECT DISTINCT name
FROM (SELECT name from dogs UNION SELECT name from cats)