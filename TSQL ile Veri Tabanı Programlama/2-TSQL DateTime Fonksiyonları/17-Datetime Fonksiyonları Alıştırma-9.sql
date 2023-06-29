-- 17-Datetime Fonksiyonlarý Alýþtýrma-9
-- Elimizde doðum tarihi alaný date türünde olmayan varchar türünde olan bir müþteri listesi var. Burada tabloya BIRTHDATE2 isimli DATE türünde bir alan ekleyiniz. ve varchar türünde kaydedilmiþ BIRTHDATE alaný ile BIRTDATE2 alanýný güncelleyiniz.
-- Kaynak Tablo: LAB09
SELECT * FROM LAB09

UPDATE LAB09 SET BIRTHDATE2 = DATEFROMPARTS(RIGHT(BIRTHDATE,4),SUBSTRING(BIRTHDATE,4,2),LEFT(BIRTHDATE,2))
WHERE ISDATE(RIGHT(BIRTHDATE,4)+ '-' + SUBSTRING(BIRTHDATE,4,2)+ '-' + LEFT(BIRTHDATE,2)) = 1