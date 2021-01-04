# SQL Queries

## Basic SELECT Statement

- SELECT filters out the columns you want in the results
- `*` means all the columns

### Query

`SELECT * from platforms;`

| id  | name          | developer | release_date |
| --- | ------------- | --------- | ------------ |
| 1   | X Box One     | Microsoft | 2013-11-22   |
| 2   | PlayStation 4 | Sony      | 2013-11-15   |
| 3   | Switch        | Nintendo  | 2017-03-03   |

`SELECT title FROM games;`

| title               |
| ------------------- |
| Halo Wars 2         |
| Forza Motorsport 7  |
| Mario Kart 8 Deluxe |
| Super Mario Odyssey |
| GT Sport            |
| Street Fighter 5    |

`SELECT title, genre FROM games;`

| title               | genre              |
| ------------------- | ------------------ |
| Halo Wars 2         | Real-time strategy |
| Forza Motorsport 7  | Racing game        |
| Mario Kart 8 Deluxe | Racing game        |
| Super Mario Odyssey | Action-adventure   |
| GT Sport            | Racing game        |
| Street Fighter 5    | Fighting game      |

## DISTINCT

- Whenever you want to remove duplicates from rows

```sql
SELECT DISTINCT genre
FROM games;
```

## SELECT Statement With WHERE

- The `WHERE` is filtering out the rows of the result set

### Query

```SQL
SELECT title, genre
FROM games
WHERE rating = 'Everyone';
```

| title               | genre            |
| ------------------- | ---------------- |
| Forza Motorsport 7  | Racing game      |
| Mario Kart 8 Deluxe | Racing game      |
| Super Mario Odyssey | Action-adventure |
| GT Sport            | Racing game      |

## ORDER BY

### Query

```SQL
SELECT title, genre
FROM games
WHERE rating = 'Everyone'
ORDER BY title;
```

| title               | genre            |
| ------------------- | ---------------- |
| Forza Motorsport 7  | Racing game      |
| GT Sport            | Racing game      |
| Mario Kart 8 Deluxe | Racing game      |
| Super Mario Odyssey | Action-adventure |

## LIMIT & OFFSET

- We can limit the number of rows with `LIMIT`

### Query

```sql
SELECT * 
FROM games
ORDER BY title
LIMIT 3;
```

- We can skip a number of rows with `OFFSET`

### Query

```sql
SELECT * 
FROM games
ORDER BY title
LIMIT 3
OFFSET 2;
```

## IN

- We can specify multiple AND clauses with IN

```sql
SELECT title, genre, rating
FROM GAMES
WHERE genre IN ('Fighting game', 'Real-time strategy', 'Action-adventure' );
```

## LIKE

- When you want to use partial match in a WHERE clause

```sql
SELECT title, genre, rating
FROM GAMES
WHERE title like '%Mario%';
```

- It is case sensitive. To make it case-incensitive:

```sql
SELECT title, genre, rating
FROM GAMES
WHERE LOWER(title) like '%mario%';
```



## Aggregate functions

- We can use aggregate functions like `COUNT`, `SUM`, `AVG`, `MIN`,`MAX`

### Query

```sql
SELECT genre, COUNT(id)
FROM GAMES
GROUP BY genre;
```

| genre              | count |
| ------------------ | ----- |
| Racing game        | 3     |
| Real-time strategy | 1     |
| Fighting game      | 1     |
| Action-adventure   | 1     |

### With HAVING

Having is filtering the aggrate function.

```sql
SELECT genre, COUNT(id)
FROM GAMES
GROUP BY genre
HAVING COUNT(id) > 1;
```

| genre       | count |
| ----------- | ----- |
| Racing game | 3     |

## Joins

- We use joins when we need the data of more than one table

- There are different types of joins

  - INNER JOIN
  - [LEFT || RIGHT] OUTER JOIN

### Query

  ```sql
  SELECT  games.title, platforms.name, platforms.developer
  FROM platforms
  INNER JOIN games
  ON platforms.id = games.platform_id;
  ```

| title               | name          | developer |
| ------------------- | ------------- | --------- |
| Halo Wars 2         | X Box One     | Microsoft |
| Forza Motorsport 7  | X Box One     | Microsoft |
| Mario Kart 8 Deluxe | PlayStation 4 | Sony      |
| Super Mario Odyssey | PlayStation 4 | Sony      |
| GT Sport            | Switch        | Nintendo  |
| Street Fighter 5    | Switch        | Nintendo  |

### Which platform has the most title rated 'Everyone' 

```sql
SELECT name, games.rating, COUNT(games.id) AS genre_count
FROM platforms
INNER JOIN games
ON platforms.id = games.platform_id 
WHERE rating = 'Everyone'
GROUP BY name, rating
ORDER BY genre_count DESC
LIMIT 1;
```