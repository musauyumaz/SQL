-- 10- User Defined Functions Al��t�rma-3
-- Elimizde bir futbolcu listesi var ve futbolcular�n oynad��� ma�lar�n listesi var. Her bir futbolcunun 
-- Mevcut oynad��� tak�m�
-- Ka� farkl� tak�mda oynad���n�
-- Toplam ka� ma� yapt���n�
-- Ka� y�ld�r futbol oynad���n� getiren fonksiyonlar� yaz�n�z.
-- Kaynak DB: LAB_UDF
-- Kaynak Tablo: LAB_PLAYER, LAB_MATCH_PLAYER

SELECT * FROM LAB_PLAYER
SELECT * FROM LAB_MATCH_PLAYER

SELECT PLAYER_NAME,TEAM,COUNT(*) FROM LAB_MATCH_PLAYER
GROUP BY PLAYER_NAME,TEAM 
ORDER BY 1

CREATE FUNCTION DBO.GETCURRENTTEAM(@PLAYERID AS INT)
RETURNS VARCHAR(100)
AS
BEGIN
	DECLARE @TEAM AS VARCHAR(100)
	SELECT TOP 1 @TEAM=TEAM FROM LAB_MATCH_PLAYER WHERE PLAYERID = @PLAYERID ORDER BY DATE_ DESC
	RETURN @TEAM
END

ALTER FUNCTION DBO.GETTOTALMATCHCOUNT(@PLAYERID AS INT)
RETURNS INT
AS
BEGIN
	DECLARE @TOTALMATCH AS INT
	SELECT @TOTALMATCH=COUNT(*) FROM LAB_MATCH_PLAYER
	WHERE PLAYERID = @PLAYERID
	GROUP BY PLAYERID
	RETURN @TOTALMATCH
END

CREATE FUNCTION DBO.GETTOTALYEAR(@PLAYERID AS INT)
RETURNS INT
AS
BEGIN
	DECLARE @FIRSTMATCH DATE
	DECLARE @LASTMATCH DATE
	DECLARE @TOTALYEAR AS INT
	SELECT TOP 1 @LASTMATCH=DATE_ FROM LAB_MATCH_PLAYER WHERE PLAYERID = @PLAYERID ORDER BY DATE_ DESC
	SELECT TOP 1 @FIRSTMATCH=DATE_ FROM LAB_MATCH_PLAYER WHERE PLAYERID = @PLAYERID ORDER BY DATE_ ASC
	
	SET @TOTALYEAR = DATEDIFF(YEAR,@FIRSTMATCH,@LASTMATCH)
	RETURN IIF(@TOTALYEAR=0,1,@TOTALYEAR)
END

CREATE FUNCTION DBO.GETTEAMCOUNT(@PLAYERID AS INT)
RETURNS INT
AS
BEGIN
	DECLARE @TEAMCOUNT AS INT
	SELECT @TEAMCOUNT= COUNT(DISTINCT TEAM) FROM LAB_MATCH_PLAYER WHERE PLAYERID = @PLAYERID
	RETURN @TEAMCOUNT
END

SELECT PLAYER_NAME,
dbo.GETCURRENTTEAM(PLAYER_API_ID) CURRENTTEAM,
dbo.GETTOTALMATCHCOUNT(PLAYER_API_ID) TOTALMATCHCOUNT,
dbo.GETTOTALYEAR(PLAYER_API_ID) TOTALYEAR,
dbo.GETTEAMCOUNT(PLAYER_API_ID) TEAMCOUNT
FROM LAB_PLAYER
ORDER BY 5 DESC






