-- 4- Matematik Fonksiyonlar� Al��t�rma 1
-- Elimizde para hareketlerinin kayd�n� tutan bir sistemin veriseti var. Burada her bir m��teri i�in gelen ve giden havale bilgileri tutuluyor. Gelen havale i�in para tutar� pozitif, giden havale i�in negatif de�er olarak veritaban�na kaydediliyor. Bu tabloda m��teri baz�nda toplam para trafi�i hacmi ve her bir m��terinin bakiyesini getirecek sorguyu yaz�n�z.
-- Kaynak Tablo: LAB01
SELECT CUSTOMERID, SUM(ABS(AMOUNT)) MONEYVOLUME,SUM(AMOUNT) BALANCE FROM LAB01
GROUP BY CUSTOMERID
ORDER BY 1