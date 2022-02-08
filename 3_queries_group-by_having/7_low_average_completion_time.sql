SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration, AVG(assignments.duration) as average_estimated_duration  
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY students.name, students.end_date
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY AVG(assignment_submissions.duration);

