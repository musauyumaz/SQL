-- 1-De�i�kene De�er Tan�mlama(INTEGER)
-- Bir de�i�ken T-SQL'de @ i�areti ile tan�mlan�r.
-- Bir de�i�ken tan�m� DECLARE keyword� ile yap�l�r.
-- De�er atamak i�in SET komutunu kullan�r�z.
-- NULL bir de�erle herhangi bir de�eri matematiksel i�lem yapt���n�zda NULL de�er elde edersiniz.
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