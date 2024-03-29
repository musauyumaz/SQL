-- 6- Inline Table Valued Function

CREATE FUNCTION DBO.ITEMINFO(@ITEMID INT)
RETURNS TABLE 
AS 
RETURN
(
	SELECT I.ID,I.ITEMCODE,I.ITEMNAME ,SUM(OD.AMOUNT) TOTALAMOUNT, SUM(OD.LINETOTAL) TOTALSALE,
	MIN(OD.UNITPRICE) MINPRICE,MAX(OD.UNITPRICE) MAXPRICE,AVG(OD.UNITPRICE) AVGPRICE
	FROM ITEMS I
	JOIN ORDERDETAILS OD ON OD.ITEMID = I.ID
	WHERE I.ID = @ITEMID
	GROUP BY I.ID,I.ITEMCODE,I.ITEMNAME
)

--SELECT I.ID,I.ITEMCODE,I.ITEMNAME ,SUM(OD.AMOUNT) TOTALAMOUNT, SUM(OD.LINETOTAL) TOTALSALE,MIN(OD.UNITPRICE) MINPRICE,MAX(OD.UNITPRICE) MAXPRICE,AVG(OD.UNITPRICE) AVGPRICE
--	FROM ITEMS I
--	JOIN ORDERDETAILS OD ON OD.ITEMID = I.ID
--	WHERE I.ID = 1
--	GROUP BY I.ID,I.ITEMCODE,I.ITEMNAME

SELECT * FROM dbo.ITEMINFO(2) 

SELECT I.ID,I.ITEMCODE,I.ITEMNAME,
INF.TOTALAMOUNT,INF.TOTALSALE,INF.MINPRICE,INF.MAXPRICE,INF.AVGPRICE
FROM ITEMS I
CROSS APPLY dbo.ITEMINFO(I.ID) INF