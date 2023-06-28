-- 19-String Fonksiyonlarý Alýþtýrma 9
-- Elimizde fotoðraf dosyalarýnýn exif bilgisini tutan bir veritabaný var. Bu veritabanýnda fotoðraf ile alakalý her bilgi ## ile ayýrt edilmiþ durumda. Buradaki bilgileri Enter karakteri ile alt alta yazdýrmak için gereken kodu yazýnýz.
-- Kaynak Tablo:LAB10
SELECT REPLACE(INFO,'##',CHAR(13)) + CHAR(13) + REPLICATE('*',100)
FROM LAB10