SELECT students.name as name, 
AVG(assignment_submissions.duration) as average_completion_time, 
AVG(assignments.duration) as average_suggested_completion_time
From assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
JOIN assignments on assignment_submissions.assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) <  AVG(assignments.duration)
ORDER BY average_completion_time ASC