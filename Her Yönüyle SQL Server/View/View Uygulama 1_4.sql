ALTER VIEW VW_AYLARA_GORE_SATISLAR
AS
SELECT 
DATEPART(YEAR,O.DATE_) YIL,
CASE 
	WHEN DATEPART(MONTH,O.DATE_) = 1 THEN '01.OCK'
	WHEN DATEPART(MONTH,O.DATE_) = 2 THEN '02.�UB'
	WHEN DATEPART(MONTH,O.DATE_) = 3 THEN '03.MAR'
	WHEN DATEPART(MONTH,O.DATE_) = 4 THEN '04.N�S'
	WHEN DATEPART(MONTH,O.DATE_) = 5 THEN '05.MAY'
	WHEN DATEPART(MONTH,O.DATE_) = 6 THEN '06.HAZ'
	WHEN DATEPART(MONTH,O.DATE_) = 7 THEN '07.TEM'
	WHEN DATEPART(MONTH,O.DATE_) = 8 THEN '08.A�U'
	WHEN DATEPART(MONTH,O.DATE_) = 9 THEN '09.EYL'
	WHEN DATEPART(MONTH,O.DATE_) = 10 THEN '10.EKM'
	WHEN DATEPART(MONTH,O.DATE_) = 11 THEN '11.KAS'
	WHEN DATEPART(MONTH,O.DATE_) = 12 THEN '12.ARA'
END AS AY,

SUM(AMOUNT) TOPLAMMIKTAR, SUM(LINETOTAL) TOPLAMTUTAR, COUNT(OD.ID) URUNSAYISI,
COUNT(DISTINCT O.ID) AS MUSTERISAYISI
FROM ORDERDETAILS OD
INNER JOIN ORDERS O ON O.ID = OD.ORDERID
INNER JOIN ITEMS ITM ON ITM.ID = OD.ITEMID
INNER JOIN USERS U ON U.ID = O.USERID
INNER JOIN ADDRESS A ON A.ID = O.ADDRESSID
INNER JOIN COUNTRIES C ON C.ID = A.COUNTRYID
INNER JOIN CITIES CT ON CT.ID = A.CITYID
INNER JOIN TOWNS T ON T.ID = A.TOWNID
INNER JOIN PAYMENTS P ON P.ORDERID = O.ID

GROUP BY DATEPART(YEAR,O.DATE_), DATEPART(MONTH,O.DATE_)
ORDER BY DATEPART(YEAR,O.DATE_)