-- 11-Datetime Fonksiyonlarý Alýþtýrma-3
-- Elimizde bir marketin satýþ verisi var. Bu veriseti içerisinde 2022 yýlýnda hangi ay toplam ne kadarlýk satýþ yapýldýðýný bilgisini getiren sorguyu yazýnýz.
-- Kaynak Tablo:LAB03
SELECT  MONTH(DATE_)MONTH_,DATENAME(MONTH,DATE_) MONTHNAME_,SUM(TOTALPRICE) TOTALSALE FROM LAB03 
WHERE DATE_ BETWEEN '2022-01-01 00:00:00' AND '2022-12-31 23:59:59'
GROUP BY MONTH(DATE_),DATENAME(MONTH,DATE_)
ORDER BY MONTH(DATE_)