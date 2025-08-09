-- Named Block and Unnamed Block
-- Example 1: İçinde bulunduğumuz günün ismini yazan bir program

CREATE OR REPLACE FUNCTION GET_DAY_NAME(P_TARIH DATE) RETURN VARCHAR2
IS

BEGIN
    RETURN(TO_CHAR(P_TARIH,'DAY'));
END;

DECLARE
    WGUN VARCHAR2(50);
BEGIN
    WGUN:= GET_DAY_NAME(SYSDATE);
    DBMS_OUTPUT.PUT_LINE('BUGÜN '|| WGUN);
END;