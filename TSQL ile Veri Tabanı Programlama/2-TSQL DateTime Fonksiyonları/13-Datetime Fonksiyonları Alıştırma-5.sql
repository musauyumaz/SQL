-- 13-Datetime Fonksiyonlar� Al��t�rma-5
-- Elimizde bir marketin sat�� verisi var. Bu verisetinde 30-50 ya� aras� kad�n m��terilerin en �ok al��veri� yapt�klar� saat aral���n� getiriniz.
-- Kaynak Tablo: LAB05
SELECT DATEPART(HOUR,DATE_) HOUR_ ,SUM(TOTALPRICE) TOTALSALE FROM LAB05 WHERE CUSTOMERGENDER = 'K' AND DATEDIFF(YEAR,CUSTOMERBIRHTDATE,GETDATE()) BETWEEN 30 AND 50
GROUP BY DATEPART(HOUR,DATE_)
ORDER BY 2 DESC