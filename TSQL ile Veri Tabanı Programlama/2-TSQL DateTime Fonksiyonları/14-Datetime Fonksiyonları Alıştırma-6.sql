-- 14-Datetime Fonksiyonlar� Al��t�rma-6
-- Elimizde bir marketin sat�� verisi var. Bu verisetinde her ay�n 10-15'i aras�nda yap�lan al��veri�leri y�l ve ay k�r�l�mlar�nda getiriniz.
-- Kaynak Tablo: LAB06
SET LANGUAGE TURKISH
SELECT DATEPART(YEAR,DATE_) YEAR_,DATEPART(MONTH,DATE_) MONTH_,DATENAME(MONTH,DATE_) MONTHNAME_,SUM(TOTALPRICE) TOTALSALE FROM LAB06
WHERE DATEPART(DAY,DATE_) BETWEEN 10 AND 15
GROUP BY DATEPART(YEAR,DATE_),DATEPART(MONTH,DATE_),DATENAME(MONTH,DATE_)
ORDER BY 1,2