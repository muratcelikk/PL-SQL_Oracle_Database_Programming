-- Nested Procedures
-- Example 1: Unnamed Block içinde, çalışan ismini yazdıran procedure
SET SERVEROUTPUT ON;

DECLARE
    PROCEDURE show_name IS
    wname EMPLOYEES.FIRST_NAME%TYPE;
    BEGIN
        SELECT FIRST_NAME INTO wname FROM EMPLOYEES WHERE EMPLOYEE_ID=100;
        DBMS_OUTPUT.PUT_LINE('ÇALIŞAN İSMİ := ' || wname );
    END;
    
BEGIN
    show_name;
END;