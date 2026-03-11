SQL-Roadmap
# CREATEING TABLE #
 CREATE TABLE students (
 id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
    );
# INSERTING DATA #
INSTERT INTO students (id,name,age)
values (1,'JIN',20);
# ACCESSING DATA #
SELECT * FROM students;
# OUTPUT TABLE #
![Table creation](images/New_Table.png)

# FILTERING #


# Show all students #
SELECT * FROM students;

# Filter students older than 22 #
SELECT * FROM students
WHERE age > 22;

# Filter students with age equal to 21 #
SELECT * FROM students
WHERE age = 21;

# Filter students with age between 21 and 30 #
SELECT * FROM students
WHERE age BETWEEN 21 AND 30;

# Filter students with specific ages #
SELECT * FROM students
WHERE age IN (21,25);

# Filter students not having age 21 #
SELECT * FROM students
WHERE age NOT IN (21);

# Filter names starting with S #
SELECT * FROM students
WHERE name LIKE 'S%';

# Filter names ending with A #
SELECT * FROM students
WHERE name LIKE '%A';

# Multiple conditions #
SELECT * FROM students
WHERE age > 22 AND age < 50;

# Using OR #
SELECT * FROM students
WHERE age = 21 OR age = 25;

# AGGREGATIONS #

# COUNT() #
SELECT COUNT(kills) FROM PLAYERS;

# SUM() #
SELECT SUM(kills) FROM PLAYERS;

# AVG() #
SELECT AVG(kills) FROM PLAYERS;

# MAX() #
SELECT MAX(kills) FROM PLAYERS;

# MIN() #
SELECT MIN(kills) FROM PLAYERS;

# JOINS #
Joins in SQL are used to combine rows from two or more tables based on a related column between them.
Usually, tables are connected using Primary Key and Foreign Key.

# TYPES OF JOINS #

# 1.INNER JOIN #
 returns only matching rows from both sides 

# syntax #
SELECT column, another_table_column,..
FROM mytable
INNER JOIN another_table
ON mytable.id = another_table.id;

# 2.LEFT JOIN #
 returns all rows from the left table and matching rows from the right table.

# syntax #
SELECT column, another_table_column,..
FROM mytable
LEFT JOIN another_table
ON mytable.id = another_table.id;

# 3.RIGHT JOIN #
 returns all rows from the right table and matching rows from the left table.

# syntax #
SELECT column, another_table_column,..
FROM mytable
RIGHT JOIN another_table
ON mytable.id = another_table.id;

# 4.FULL JOIN #
 returns all the row from both the table.

# syntax #
SELECT column, another_table_column,..
FROM mytable
FULL JOIN another_table
ON mytable.id = another_table.id;

#  Note: MariaDB/MySQL does not support FULL JOIN directly. #

# SIMPLE DIAGRAM #
INNER JOIN  -> Matching data only
LEFT JOIN   -> All left + matching right
RIGHT JOIN  -> All right + matching left
FULL JOIN   -> Everything from both
