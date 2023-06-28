-- 14-String FonksiyonlarI Alýþtýrma 4
-- Elimizdeki Türkçe isimlerden oluþan bir müþteri listesi var. Bu müþteri listesinde CITY ve TOWN alanlarý tamamen büyük harfle yazýlmýþ durumda. Burada CITY ve TOWN alanlarýnýn sadece baþ harfleri büyük diðer harflerin küçük olacak þekilde update ediniz.
-- Kaynak Tanlo : LAB04

SELECT * FROM LAB04

SELECT SUBSTRING(CITY,1,1) + LOWER(SUBSTRING(CITY,2,LEN(CITY))) FROM LAB04

UPDATE LAB04 SET CITY = SUBSTRING(CITY,1,1) + LOWER(SUBSTRING(CITY,2,LEN(CITY))), TOWN = SUBSTRING(TOWN,1,1) + LOWER(SUBSTRING(TOWN,2,LEN(TOWN)))

SELECT LEFT(CITY,1)+(LOWER(RIGHT(CITY,LEN(CITY) - 1))),LEFT(TOWN,1)+(LOWER(RIGHT(TOWN,LEN(TOWN) - 1))) FROM LAB04