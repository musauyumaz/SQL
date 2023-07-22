-- 13-Stored Procedure Alýþtýrma-6
-- Elimizde ABD Savunma Bakanlýðý tarafýndan hazýrlanan 1970-2016 yýllarý arasýnda tüm dünyada iþlenen terör saldýrýlarýnýn veritabaný bulunmakta. Bu veritabaný içinde tarih aralýðý, terör örgütü adý ve ülke adýný parametre ile gönderen ve hangi yýl kaç saldýrý düzenlendiðini çeken stored procedure'ü yazýnýz.
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
