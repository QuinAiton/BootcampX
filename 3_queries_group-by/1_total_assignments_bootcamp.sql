SELECT day, count(assignments.id) as total_assignments
from assignments
GROUP BY assignments.day
ORDER BY day