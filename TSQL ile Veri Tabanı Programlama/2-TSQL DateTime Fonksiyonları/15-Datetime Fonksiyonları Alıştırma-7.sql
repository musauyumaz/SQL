-- 15-Datetime Fonksiyonlar� Al��t�rma-7
-- Elimizde m��teri listesi var. Bu listeye g�re bug�n do�um g�n� olan ki�ileri g�steriniz.
-- Kaynak Tablo: LAB07
SELECT * FROM LAB07 WHERE DAY(BIRTHDATE) = DAY(GETDATE()) AND MONTH(BIRTHDATE) = MONTH(GETDATE())