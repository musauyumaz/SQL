-- 13-String FonksiyonlarI Al��t�rma 3
-- Sistemin kendisini yenilemeye ihtiyac� oldu�u zaman CTRL + SHIFT + R tu�lar�n� kullanabilirsiniz.
-- Elimizde T�rk�e isimlerden olu�an bir m��teri listesi var. Bu m��teri listesinde CITY ve TOWN alanlar� ba�harfi b�y�k geri kalan harfleri k���k olacak �ekilde yaz�lm�� durumda. Bu tabloda CITY ve TOWN alanlar�n�n tamam� b�y�k olacak �ekilde update ediniz.
-- Kaynak Tablo : LAB03
SELECT * FROM LAB03 WHERE TOWN = 'S�VR�H�SAR'
UPDATE LAB03 SET CITY = UPPER(CITY), TOWN = UPPER(TOWN)

SELECT UPPER('washington' COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS)

COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS
