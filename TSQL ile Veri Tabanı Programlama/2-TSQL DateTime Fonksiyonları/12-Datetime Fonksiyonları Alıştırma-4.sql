-- 12-Datetime Fonksiyonlar� Al��t�rma-4
-- Elimizde bir marketin sat�� verisi var. Bu verisetinde haftan�n g�nlerine g�re yap�lan sat��lar� getiriniz.
-- Kaynak Tablo: LAB04
SET LANGUAGE TURKISH
SELECT DATENAME(DW,DATE_) DW,SUM(TOTALPRICE) TOPLAMSATIS FROM LAB04
GROUP BY DATEPART(DW,DATE_),DATENAME(DW,DATE_)
ORDER BY DATEPART(DW,DATE_)