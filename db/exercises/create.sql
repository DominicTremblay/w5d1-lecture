-- DDL Data Definition Language

DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS projects;

CREATE TABLE projects(
  id SERIAL PRIMARY KEY,
  name TEXT,
  owner TEXT,
  due_date DATE
);

CREATE TABLE tasks(
  id SERIAL PRIMARY KEY,
  name TEXT,
  completed BOOLEAN,
  completed_by TEXT,
  due_date DATE,
  completed_on DATE,
  project_id INTEGER REFERENCES projects(id)
);
