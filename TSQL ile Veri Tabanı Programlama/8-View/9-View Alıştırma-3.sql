-- 9-View Alýþtýrma-3
-- Elimizde bir E-Ticaret sisteminin dataseti var. Bu dataset içinde müþteri listesi var. Bugün doðan müþterilerimize toplu bir doðum günü mesajý göndermek istiyoruz. Bunun için VWBUGUNDOGANLAR isimli bir view oluþturunuz.
-- Kaynak Tablo: ETRADE-RDMS

-- 'Sn. ADSOYAD BEY/HANIM YAÞ. YAÞINIZI KUTLAR, AÝLENÝZLE VE SEVDÝKLERÝNÝZLE'

CREATE VIEW VWBUGUNDOGANLAR
AS
SELECT 
NAMESURNAME ADSOYAD,
'Sn. '+NAMESURNAME+ IIF(GENDER='E',' BEY ',' HANIM ') + CONVERT(VARCHAR,AGE)		+'. YAÞINIZI KUTLAR, AÝLENÝZLE VE SEVDÝKLERÝNÝZLE BÝRLÝKTE MUTLU BÝR ÖMÜR GEÇÝRMENÝZÝ DÝLERÝZ' AS MESAJ
FROM 
(
	SELECT 
	NAMESURNAME,
	GENDER,
	DATEDIFF(YEAR,BIRTHDATE,GETDATE()) AGE
	FROM USERS WHERE MONTH(BIRTHDATE) = MONTH(GETDATE()) AND DAY(BIRTHDATE)= DAY(GETDATE())
) T