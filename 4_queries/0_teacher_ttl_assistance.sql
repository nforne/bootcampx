SELECT total_assistance, name FROM (
SELECT COUNT(assistance_requests.completed_at) AS total_assistance, teachers.name 
FROM assistance_requests 
JOIN teachers 
ON assistance_requests.teacher_id = teachers.id
GROUP BY teachers.name
) AS reftable
WHERE name = 'Waylon Boehm';
