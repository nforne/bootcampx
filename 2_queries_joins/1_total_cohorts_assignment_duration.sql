SELECT SUM(assignment_submissions.duration) as total_duration
FROM assignment_submissions 
JOIN students ON assignment_submissions.student_id = students.id
JOIN cohorts  ON students.cohort_id = cohorts.id
AND cohorts.name = 'FEB12';


-- SELECT students.name as student, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id 
-- AND students.end_date IS NULL
-- GROUP BY students.name 
-- HAVING  count(assignment_submissions.*) < 100;
