-- 1-If Komutu
-- Standart TSQL programlama için kullandýðýmýz komutlardan birisi ve biz bir standart SQL cümlesi içinde kullanamýyoruz yani bir SELECT cümlesi içinde kullanamýyoruz. 

DECLARE @EXAMRESULT AS INT = 70
DECLARE @STATUS AS VARCHAR(20)

IF @EXAMRESULT > 60
	SET @STATUS = 'BAÞARILI'
ELSE
	SET @STATUS = 'BAÞARISIZ'

DECLARE @NUMBER AS INT
SET @NUMBER = 0

IF @NUMBER > 0
	BEGIN
		SELECT 'SEÇÝLEN DEÐER POZÝTÝF'
	END
ELSE IF @NUMBER = 0
	SELECT 'SEÇÝLEN DEÐER SIFIR'
ELSE 
	BEGIN 
		SELECT 'SEÇÝLEN DEÐER NEGATÝF'
	END