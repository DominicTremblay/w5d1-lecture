

-- List total number of projects, then same for tasks (COUNT)
SELECT count(*)
FROM projects;

SELECT count(*)
FROM tasks;

-- List incomplete tasks (single-table; WHERE)

SELECT *
FROM tasks
WHERE completed = FALSE;

-- List overdue tasks (single-table; WHERE with AND)
SELECT *
FROM tasks
WHERE completed = false AND due_date < current_date;

-- List upcoming tasks which are incomplete (WHERE, AND, ORDER BY)
SELECT * 
FROM tasks
WHERE completed = false AND due_date > current_date
ORDER_BY due_date DESC;

-- List completed tasks which were completed late (single-table; WHERE with AND; date comparison)
SELECT * 
FROM tasks
WHERE completed = true AND completed_on > due_date;

-- List all tasks, along with their project information, etc (INNER JOIN)
SELECT *
FROM tasks
INNER JOIN projects
ON tasks.project_id = projects.id;

-- List all projects along with how many tasks each project has (GROUP BY with INNER JOIN and COUNT)
SELECT projects.name, count(tasks.id) as nb_tasks
FROM projects
INNER JOIN tasks
ON projects.id = tasks.project_id
GROUP BY projects.name;

-- Enhance previous query to only include projects that have more than 2 tasks (requires HAVING)
SELECT projects.name, count(tasks.id) as nb_tasks
FROM projects
INNER JOIN tasks
ON projects.id = tasks.project_id
GROUP BY projects.name
HAVING count(tasks.id) > 2;

-- List all tasks which don't belong to a project (to demonstrate that there is a NULLABLE relationship here)
SELECT * 
FROM tasks
WHERE project_id isNull;


-- List ALL tasks in the database, along with their project name (need for [LEFT] OUTER JOIN so that all tasks are included, since the join col is nullable)
SELECT *
FROM tasks
RIGHT OUTER JOIN projects
ON tasks.project_id = projects.id;

