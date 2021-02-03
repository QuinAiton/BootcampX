Select distinct teachers.name as teachers_name, cohorts.name as cohorts_name, count(assistance_requests)
FROM assistance_requests
JOIN teachers ON  teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name,cohorts.name
ORDER BY teachers.name
