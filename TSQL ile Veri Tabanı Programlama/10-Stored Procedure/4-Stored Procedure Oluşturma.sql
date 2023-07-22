-- 4-Stored Procedure Oluþturma
-- Bir stored procedure'ü çaðýrmanýn iki yolu vardýr birisi direkt stored procedure'ün adýný yazabiliriz. Diðeri ise EXEC stored procedure adý þeklinde kullanabiliriz.

ALTER PROCEDURE SP_GETSALES 
@CITY AS VARCHAR(50),
@BEGDATE DATE,
@ENDDATE DATE
AS
SELECT * FROM SALES WHERE CITY=@CITY AND DATE_ BETWEEN @BEGDATE AND @ENDDATE

SP_GETSALES @BEGDATE='20190501',@CITY='IÐDIR',@ENDDATE='20190601'
--EXEC SP_GETSALES