-- 10-Datetime Fonksiyonlar� Al��t�rma-2
-- Elimizde bir m��teri listesi var. Bu listede do�um tarihi alan� var. Buna g�re May�s ay�nda do�anlar�n listesini getiriniz.
-- Kaynak Tablo:LAB02
SELECT *,DATENAME(MONTH,BIRTHDATE) MONTH_ FROM LAB02 WHERE MONTH(BIRTHDATE) = 5

