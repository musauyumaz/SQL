-- 19-String Fonksiyonlar� Al��t�rma 9
-- Elimizde foto�raf dosyalar�n�n exif bilgisini tutan bir veritaban� var. Bu veritaban�nda foto�raf ile alakal� her bilgi ## ile ay�rt edilmi� durumda. Buradaki bilgileri Enter karakteri ile alt alta yazd�rmak i�in gereken kodu yaz�n�z.
-- Kaynak Tablo:LAB10
SELECT REPLACE(INFO,'##',CHAR(13)) + CHAR(13) + REPLICATE('*',100)
FROM LAB10