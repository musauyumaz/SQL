-- 13-String FonksiyonlarI Alýþtýrma 3
-- Sistemin kendisini yenilemeye ihtiyacý olduÐu zaman CTRL + SHIFT + R tuþlarýný kullanabilirsiniz.
-- Elimizde TÜrkçe isimlerden oluþan bir müþteri listesi var. Bu müþteri listesinde CITY ve TOWN alanlarý baþharfi büyük geri kalan harfleri küçük olacak þekilde yazýlmýþ durumda. Bu tabloda CITY ve TOWN alanlarýnýn tamamý büyük olacak þekilde update ediniz.
-- Kaynak Tablo : LAB03
SELECT * FROM LAB03 WHERE TOWN = 'SÝVRÝHÝSAR'
UPDATE LAB03 SET CITY = UPPER(CITY), TOWN = UPPER(TOWN)

SELECT UPPER('washington' COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS)

COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS
