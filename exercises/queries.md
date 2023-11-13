-- List total number of projects, then same for tasks (COUNT)

SELECT COUNT(*)
FROM projects;

SELECT COUNT(*)
FROM tasks;

-- List incomplete tasks (single-table; WHERE)

SELECT *
FROM tasks
WHERE completed IS FALSE;


-- List overdue tasks (single-table; WHERE with AND; use current_date to have today's date)

SELECT * 
FROM tasks
WHERE completed IS FALSE AND current_date > due_date;

-- List upcoming tasks which are incomplete order by due_date in descending order (WHERE, AND, ORDER BY)

SELECT * 
FROM tasks
WHERE completed IS FALSE AND due_date > current_date
ORDER BY due_date DESC;


-- List completed tasks which were completed late (single-table; WHERE with AND; date comparison)

SELECT * 
FROM tasks
WHERE completed IS TRUE AND completed_on > due_date;


-- List all tasks, along with their project information, etc (INNER JOIN)

SELECT *
FROM projects
INNER JOIN task
ON projects.id = tasks.project_id;


-- List all projects along with how many tasks each project has (GROUP BY with INNER JOIN and COUNT)

SELECT projects.name, COUNT(tasks.id) AS task_count
FROM projects
INNER JOIN tasks
ON projects.id = tasks.project_id
GROUP BY projects.name;

-- Enhance previous query to only include projects that have more than 2 tasks (requires HAVING)

SELECT projects.name, COUNT(tasks.id) AS task_count
FROM projects
INNER JOIN tasks
ON projects.id = tasks.project_id
GROUP BY projects.name
HAVING COUNT(tasks.id) > 2;

-- List ALL tasks in the database, along with their project name (need for [LEFT] OUTER JOIN so that all tasks are included, since the join col is nullable)

SELECT tasks.name, projects.name
FROM tasks
LEFT OUTER JOIN projects
ON tasks.project_id = projects.id;



