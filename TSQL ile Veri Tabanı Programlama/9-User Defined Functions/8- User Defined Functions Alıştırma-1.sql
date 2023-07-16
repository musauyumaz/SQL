-- 8- User Defined Functions Alýþtýrma-1
-- Elimizde bir futbolcu listesi var. Bu futbolcu listesinde içine futbolcunun doðum tarihini alýp, yaþýný getiren fonksiyonu yazýnýz.
-- Kaynak DB: LAB_UDF
-- Kaynak Tablo: LAB_PLAYER

SELECT * FROM LAB_PLAYER

CREATE FUNCTION DBO.GETAGE(@DATE AS DATE)
RETURNS INT
AS
BEGIN 
	RETURN DATEDIFF(YEAR,@DATE,GETDATE())
END

SELECT *,dbo.GETAGE(BIRTHDATE) AGE FROM LAB_PLAYER 
ORDER BY AGE