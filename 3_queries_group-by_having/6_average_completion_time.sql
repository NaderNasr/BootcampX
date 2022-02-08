SELECT students.name as student, ROUND(AVG(assignment_submissions.duration)) as average_assignment_duration  
FROM students
JOIN assignment_submissions ON student_id = students.id
GROUP BY students.name, students.end_date
HAVING students.end_date IS NULL
ORDER BY average_assignment_duration DESC;




