-- 2-Case When Komutu
-- ANSI SQL standardında yani SQL dili içerisinde SELECT cümlelerinin içerisinde kullanabileceğimiz bir komut ve  bütün veritabanlarının ortak dili olan SQL'de kullabileceğimiz bir komut ve bütün veritabanlarında yine bu şekilde kullanabileceğimiz bir komut.

SELECT 
CASE 
	WHEN GENDER='E' THEN 'ERKEK'
	ELSE 'KADIN'
END AS GENDERXP,
CASE 
	WHEN DATEDIFF(YEAR,BIRTHDATE,GETDATE()) <=35 THEN 'GENÇ'
	WHEN DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 36 AND 55 THEN 'ORTA YAŞLI'
	WHEN DATEDIFF(YEAR,BIRTHDATE,GETDATE()) > 55 THEN 'YAŞLI'
END AS AGEGROUP,
DATEDIFF(YEAR,BIRTHDATE,GETDATE()) AGE,
* FROM CUSTOMERS