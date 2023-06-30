-- 4-Tip Dönüþtürme Fonksiyonlarý Alýþtýrma 2
-- Elimizde doðum tarihi alaný DATE türünde olmayan varchar türünde olan bir müþteri listesi var. Burada tabloya BIRTHDATE2 isimli DATE türünde bir alan ekleyiniz ve VARCHAR türünde kaydedilmiþ BIRTHDATE alaný ile BIRTHDATE2 alanýný güncelleyiniz. Tarih formatý düzgün olmayan alanlar için NULL deðer update ediniz.
-- Kaynak Tablo: LAB02
SELECT * FROM LAB02

ALTER TABLE LAB02
ADD BIRTHDATE2 DATE

UPDATE LAB02 SET BIRTHDATE2 = TRY_CONVERT(DATE,(RIGHT(BIRTHDATE,4)+SUBSTRING(BIRTHDATE,4,2)+LEFT(BIRTHDATE,2)))