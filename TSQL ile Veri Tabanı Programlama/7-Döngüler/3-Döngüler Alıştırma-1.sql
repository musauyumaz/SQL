-- 3-Döngüler Alýþtýrma-1
-- 100 tane sýcaklýk ölçer termometreden sýcaklýk ölçüm bilgilerini almak istiyoruz. Bunun için 100 tane termometre tanýmlayýp veritabanýna kaydediniz. Her biri için 18-23 derece arasýnda rastgele bir deðeri atayýp okunan deðer kýsmýna bu deðeri kaydediniz.
-- Kaynak DB: LAB_LOOPS
-- Kaynak Tablo: LAB01


TRUNCATE TABLE LAB01
SELECT * FROM LAB01

DECLARE @I INT = 1
WHILE  @I < 10000
BEGIN 
	INSERT INTO LAB01([DEVICENAME], [CURRENTVALUE]) 
	VALUES('THERMOMETER_'+REPLICATE('0',4-LEN(@I))+CONVERT(VARCHAR,@I),18 + ROUND(RAND() * 5,2))
	SET @I=@I + 1
END