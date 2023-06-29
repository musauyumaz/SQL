-- 12-Datetime Fonksiyonlarý Alýþtýrma-4
-- Elimizde bir marketin satýþ verisi var. Bu verisetinde haftanýn günlerine göre yapýlan satýþlarý getiriniz.
-- Kaynak Tablo: LAB04
SET LANGUAGE TURKISH
SELECT DATENAME(DW,DATE_) DW,SUM(TOTALPRICE) TOPLAMSATIS FROM LAB04
GROUP BY DATEPART(DW,DATE_),DATENAME(DW,DATE_)
ORDER BY DATEPART(DW,DATE_)