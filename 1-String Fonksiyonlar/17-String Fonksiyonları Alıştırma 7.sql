-- 17-String Fonksiyonlar� Al��t�rma 7
-- Elimizde bir market sisteminin veritaban� var. Burada ITEMCODE alan� metin bir alan olarak ID de�erine e�it tutuluyor. Biz burada ITEMCODE alan�n� ak�ll� kod haline getirmek istiyoruz. �rne�in 1 numaral� sat�r i�in kategori kodu 'EVV' ve ITEMCODE1 ise EVV000001 olacak �ekilde, 24068 kay�t i�in ise GDA024068 olacak �ekilde getirmek istiyoruz. T�m �r�n kodlar�n� bu �ekilde g�ncelleyecek kodu yaz�n�z.
-- Kaynak Tablo : LAB07

SELECT * FROM LAB07

SELECT CATEGORY1CODE+ REPLICATE('0',6 - LEN(ITEMCODE)) + ITEMCODE FROM LAB07
UPDATE LAB07 SET ITEMCODE =  CATEGORY1CODE+ REPLICATE('0',6 - LEN(ITEMCODE)) + ITEMCODE

SELECT ID,ITEMCODE,ITEMNAME,CATEGORY1CODE,CATEGORY1,
CATEGORY1CODE+ REPLICATE('0',6 - LEN(ITEMCODE)) + ITEMCODE FROM LAB07

