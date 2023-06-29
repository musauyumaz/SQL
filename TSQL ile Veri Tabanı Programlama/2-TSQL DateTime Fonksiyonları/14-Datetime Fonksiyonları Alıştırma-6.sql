-- 14-Datetime Fonksiyonlarý Alýþtýrma-6
-- Elimizde bir marketin satýþ verisi var. Bu verisetinde her ayýn 10-15'i arasýnda yapýlan alýþveriþleri yýl ve ay kýrýlýmlarýnda getiriniz.
-- Kaynak Tablo: LAB06
SET LANGUAGE TURKISH
SELECT DATEPART(YEAR,DATE_) YEAR_,DATEPART(MONTH,DATE_) MONTH_,DATENAME(MONTH,DATE_) MONTHNAME_,SUM(TOTALPRICE) TOTALSALE FROM LAB06
WHERE DATEPART(DAY,DATE_) BETWEEN 10 AND 15
GROUP BY DATEPART(YEAR,DATE_),DATEPART(MONTH,DATE_),DATENAME(MONTH,DATE_)
ORDER BY 1,2