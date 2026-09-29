CREATE OR REPLACE PROCEDURE InsertStudent
(
    p_student_id NUMBER,
    p_student_name VARCHAR2,
    p_department_id NUMBER
)
IS
BEGIN
    INSERT INTO Student(StudentID, StudentName, DepartmentID)
    VALUES (p_student_id, p_student_name, p_department_id);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student record inserted successfully');
END;
/
