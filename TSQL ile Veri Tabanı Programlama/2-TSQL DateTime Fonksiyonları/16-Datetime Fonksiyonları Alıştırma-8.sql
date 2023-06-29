-- 16-Datetime Fonksiyonlarý Alýþtýrma-8
-- Elimizde bir marketin satýþ verisi var. Bu verisetine göre içinde bulunduðumuz ay ve bir ay öncesinin satýþlarýný maðaza bazlý olarak karþýlaþtýrýnýz.
-- Kaynak Tablo:LAB08
SELECT CITY,SUM(TOTALPRICE) TOTALSALE,
(SELECT SUM(TOTALPRICE) FROM LAB08 WHERE CITY = L.CITY AND MONTH(DATE_) = MONTH(GETDATE()) - 1 AND YEAR(DATE_) = 2022) PREVMONTH
FROM LAB08 L
WHERE MONTH(DATE_) = MONTH(GETDATE()) AND YEAR(DATE_) = 2022
GROUP BY CITY,MONTH(DATE_)
ORDER BY 1,2