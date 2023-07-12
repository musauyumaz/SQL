-- 2-Case When Komutu
-- ANSI SQL standardýnda yani SQL dili içerisinde SELECT cümlelerinin içerisinde kullanabileceðimiz bir komut ve  bütün veritabanlarýnýn ortak dili olan SQL'de kullabileceðimiz bir komut ve bütün veritabanlarýnda yine bu þekilde kullanabileceðimiz bir komut.

SELECT 
CASE 
	WHEN GENDER='E' THEN 'ERKEK'
	ELSE 'KADIN'
END AS GENDERXP,
CASE 
	WHEN DATEDIFF(YEAR,BIRTHDATE,GETDATE()) <=35 THEN 'GENÇ'
	WHEN DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 36 AND 55 THEN 'ORTA YAÞLI'
	WHEN DATEDIFF(YEAR,BIRTHDATE,GETDATE()) > 55 THEN 'YAÞLI'
END AS AGEGROUP,
DATEDIFF(YEAR,BIRTHDATE,GETDATE()) AGE,
* FROM CUSTOMERS