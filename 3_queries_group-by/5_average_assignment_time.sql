SELECT students.name as student_name, AVG(assignment_submissions.duration) as Average_assignment_duration
FROM assignment_submissions
JOIN students on students.id = assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER by Average_assignment_duration DESC