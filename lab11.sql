-- Iman Kasthuri
-- Lab 11 - SQL Queries
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';
--Earlies Assignemnt Due Date
SELECT MIN(due_date) AS earliest_due_date
FROM assignments;
--Latest Assignment Due Date
SELECT MAX(due_date) AS latest_due_date
FROM assignments;
--Assignment Due on a Specific Date
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';
--Find all Assignment Due in October
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';
--Find the Most Recent Completed Assignment
SELECT MAX(due_date) AS most_recent_completed
FROM assignments
WHERE status = 'completed';
