-- 11 -Stored Procedure Al��t�rma-4
-- Elimizde sat��lar�n oldu�u bir veritaban� var. Bu veritaban�nda i�ine ba�lang�� ve biti� tarihlerini ve birden fazla se�ilen �ehir isimlerini alan ve buna g�re sat��lar� �eken bir Stored Procedure yaz�n�z. Bu procedure iki dataset d�nd�rmelidir. Birincisi girilen filtrelerin ne oldu�unu g�steren dataset, ikincisi ise bu filtrelere g�re gelen sorgu sonucudur.
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

--SELECT 'BA�LANGI� TAR�H�=:'+CONVERT(VARCHAR,@BEGDATE,104)+' B�T�� TAR�H�=:'+CONVERT(VARCHAR,@ENDDATE,104)+ ' �EH�RLER=:'+@CITIES  FILTER
SELECT CATEGORY1 CATEGORY,SUM(TOTALPRICE) TOTALSALE FROM LAB_SALES
WHERE DATE_ BETWEEN @BEGDATE AND @ENDDATE
AND CITY IN(SELECT VALUE FROM string_split(@CITIES,','))
GROUP BY CATEGORY1
ORDER BY 2 DESC


EXEC SP_SALES @BEGDATE='20190531',@ENDDATE='20190601',@CITIES='�STANBUL,BURSA,�ZM�R,ANKARA,ED�RNE'