ALTER SEQUENCE projects_id_seq RESTART WITH 1;
ALTER SEQUENCE tasks_id_seq RESTART WITH 1;


-- projects (name, owner:string, due_date:date)

INSERT INTO projects (name, owner, due_date) VALUES ('Lotide', 'Michael Caine', '2019-09-19');
INSERT INTO projects (name, owner, due_date) VALUES ('TinyApp', 'Michael Keaton', '2020-01-15');
INSERT INTO projects (name, owner, due_date) VALUES ('Midterm', 'Dustin Hoffman', '2019-12-31');
INSERT INTO projects (name, owner, due_date) VALUES ('Scheduler', 'Jack Nicholson', '2019-08-01');
INSERT INTO projects (name, owner, due_date) VALUES ('Jungle', 'Tom Hanks', '2019-11-18');
INSERT INTO projects (name, owner, due_date) VALUES ('Final Project', 'Bruce Lee', '2019-12-11');


-- tasks (project_id:fkey:NULLABLE, name, completed:bool, completed_by:string, due_date:date, completed_on:date)

INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (1, 'Implement countLetters', true, 'Denzel Washington','2019-09-29', '2019-10-10' );
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (1, 'Implement findKeyByValue', true, 'Al Pacino','2019-06-20', '2019-07-22');
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (1, 'Implement assertObjectsEqual', true, 'Samuel Jackson','2019-09-10','2019-09-09');
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (1, 'Implement takeUntil', true, 'Will Smith','2018-01-01','2019-01-01');
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (1, 'Implement findKey', true, 'Morgan Freeman','2019-07-27','2019-08-22');
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (1, 'Submit Lotide', false, 'Halle Berry', '2019-12-31', null);
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (2, 'TinyApp & Express setup', true, 'Lucy liu','2019-09-04','2019-09-01');
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (2, 'URL Shortening', false, 'Zoe Saldana', '2019-05-12',null);
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (2, 'Cookies in Express', false, 'Priyanka Chopra','2020-04-10', null);
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (2, 'Add User Specific Features', false, 'Penelope Cruz', '2021-02-01', null);
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (2, 'Add in method override [stretch]', false, 'Jessica Alba','2022-07-09', null);
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (2, 'Submit TinyApp', false, 'Zhang Ziyi','2019-12-12', null);
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (3, 'Positioning the Nav', true, 'Jamie Foxx','2019-08-09','2019-07-22');
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (3, 'Setup Main Container', true, 'Javier Bardem','2018-03-05','2018-05-02');
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (3, 'Implement the Character Counter', true,'Antonio Banderas','2019-03-22','2019-05-15');
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (3, 'Creating Tweets', false,'Quentin Tarantino','2017-04-03',null);
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (3, 'Dynamic Tweets', false, 'Salma Hayek','2021-03-09', null);
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (3, 'Form Submission using AJAX', false, 'Pat Morita', '2022-03-12', null);
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (3, 'Fetching Tweets using AJAX', false,'John Cho','2025-05-10',null);
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (3, 'Display validation errors with jQuery', false,'Maggie Q','2021-02-02',null);
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (3, 'Submit Tweeter Project', false, 'Dev Patel','2023-05-09',null);
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (4, 'Plan midterm project', false,'Claudia Kim','2024-01-22',null);
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (4, 'Decide on front-end framework', false,'Jet Li','2026-07-15',null);
INSERT INTO tasks (project_id, name, completed, completed_by, due_date, completed_on) VALUES (null, 'Choose a stack', false,'Brandon Lee','2027-07-15',null);