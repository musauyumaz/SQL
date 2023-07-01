-- 5- Matematik Fonksiyonlarý Alýþtýrma 2
-- Elimizde Avrupa futbol kulüplerinin bulunduðu bir veriseti var. Burada bir çekiliþ ile rastgelee iki takýmý eþleþtirecek þekilde bir SQL cümlesi yazýnýz. Not: Sorgu iki kez çalýþtýrýlacak ve her seferinde bir takým seçimi gerçekleþecektir.
-- Kaynak Tablo: LAB02

DECLARE @EVSAHIBI INT = 1, @DEPLASMAN INT = 1
SELECT @EVSAHIBI = CONVERT(INT,RAND() * 299),@DEPLASMAN = CONVERT(INT,RAND() * 299)

SELECT 
TEAM_LONG_NAME + ' VS ' +
(SELECT TEAM_LONG_NAME FROM LAB02 WHERE ID = @DEPLASMAN) EÞLEÞME
FROM LAB02 WHERE ID = @EVSAHIBI 

-- ORDER BY NEWID()
-- Burada hangi ID deðerlerini kaybolup kaybolmadýðýný bilemeyiz. Bu yüzden burada ORDER BY NEWID() diyerek rastgele bir sayý çekebilir ve hata da almayýz.
-- Tabi RAND() fonksiyonuna göre daha yavaþ çalýþan bir yapýdýr.
SELECT TOP 1 * FROM LAB02 ORDER BY NEWID()

SELECT TOP 1 TEAM_LONG_NAME 
+ ' VS ' +
(SELECT TOP 1 TEAM_LONG_NAME FROM LAB02 ORDER BY NEWID()) EÞLEÞME
FROM LAB02 ORDER BY NEWID() DESC