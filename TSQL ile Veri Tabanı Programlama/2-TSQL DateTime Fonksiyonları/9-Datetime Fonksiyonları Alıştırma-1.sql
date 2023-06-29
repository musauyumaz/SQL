-- 9-Datetime Fonksiyonlarý Alýþtýrma-1
-- Elimizde bir müþteri listesi var. Bu listede doðum tarihi var. Buna göre 40-45 yaþ arasýndaki erkeklerin listesini getiriniz.
-- Kaynak Tablo: LAB01
SELECT *,DATEDIFF(YEAR,BIRTHDATE,GETDATE()) AGE FROM LAB01 WHERE DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 40 AND 45 AND GENDER = 'E' 
ORDER BY 11