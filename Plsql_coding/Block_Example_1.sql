-- Unnamed Block (Anonymous)
-- Example 1: İçinde bulunduğumuz günün ismini yazan bir program
SET SERVEROUTPUT ON;
DECLARE
    WGUN VARCHAR2(50);
BEGIN
    WGUN:= TO_CHAR(SYSDATE, 'DAY');
    DBMS_OUTPUT.PUT_LINE('BUGÜN '|| WGUN);
END;