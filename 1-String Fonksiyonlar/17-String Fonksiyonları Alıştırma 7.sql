-- 17-String Fonksiyonlarý Alýþtýrma 7
-- Elimizde bir market sisteminin veritabaný var. Burada ITEMCODE alaný metin bir alan olarak ID deðerine eþit tutuluyor. Biz burada ITEMCODE alanýný akýllý kod haline getirmek istiyoruz. Örneðin 1 numaralý satýr için kategori kodu 'EVV' ve ITEMCODE1 ise EVV000001 olacak þekilde, 24068 kayýt için ise GDA024068 olacak þekilde getirmek istiyoruz. Tüm ürün kodlarýný bu þekilde güncelleyecek kodu yazýnýz.
-- Kaynak Tablo : LAB07

SELECT * FROM LAB07

SELECT CATEGORY1CODE+ REPLICATE('0',6 - LEN(ITEMCODE)) + ITEMCODE FROM LAB07
UPDATE LAB07 SET ITEMCODE =  CATEGORY1CODE+ REPLICATE('0',6 - LEN(ITEMCODE)) + ITEMCODE

SELECT ID,ITEMCODE,ITEMNAME,CATEGORY1CODE,CATEGORY1,
CATEGORY1CODE+ REPLICATE('0',6 - LEN(ITEMCODE)) + ITEMCODE FROM LAB07

