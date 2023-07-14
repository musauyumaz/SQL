-- 3-D�ng�ler Al��t�rma-1
-- 100 tane s�cakl�k �l�er termometreden s�cakl�k �l��m bilgilerini almak istiyoruz. Bunun i�in 100 tane termometre tan�mlay�p veritaban�na kaydediniz. Her biri i�in 18-23 derece aras�nda rastgele bir de�eri atay�p okunan de�er k�sm�na bu de�eri kaydediniz.
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