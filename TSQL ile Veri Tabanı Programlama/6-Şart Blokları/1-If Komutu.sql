-- 1-If Komutu
-- Standart TSQL programlama i�in kulland���m�z komutlardan birisi ve biz bir standart SQL c�mlesi i�inde kullanam�yoruz yani bir SELECT c�mlesi i�inde kullanam�yoruz. 

DECLARE @EXAMRESULT AS INT = 70
DECLARE @STATUS AS VARCHAR(20)

IF @EXAMRESULT > 60
	SET @STATUS = 'BA�ARILI'
ELSE
	SET @STATUS = 'BA�ARISIZ'

DECLARE @NUMBER AS INT
SET @NUMBER = 0

IF @NUMBER > 0
	BEGIN
		SELECT 'SE��LEN DE�ER POZ�T�F'
	END
ELSE IF @NUMBER = 0
	SELECT 'SE��LEN DE�ER SIFIR'
ELSE 
	BEGIN 
		SELECT 'SE��LEN DE�ER NEGAT�F'
	END