-- Standalone Procedures
-- Example 4: COUNTRIES tablosuna Haftasonu kayıt girişini engelleme

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE ins_country (
    p_cid   IN  COUNTRIES.COUNTRY_ID%type,
    p_cname IN  VARCHAR2,
    p_id    IN  NUMBER,
    p_son   OUT VARCHAR2
) IS

BEGIN
    IF TO_CHAR(sysdate, 'DY') IN ('CMT','PAZ') THEN
    p_son := 'Cumartesi ve Pazar gunleri icin kayit girisi yapilamaz!';
    ELSE
    BEGIN
    INSERT INTO COUNTRIES(COUNTRY_ID, COUNTRY_NAME, REGION_ID) 
    VALUES
    (p_cid, p_cname, p_id);
    p_son :='Kayit yapildi!';
    EXCEPTION WHEN OTHERS THEN
    p_son := sqlcode ||' '|| sqlerrm;
    END;
    END IF;
END;




desc COUNTRIES;
select TO_CHAR(sysdate, 'DY') from dual;

DECLARE 
    wson varchar2(300);
BEGIN 
    ins_country( 'TR', 'TUR', 2, wson);
    dbms_output.put_line(wson);
END;

SELECT * FROM COUNTRIES;