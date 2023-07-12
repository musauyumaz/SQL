-- 2-Case When Komutu
-- ANSI SQL standard�nda yani SQL dili i�erisinde SELECT c�mlelerinin i�erisinde kullanabilece�imiz bir komut ve  b�t�n veritabanlar�n�n ortak dili olan SQL'de kullabilece�imiz bir komut ve b�t�n veritabanlar�nda yine bu �ekilde kullanabilece�imiz bir komut.

SELECT 
CASE 
	WHEN GENDER='E' THEN 'ERKEK'
	ELSE 'KADIN'
END AS GENDERXP,
CASE 
	WHEN DATEDIFF(YEAR,BIRTHDATE,GETDATE()) <=35 THEN 'GEN�'
	WHEN DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 36 AND 55 THEN 'ORTA YA�LI'
	WHEN DATEDIFF(YEAR,BIRTHDATE,GETDATE()) > 55 THEN 'YA�LI'
END AS AGEGROUP,
DATEDIFF(YEAR,BIRTHDATE,GETDATE()) AGE,
* FROM CUSTOMERS