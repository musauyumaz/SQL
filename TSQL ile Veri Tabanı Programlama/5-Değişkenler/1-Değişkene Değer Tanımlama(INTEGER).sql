-- 1-Deðiþkene Deðer Tanýmlama(INTEGER)
-- Bir deðiþken T-SQL'de @ iþareti ile tanýmlanýr.
-- Bir deðiþken tanýmý DECLARE keywordü ile yapýlýr.
-- Deðer atamak için SET komutunu kullanýrýz.
-- NULL bir deðerle herhangi bir deðeri matematiksel iþlem yaptýðýnýzda NULL deðer elde edersiniz.
DECLARE @SAYI1 AS INT
SET @SAYI1 = 15

DECLARE @SAYI2 AS INT = 20
SET @SAYI2 = 50
SET @SAYI2 = 90

DECLARE @TOPLAM AS INT
SET @TOPLAM = @SAYI1 + @SAYI2

SELECT @SAYI1,@SAYI2,@TOPLAM


DECLARE @SAYI3 AS INT
SET @SAYI3 = 15

DECLARE @SAYI4 AS INT
--SET @SAYI4 = 20

DECLARE @TOPLAM2 AS INT
SET @TOPLAM2 = @SAYI3 + @SAYI4

SELECT @SAYI3,@SAYI4,@TOPLAM2