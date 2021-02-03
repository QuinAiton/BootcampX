SELECT assignments.id ,day, chapter, name, count(assistance_requests.*) as total_assistance
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP by assignments.id
ORDER BY total_assistance DESC