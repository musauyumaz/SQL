-- 13-Stored Procedure Al��t�rma-6
-- Elimizde ABD Savunma Bakanl��� taraf�ndan haz�rlanan 1970-2016 y�llar� aras�nda t�m d�nyada i�lenen ter�r sald�r�lar�n�n veritaban� bulunmakta. Bu veritaban� i�inde tarih aral���, ter�r �rg�t� ad� ve �lke ad�n� parametre ile g�nderen ve hangi y�l ka� sald�r� d�zenlendi�ini �eken stored procedure'� yaz�n�z.
-- Kaynak DB:LAB_SP
-- Kaynak Tablo :LAB_GLOBALTERROR
ALTER PROC SP_GET_TERROR_DATA
@BEGDATE AS DATE,
@ENDDATE AS DATE,
@COUNTRY AS VARCHAR(100),
@GNAME AS VARCHAR(100)
AS
SELECT YEAR(DATE_) YEAR_,COUNTRY_TXT,COUNT(*) EVENTCOUNT FROM LAB_GLOBALTERROR
WHERE DATE_ BETWEEN @BEGDATE AND @ENDDATE
AND COUNTRY_TXT LIKE @COUNTRY
AND GNAME = @GNAME
GROUP BY YEAR(DATE_),COUNTRY_TXT
ORDER BY 1

EXEC SP_GET_TERROR_DATA
@GNAME = 'Taliban',
@BEGDATE = '19900101',
@ENDDATE = '20160101',
@COUNTRY = '%'
