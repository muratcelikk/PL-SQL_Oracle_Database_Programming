-- Nested Functions
-- Example 1: Çarpım bulan fonksiyon

SET SERVEROUTPUT ON;

DECLARE
    a number;
    FUNCTION carpim(x number, y number) RETURN number IS
        z number;
    BEGIN
        z := x * y;
        RETURN(z);
    END;
BEGIN   --main block
    a := carpim(5, 4);
    DBMS_OUTPUT.PUT_LINE('Çarpım = ' || a);
END;
