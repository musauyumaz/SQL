-- 9-View Al��t�rma-3
-- Elimizde bir E-Ticaret sisteminin dataseti var. Bu dataset i�inde m��teri listesi var. Bug�n do�an m��terilerimize toplu bir do�um g�n� mesaj� g�ndermek istiyoruz. Bunun i�in VWBUGUNDOGANLAR isimli bir view olu�turunuz.
-- Kaynak Tablo: ETRADE-RDMS

-- 'Sn. ADSOYAD BEY/HANIM YA�. YA�INIZI KUTLAR, A�LEN�ZLE VE SEVD�KLER�N�ZLE'

CREATE VIEW VWBUGUNDOGANLAR
AS
SELECT 
NAMESURNAME ADSOYAD,
'Sn. '+NAMESURNAME+ IIF(GENDER='E',' BEY ',' HANIM ') + CONVERT(VARCHAR,AGE)		+'. YA�INIZI KUTLAR, A�LEN�ZLE VE SEVD�KLER�N�ZLE B�RL�KTE MUTLU B�R �M�R GE��RMEN�Z� D�LER�Z' AS MESAJ
FROM 
(
	SELECT 
	NAMESURNAME,
	GENDER,
	DATEDIFF(YEAR,BIRTHDATE,GETDATE()) AGE
	FROM USERS WHERE MONTH(BIRTHDATE) = MONTH(GETDATE()) AND DAY(BIRTHDATE)= DAY(GETDATE())
) T