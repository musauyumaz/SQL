-- 16-Datetime Fonksiyonlar� Al��t�rma-8
-- Elimizde bir marketin sat�� verisi var. Bu verisetine g�re i�inde bulundu�umuz ay ve bir ay �ncesinin sat��lar�n� ma�aza bazl� olarak kar��la�t�r�n�z.
-- Kaynak Tablo:LAB08
SELECT CITY,SUM(TOTALPRICE) TOTALSALE,
(SELECT SUM(TOTALPRICE) FROM LAB08 WHERE CITY = L.CITY AND MONTH(DATE_) = MONTH(GETDATE()) - 1 AND YEAR(DATE_) = 2022) PREVMONTH
FROM LAB08 L
WHERE MONTH(DATE_) = MONTH(GETDATE()) AND YEAR(DATE_) = 2022
GROUP BY CITY,MONTH(DATE_)
ORDER BY 1,2