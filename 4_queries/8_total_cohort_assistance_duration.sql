SELECT cohorts.name as Cohort_Name, sum(completed_at - started_at) as Total_Duration
FROM students
JOIN cohorts ON cohort_id = cohorts.id
JOIN assistance_requests ON students.id =  student_id 
GROUP BY cohorts.name
ORDER BY Total_Duration