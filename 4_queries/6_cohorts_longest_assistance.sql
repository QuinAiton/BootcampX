SELECT cohorts.name as Cohorts, AVG(completed_at - started_at) as Average_Assistance_Request_Time
FROM students
JOIN cohorts ON cohort_id = cohorts.id
JOIN assistance_requests ON students.id = student_id
GROUP BY Cohorts.name
ORDER by Average_Assistance_Request DESC
LIMIT 1