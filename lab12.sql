-- Concatenate course_name and semester fields
SELECT course_name || ' - ' || semester AS course_details
FROM courses;
-- Find courses with labs on Fridays
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Friday%';
-- Upcoming assignments
SELECT *
FROM assignments
WHERE due_date > date('now');
-- Count Assignments by Status
SELECT status, COUNT(*) AS count
FROM assignments
GROUP BY status;
-- Longest Course Name
SELECT course_name, LENGTH(course_name) AS name_length
FROM courses
ORDER BY name_length DESC
LIMIT 1;
-- Uppercase Course Names
SELECT UPPER(course_name) AS course_name_upper
FROM courses;
-- Assignments Due in September
SELECT title
FROM assignments
WHERE due_date LIKE '____-09%';
-- Assignments with Missing Due Dates
SELECT *
FROM assignments
WHERE due_date IS NULL;



