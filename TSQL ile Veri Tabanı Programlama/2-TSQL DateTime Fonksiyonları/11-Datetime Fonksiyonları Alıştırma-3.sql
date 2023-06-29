-- 11-Datetime Fonksiyonlar� Al��t�rma-3
-- Elimizde bir marketin sat�� verisi var. Bu veriseti i�erisinde 2022 y�l�nda hangi ay toplam ne kadarl�k sat�� yap�ld���n� bilgisini getiren sorguyu yaz�n�z.
-- Kaynak Tablo:LAB03
SELECT  MONTH(DATE_)MONTH_,DATENAME(MONTH,DATE_) MONTHNAME_,SUM(TOTALPRICE) TOTALSALE FROM LAB03 
WHERE DATE_ BETWEEN '2022-01-01 00:00:00' AND '2022-12-31 23:59:59'
GROUP BY MONTH(DATE_),DATENAME(MONTH,DATE_)
ORDER BY MONTH(DATE_)