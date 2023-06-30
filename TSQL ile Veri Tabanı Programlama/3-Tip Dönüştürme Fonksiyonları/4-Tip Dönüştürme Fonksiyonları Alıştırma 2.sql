-- 4-Tip D�n��t�rme Fonksiyonlar� Al��t�rma 2
-- Elimizde do�um tarihi alan� DATE t�r�nde olmayan varchar t�r�nde olan bir m��teri listesi var. Burada tabloya BIRTHDATE2 isimli DATE t�r�nde bir alan ekleyiniz ve VARCHAR t�r�nde kaydedilmi� BIRTHDATE alan� ile BIRTHDATE2 alan�n� g�ncelleyiniz. Tarih format� d�zg�n olmayan alanlar i�in NULL de�er update ediniz.
-- Kaynak Tablo: LAB02
SELECT * FROM LAB02

ALTER TABLE LAB02
ADD BIRTHDATE2 DATE

UPDATE LAB02 SET BIRTHDATE2 = TRY_CONVERT(DATE,(RIGHT(BIRTHDATE,4)+SUBSTRING(BIRTHDATE,4,2)+LEFT(BIRTHDATE,2)))