-- 14-String FonksiyonlarI Al��t�rma 4
-- Elimizdeki T�rk�e isimlerden olu�an bir m��teri listesi var. Bu m��teri listesinde CITY ve TOWN alanlar� tamamen b�y�k harfle yaz�lm�� durumda. Burada CITY ve TOWN alanlar�n�n sadece ba� harfleri b�y�k di�er harflerin k���k olacak �ekilde update ediniz.
-- Kaynak Tanlo : LAB04

SELECT * FROM LAB04

SELECT SUBSTRING(CITY,1,1) + LOWER(SUBSTRING(CITY,2,LEN(CITY))) FROM LAB04

UPDATE LAB04 SET CITY = SUBSTRING(CITY,1,1) + LOWER(SUBSTRING(CITY,2,LEN(CITY))), TOWN = SUBSTRING(TOWN,1,1) + LOWER(SUBSTRING(TOWN,2,LEN(TOWN)))

SELECT LEFT(CITY,1)+(LOWER(RIGHT(CITY,LEN(CITY) - 1))),LEFT(TOWN,1)+(LOWER(RIGHT(TOWN,LEN(TOWN) - 1))) FROM LAB04