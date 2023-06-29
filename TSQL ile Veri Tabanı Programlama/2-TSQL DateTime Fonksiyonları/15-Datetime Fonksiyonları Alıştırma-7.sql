-- 15-Datetime Fonksiyonlarý Alýþtýrma-7
-- Elimizde müþteri listesi var. Bu listeye göre bugün doðum günü olan kiþileri gösteriniz.
-- Kaynak Tablo: LAB07
SELECT * FROM LAB07 WHERE DAY(BIRTHDATE) = DAY(GETDATE()) AND MONTH(BIRTHDATE) = MONTH(GETDATE())