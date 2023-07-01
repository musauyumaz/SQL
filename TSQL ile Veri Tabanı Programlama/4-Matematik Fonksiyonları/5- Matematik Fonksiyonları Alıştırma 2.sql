-- 5- Matematik Fonksiyonlar� Al��t�rma 2
-- Elimizde Avrupa futbol kul�plerinin bulundu�u bir veriseti var. Burada bir �ekili� ile rastgelee iki tak�m� e�le�tirecek �ekilde bir SQL c�mlesi yaz�n�z. Not: Sorgu iki kez �al��t�r�lacak ve her seferinde bir tak�m se�imi ger�ekle�ecektir.
-- Kaynak Tablo: LAB02

DECLARE @EVSAHIBI INT = 1, @DEPLASMAN INT = 1
SELECT @EVSAHIBI = CONVERT(INT,RAND() * 299),@DEPLASMAN = CONVERT(INT,RAND() * 299)

SELECT 
TEAM_LONG_NAME + ' VS ' +
(SELECT TEAM_LONG_NAME FROM LAB02 WHERE ID = @DEPLASMAN) E�LE�ME
FROM LAB02 WHERE ID = @EVSAHIBI 

-- ORDER BY NEWID()
-- Burada hangi ID de�erlerini kaybolup kaybolmad���n� bilemeyiz. Bu y�zden burada ORDER BY NEWID() diyerek rastgele bir say� �ekebilir ve hata da almay�z.
-- Tabi RAND() fonksiyonuna g�re daha yava� �al��an bir yap�d�r.
SELECT TOP 1 * FROM LAB02 ORDER BY NEWID()

SELECT TOP 1 TEAM_LONG_NAME 
+ ' VS ' +
(SELECT TOP 1 TEAM_LONG_NAME FROM LAB02 ORDER BY NEWID()) E�LE�ME
FROM LAB02 ORDER BY NEWID() DESC