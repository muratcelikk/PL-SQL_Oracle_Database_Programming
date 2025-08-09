-- Standalone Stored Procedures
-- Example 3: Merhaba Dünya yazdıran procedure

SET SERVEROUTPUT ON;

create or replace PROCEDURE merhabaDunya IS

BEGIN
      DBMS_OUTPUT.PUT_LINE('Merhaba Dünya!!!');
END;

-- Kullanım: yukarıdaki yeşil sql kutucuğundan HR bölümü seçilerek yeni bir sayfa açılır ve aşağıdaki procedure yazılır ve çalıştırılır. Procedure içerisinde  MERHABADUNYA şeklinde kayıt edilir. İstenildiğinde çağrılır.

SET SERVEROUTPUT ON;

EXECUTE merhabaDunya;

EXEC merhabaDunya;