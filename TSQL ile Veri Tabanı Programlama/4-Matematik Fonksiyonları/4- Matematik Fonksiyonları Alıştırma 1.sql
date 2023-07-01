-- 4- Matematik Fonksiyonlarý Alýþtýrma 1
-- Elimizde para hareketlerinin kaydýný tutan bir sistemin veriseti var. Burada her bir müþteri için gelen ve giden havale bilgileri tutuluyor. Gelen havale için para tutarý pozitif, giden havale için negatif deðer olarak veritabanýna kaydediliyor. Bu tabloda müþteri bazýnda toplam para trafiði hacmi ve her bir müþterinin bakiyesini getirecek sorguyu yazýnýz.
-- Kaynak Tablo: LAB01
SELECT CUSTOMERID, SUM(ABS(AMOUNT)) MONEYVOLUME,SUM(AMOUNT) BALANCE FROM LAB01
GROUP BY CUSTOMERID
ORDER BY 1