-- 18-String Fonksiyonlar� Al��t�rma 8
-- Elimizde makale kitap i�eriklerinin bulundu�u k���k bir veritaban� var. Bu veritaban�nda hangi sat�rda ka� kelime oldu�unu hesaplayan kodu yaz�n�z.
-- Kaynak tablo: LAB09
SELECT COUNT(*) FROM LAB09

SELECT *,
(SELECT COUNT(*) FROM string_split(FULLTEXT,' ')) FROM LAB09

SELECT COUNT(*) FROM string_split('BTK AKADEM�DEK� SQL dersleri ile veritaban� uzman� olun!',' ')
