# SQL Queries

## Basic SELECT Statement

- SELECT filters out the columns you want in the results
- `*` means all the columns

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

## SELECT Statement With WHERE

- The `WHERE` is filtering out the rows of the result set

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

## Aggregate functions

- We can use aggregate functions like `COUNT`, `SUM`, `AVG`, `MIN`,`MAX`

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
