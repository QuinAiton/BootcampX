SELECT teachers.name as Teacher, count(assistance_requests.*) as Total_requests
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.id
