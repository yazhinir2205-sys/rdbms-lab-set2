-- Create Employee table
CREATE TABLE Employee (
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(50),
    Salary NUMBER
);

-- Create Trigger
CREATE OR REPLACE TRIGGER emp_insert_trigger
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('New Employee Record Inserted Successfully');
END;
/

-- Enable output
SET SERVEROUTPUT ON;

-- Insert a new employee
INSERT INTO Employee
VALUES (101, 'Yazhini', 25000);

COMMIT;
