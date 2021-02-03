Select distinct teachers.name as teachers_name, cohorts.name as cohorts_name
FROM assistance_requests
JOIN teachers ON  teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teachers.name