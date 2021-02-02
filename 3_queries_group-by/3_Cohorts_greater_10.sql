Select cohorts.name as cohort, count(students) as number_students
FROM cohorts
JOIN students on  cohort_id = cohorts.id
GROUP BY cohorts.id
HAVING count(*) >= 18
ORDER BY number_students