-- Nested Procedures
-- Example 2: Unnamed Block içinde, çalışan ismini değiştiren procedure 
SET SERVEROUTPUT ON;

DECLARE

    PROCEDURE show_name IS
    wname EMPLOYEES.FIRST_NAME%TYPE;
    BEGIN
        SELECT FIRST_NAME INTO wname FROM EMPLOYEES WHERE EMPLOYEE_ID=100;
        DBMS_OUTPUT.PUT_LINE('ÇALIŞAN İSMİ := ' || wname );
    END;
    
    PROCEDURE change_name IS
      wname EMPLOYEES.FIRST_NAME%TYPE;
    BEGIN
        UPDATE EMPLOYEES
        SET FIRST_NAME = upper(FIRST_NAME) 
        WHERE EMPLOYEE_ID=100
        RETURNING FIRST_NAME INTO wname;
        DBMS_OUTPUT.PUT_LINE('BÜYÜK HARF ÇALIŞAN İSMİ := ' || wname );
    END change_name;
    
BEGIN -- MAIN BLOCK
    show_name;
  change_name;
END;

  --  SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID=100;
  --rollback;
  --commit;