-- Standalone Stored Procedures
-- Example 3: Merhaba Dünya yazdıran procedure

SET SERVEROUTPUT ON;

create or replace PROCEDURE merhabaDunya IS

BEGIN
      DBMS_OUTPUT.PUT_LINE('Merhaba Dünya!!!');
END;

-- Kullanım: merhabaDunya procseduru yazılır ve calıstırılır. Prosedürler icerisinde  MERHABADUNYA seklinde kayıt edilir. 

SET SERVEROUTPUT ON;

EXECUTE merhabaDunya;

EXEC merhabaDunya;