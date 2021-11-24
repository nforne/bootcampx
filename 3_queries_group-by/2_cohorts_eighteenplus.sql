SELECT cohorts.name as cohort_name, count(students.*) as total_students
FROM cohorts JOIN students
ON cohorts.id = students.cohort_id
GROUP BY cohorts.id
HAVING count(students.*) >= 18
ORDER BY cohorts.id;