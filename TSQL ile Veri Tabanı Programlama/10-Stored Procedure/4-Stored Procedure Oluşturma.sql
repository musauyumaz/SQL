-- 4-Stored Procedure Olu�turma
-- Bir stored procedure'� �a��rman�n iki yolu vard�r birisi direkt stored procedure'�n ad�n� yazabiliriz. Di�eri ise EXEC stored procedure ad� �eklinde kullanabiliriz.

ALTER PROCEDURE SP_GETSALES 
@CITY AS VARCHAR(50),
@BEGDATE DATE,
@ENDDATE DATE
AS
SELECT * FROM SALES WHERE CITY=@CITY AND DATE_ BETWEEN @BEGDATE AND @ENDDATE

SP_GETSALES @BEGDATE='20190501',@CITY='I�DIR',@ENDDATE='20190601'
--EXEC SP_GETSALES