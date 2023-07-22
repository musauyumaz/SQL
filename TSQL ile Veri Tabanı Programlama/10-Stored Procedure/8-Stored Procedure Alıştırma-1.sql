-- 8-Stored Procedure Al��t�rma-1
-- Elimizde rastgele olu�turulan plakalardan olu�an bir ara� veritaban� var. Bu ara� veritaban�n� kullanarak i�ine ara� markas� ve trafi�e ��k�� ve biti� parametrelerini alarak sonu� d�nd�ren Stored Procedure'� yaz�n�z.
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
@BRAND='AUD�',
@BEGDATE='20150101',
@ENDDATE='20151231'
