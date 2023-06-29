-- 10-Datetime Fonksiyonlarý Alýþtýrma-2
-- Elimizde bir müþteri listesi var. Bu listede doðum tarihi alaný var. Buna göre Mayýs ayýnda doðanlarýn listesini getiriniz.
-- Kaynak Tablo:LAB02
SELECT *,DATENAME(MONTH,BIRTHDATE) MONTH_ FROM LAB02 WHERE MONTH(BIRTHDATE) = 5

