-- 9-Datetime Fonksiyonlar� Al��t�rma-1
-- Elimizde bir m��teri listesi var. Bu listede do�um tarihi var. Buna g�re 40-45 ya� aras�ndaki erkeklerin listesini getiriniz.
-- Kaynak Tablo: LAB01
SELECT *,DATEDIFF(YEAR,BIRTHDATE,GETDATE()) AGE FROM LAB01 WHERE DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 40 AND 45 AND GENDER = 'E' 
ORDER BY 11