SELECT students.name as student_name, AVG(assignment_submissions.duration) as students_avrg_duration
FROM assignment_submissions 
JOIN students ON students.id = assignment_submissions.student_id
AND students.end_date IS NULL
GROUP BY students.id
ORDER BY AVG(assignment_submissions.duration) DESC;