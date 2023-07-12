-- 6-�art Bloklar� Al��t�rma-3
-- Elimizde bir sat�� verisi var. Bu veride her bir �ehirde erkeklerin ve kad�nlar�n ne kadar al��veri� yapt���n� ve birbirine oran�n� bulunuz ve toplam ciro rakam�ndaki orana g�re her bir �ehir i�in kad�nlar�n ortalaman�n alt�nda m� yoksa �st�nde mi al��veri� yapt���n� hesaplay�n�z.
-- Kaynak DB:LAB_CONDITION_BLOCKS
-- Kaynak Tablo:LAB03


SELECT CITY,SUM(TOTALPRICE) TOTALPRICE,
(SELECT SUM(TOTALPRICE) FROM LAB03 WHERE CUSTOMERGENDER ='K' AND CITY = L.CITY) FEMALESALE,
(SELECT SUM(TOTALPRICE) FROM LAB03 WHERE CUSTOMERGENDER ='E' AND CITY = L.CITY) MALESALE,
IIF(((SELECT SUM(TOTALPRICE) FROM LAB03 WHERE CUSTOMERGENDER ='K' AND CITY = L.CITY) + (SELECT SUM(TOTALPRICE) FROM LAB03 WHERE CUSTOMERGENDER ='E' AND CITY = L.CITY))/ 2 > (SELECT SUM(TOTALPRICE) FROM LAB03 WHERE CUSTOMERGENDER ='K' AND CITY = L.CITY),'ORTALAMADAN D���K','ORTALAMADAN Y�KSEK') FEMALE_MALE_RATIO,
((SELECT SUM(TOTALPRICE) FROM LAB03 WHERE CUSTOMERGENDER ='K' AND CITY = L.CITY) + (SELECT SUM(TOTALPRICE) FROM LAB03 WHERE CUSTOMERGENDER ='E' AND CITY = L.CITY)) / 2 RATIO
FROM LAB03 L
GROUP BY CITY
ORDER BY 1



SELECT *,
(FEMALESALE+MALESALE)/2 AS RATIO,
IIF((FEMALESALE+MALESALE)/2 > FEMALESALE,'ORTALAMADAN D���K','ORTALAMADAN Y�KSEK') FEMALE_MALE_RATIO
FROM
(
	SELECT DISTINCT CITY,
	(SELECT SUM(TOTALPRICE) FROM LAB03 WHERE CUSTOMERGENDER ='K' AND CITY = L.CITY) FEMALESALE,
	(SELECT SUM(TOTALPRICE) FROM LAB03 WHERE CUSTOMERGENDER ='E' AND CITY = L.CITY) MALESALE
	FROM LAB03 L
) T 
ORDER BY 1