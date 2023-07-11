-- 7-De�i�kenler Al��t�rma-2
-- Elimizde m��terilerin bulundu�u bir veriseti var. Elle girilen g�n, ay ve y�l de�i�kenlerini alarak DATE t�r�nde tan�mlad���m�z bir de�i�kene de�er atay�n�z ve m��teriler listesinden do�um tarihi bu de�ere sahip m��terileri �a��r�n�z.
-- Kaynak DB:LAB_TSQL_VARIANTS
-- Kaynak Tablo : LAB02
DECLARE @DAY INT = 25
DECLARE @MONTH INT = 1
DECLARE @YEAR INT = 1960
DECLARE @DATE DATE = DATEFROMPARTS(@YEAR,@MONTH,@DAY)

SELECT * FROM LAB02 WHERE BIRTHDATE = @DATE
