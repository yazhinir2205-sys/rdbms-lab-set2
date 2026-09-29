CREATE OR REPLACE FUNCTION CountStudents
(
    p_department_id NUMBER
)
RETURN NUMBER
IS
    student_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO student_count
    FROM Student
    WHERE DepartmentID = p_department_id;

    RETURN student_count;
END;
/
