-- 3-Ay Ad�n� Getirme

CREATE FUNCTION DBO.GETMONTHNAME(@DATE AS DATETIME)
RETURNS VARCHAR(20)
AS 
BEGIN
	DECLARE @RESULT AS VARCHAR(20)
	IF MONTH(@DATE)=1 SET @RESULT = '01.OCAK'
	ELSE IF MONTH(@DATE)=2 SET @RESULT = '02.SUBAT'
	ELSE IF MONTH(@DATE)=3 SET @RESULT = '03.MART'
	ELSE IF MONTH(@DATE)=4 SET @RESULT = '04.NISAN'
	ELSE IF MONTH(@DATE)=5 SET @RESULT = '05.MAYIS'
	ELSE IF MONTH(@DATE)=6 SET @RESULT = '06.HAZIRAN'
	ELSE IF MONTH(@DATE)=7 SET @RESULT = '07.TEMMUZ'
	ELSE IF MONTH(@DATE)=8 SET @RESULT = '08.AGUSTOS'
	ELSE IF MONTH(@DATE)=9 SET @RESULT = '09.EYLUL'
	ELSE IF MONTH(@DATE)=10 SET @RESULT = '10.EKIM'
	ELSE IF MONTH(@DATE)=11 SET @RESULT = '11.KASIM'
	ELSE IF MONTH(@DATE)=12 SET @RESULT = '12.ARALIK'

	RETURN @RESULT
END

SELECT dbo.GETMONTHNAME('2022-06-05')