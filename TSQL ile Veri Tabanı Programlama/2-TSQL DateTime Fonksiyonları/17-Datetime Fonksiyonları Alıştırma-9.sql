-- 17-Datetime Fonksiyonlar� Al��t�rma-9
-- Elimizde do�um tarihi alan� date t�r�nde olmayan varchar t�r�nde olan bir m��teri listesi var. Burada tabloya BIRTHDATE2 isimli DATE t�r�nde bir alan ekleyiniz. ve varchar t�r�nde kaydedilmi� BIRTHDATE alan� ile BIRTDATE2 alan�n� g�ncelleyiniz.
-- Kaynak Tablo: LAB09
SELECT * FROM LAB09

UPDATE LAB09 SET BIRTHDATE2 = DATEFROMPARTS(RIGHT(BIRTHDATE,4),SUBSTRING(BIRTHDATE,4,2),LEFT(BIRTHDATE,2))
WHERE ISDATE(RIGHT(BIRTHDATE,4)+ '-' + SUBSTRING(BIRTHDATE,4,2)+ '-' + LEFT(BIRTHDATE,2)) = 1