-- 13-Datetime Fonksiyonlarý Alýþtýrma-5
-- Elimizde bir marketin satýþ verisi var. Bu verisetinde 30-50 yaþ arasý kadýn müþterilerin en çok alýþveriþ yaptýklarý saat aralýðýný getiriniz.
-- Kaynak Tablo: LAB05
SELECT DATEPART(HOUR,DATE_) HOUR_ ,SUM(TOTALPRICE) TOTALSALE FROM LAB05 WHERE CUSTOMERGENDER = 'K' AND DATEDIFF(YEAR,CUSTOMERBIRHTDATE,GETDATE()) BETWEEN 30 AND 50
GROUP BY DATEPART(HOUR,DATE_)
ORDER BY 2 DESC