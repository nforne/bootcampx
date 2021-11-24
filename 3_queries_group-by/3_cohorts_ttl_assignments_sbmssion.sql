SELECT cohorts.name as cohort_name, count(assignment_submissions.*) as total_students
FROM assignment_submissions 
JOIN students ON students.id = assignment_submissions.student_id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.id
ORDER BY count(assignment_submissions.*) DESC;