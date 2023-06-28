-- 18-String Fonksiyonlarý Alýþtýrma 8
-- Elimizde makale kitap içeriklerinin bulunduðu küçük bir veritabaný var. Bu veritabanýnda hangi satýrda kaç kelime olduðunu hesaplayan kodu yazýnýz.
-- Kaynak tablo: LAB09
SELECT COUNT(*) FROM LAB09

SELECT *,
(SELECT COUNT(*) FROM string_split(FULLTEXT,' ')) FROM LAB09

SELECT COUNT(*) FROM string_split('BTK AKADEMÝDEKÝ SQL dersleri ile veritabaný uzmaný olun!',' ')
