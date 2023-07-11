-- 7-Deðiþkenler Alýþtýrma-2
-- Elimizde müþterilerin bulunduðu bir veriseti var. Elle girilen gün, ay ve yýl deðiþkenlerini alarak DATE türünde tanýmladýðýmýz bir deðiþkene deðer atayýnýz ve müþteriler listesinden doðum tarihi bu deðere sahip müþterileri çaðýrýnýz.
-- Kaynak DB:LAB_TSQL_VARIANTS
-- Kaynak Tablo : LAB02
DECLARE @DAY INT = 25
DECLARE @MONTH INT = 1
DECLARE @YEAR INT = 1960
DECLARE @DATE DATE = DATEFROMPARTS(@YEAR,@MONTH,@DAY)

SELECT * FROM LAB02 WHERE BIRTHDATE = @DATE
