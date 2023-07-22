-- 11 -Stored Procedure Alýþtýrma-4
-- Elimizde satýþlarýn olduðu bir veritabaný var. Bu veritabanýnda içine baþlangýç ve bitiþ tarihlerini ve birden fazla seçilen þehir isimlerini alan ve buna göre satýþlarý çeken bir Stored Procedure yazýnýz. Bu procedure iki dataset döndürmelidir. Birincisi girilen filtrelerin ne olduðunu gösteren dataset, ikincisi ise bu filtrelere göre gelen sorgu sonucudur.
-- Kaynak DB: LAB_SP
-- Kaynak Tablo: LAB_SALES

ALTER PROC SP_SALES
@BEGDATE AS DATE,
@ENDDATE AS DATE,
@CITIES AS VARCHAR(500)
AS
DECLARE @RESULT AS VARCHAR(1000)
SET @RESULT = 'BEGDATE:'+CONVERT(VARCHAR,@BEGDATE,104)+CHAR(13)+ 'ENDDATE:'+CONVERT(VARCHAR,@ENDDATE,104)+CHAR(13)+'CITIES:'+@CITIES

SELECT @RESULT AS PARAMETERS
PRINT @RESULT

--SELECT 'BAÞLANGIÇ TARÝHÝ=:'+CONVERT(VARCHAR,@BEGDATE,104)+' BÝTÝÞ TARÝHÝ=:'+CONVERT(VARCHAR,@ENDDATE,104)+ ' ÞEHÝRLER=:'+@CITIES  FILTER
SELECT CATEGORY1 CATEGORY,SUM(TOTALPRICE) TOTALSALE FROM LAB_SALES
WHERE DATE_ BETWEEN @BEGDATE AND @ENDDATE
AND CITY IN(SELECT VALUE FROM string_split(@CITIES,','))
GROUP BY CATEGORY1
ORDER BY 2 DESC


EXEC SP_SALES @BEGDATE='20190531',@ENDDATE='20190601',@CITIES='ÝSTANBUL,BURSA,ÝZMÝR,ANKARA,EDÝRNE'