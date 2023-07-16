-- 9- User Defined Functions Alýþtýrma-2
-- Elimizde bir futbolcu listesi var. Bu futbolcu listesinde içine futbolcunun doðum tarihini alýp, yaþ grubunu getiren fonksiyonu yazýnýz.
-- Kaynak DB: LAB_UDF
-- Kaynak Tablo: LAB_PLAYER

ALTER FUNCTION DBO.GETAGEGROUP(@DATE DATE)
RETURNS VARCHAR(20)
AS
BEGIN
	DECLARE @RESULT VARCHAR(20)
	DECLARE @AGE INT = DATEDIFF(YEAR,@DATE,GETDATE())
	
	IF @AGE < 20
		SET @RESULT ='20''DEN KÜÇÜK'
	IF  @AGE >= 20 AND @AGE < 30 
		SET @RESULT ='20-29 YAÞ ARASI'
	IF @AGE >= 30 AND @AGE < 40 
		SET @RESULT ='30-40 YAÞ ARASI'
	IF @AGE >= 40 
		SET @RESULT ='40''TAN BÜYÜK'
	RETURN @RESULT
END

SELECT *,dbo.GETAGE(BIRTHDATE) AGE,dbo.GETAGEGROUP(BIRTHDATE) AGEGROUP FROM LAB_PLAYER