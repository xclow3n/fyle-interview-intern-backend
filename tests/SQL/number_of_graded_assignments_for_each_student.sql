-- Write query to get number of graded assignments for each student:
-- SELECT COUNT() FROM assignments WHERE state='GRADED' GROUP BY student_id;
SELECT student_id, COUNT(*) FROM assignments WHERE state = 'GRADED' GROUP BY student_id;
