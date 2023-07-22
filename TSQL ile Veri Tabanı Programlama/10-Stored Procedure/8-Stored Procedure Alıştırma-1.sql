-- 8-Stored Procedure Alýþtýrma-1
-- Elimizde rastgele oluþturulan plakalardan oluþan bir araç veritabaný var. Bu araç veritabanýný kullanarak içine araç markasý ve trafiðe çýkýþ ve bitiþ parametrelerini alarak sonuç döndüren Stored Procedure'ü yazýnýz.
-- Kaynak DB: LAB_SP
-- Kaynak Tablo: LAB_PLATES

CREATE PROC SP_GETPLATE
@BRAND AS VARCHAR(50),
@BEGDATE AS DATE,
@ENDDATE AS DATE
AS
SELECT * FROM LAB_PLATES
WHERE BRAND = @BRAND 
AND LICENCEDATE BETWEEN @BEGDATE AND @ENDDATE

EXEC SP_GETPLATE 
@BRAND='AUDÝ',
@BEGDATE='20150101',
@ENDDATE='20151231'
