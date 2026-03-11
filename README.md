# SQL Roadmap

## Creating Table

```sql
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);
```

## Inserting Data

```sql
INSERT INTO students (id, name, age)
VALUES (1, 'JIN', 20);
```

## Accessing Data

```sql
SELECT * FROM students;
```

## Output Table

![Table creation](images/New_Table.png)

---

# Filtering

### Show all students

```sql
SELECT * FROM students;
```

### Filter students older than 22

```sql
SELECT * FROM students
WHERE age > 22;
```

### Filter students with age equal to 21

```sql
SELECT * FROM students
WHERE age = 21;
```

### Filter students with age between 21 and 30

```sql
SELECT * FROM students
WHERE age BETWEEN 21 AND 30;
```

### Filter students with specific ages

```sql
SELECT * FROM students
WHERE age IN (21, 25);
```

### Filter students not having age 21

```sql
SELECT * FROM students
WHERE age NOT IN (21);
```

### Filter names starting with S

```sql
SELECT * FROM students
WHERE name LIKE 'S%';
```

### Filter names ending with A

```sql
SELECT * FROM students
WHERE name LIKE '%A';
```

### Multiple conditions

```sql
SELECT * FROM students
WHERE age > 22 AND age < 50;
```

### Using OR

```sql
SELECT * FROM students
WHERE age = 21 OR age = 25;
```

---

# Aggregations

### COUNT()

```sql
SELECT COUNT(kills) FROM players;
```

### SUM()

```sql
SELECT SUM(kills) FROM players;
```

### AVG()

```sql
SELECT AVG(kills) FROM players;
```

### MAX()

```sql
SELECT MAX(kills) FROM players;
```

### MIN()

```sql
SELECT MIN(kills) FROM players;
```

---

# Joins

Joins in SQL are used to combine rows from two or more tables based on a related column between them.

Usually tables are connected using **Primary Key** and **Foreign Key**.

---

## Types of Joins

### 1. INNER JOIN

Returns only matching rows from both tables.

```sql
SELECT column, another_table_column
FROM mytable
INNER JOIN another_table
ON mytable.id = another_table.id;
```

### 2. LEFT JOIN

Returns all rows from the left table and matching rows from the right table.

```sql
SELECT column, another_table_column
FROM mytable
LEFT JOIN another_table
ON mytable.id = another_table.id;
```

### 3. RIGHT JOIN

Returns all rows from the right table and matching rows from the left table.

```sql
SELECT column, another_table_column
FROM mytable
RIGHT JOIN another_table
ON mytable.id = another_table.id;
```

### 4. FULL JOIN

Returns all rows from both tables.

```sql
SELECT column, another_table_column
FROM mytable
FULL JOIN another_table
ON mytable.id = another_table.id;
```

**Note:** MariaDB/MySQL does not support `FULL JOIN` directly.

---

## Simple Diagram

```
INNER JOIN  -> Matching data only
LEFT JOIN   -> All left + matching right
RIGHT JOIN  -> All right + matching left
FULL JOIN   -> Everything from both
```
