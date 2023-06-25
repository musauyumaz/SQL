-- TOP Keywordü Ýle Update Ýþlemi
-- Biz herhangi bir UPDATE iþleminde herhangi bir filtreleme uygulayabiliriz ama yapacaðýmýz filtrelemede ilklik ya da sonluk gerekiyorsa bunu TOP komutuyla yapmamýz daha doðru olacaktýr.

CREATE TABLE VERILER
(
	ID INT PRIMARY KEY IDENTITY,
	DEGER INT
)

DECLARE @I INT = 1
WHILE @I < 151
BEGIN 
	INSERT VERILER(DEGER) VALUES(@I)
	SET @I = @I + 1
END

SELECT TOP 2 * FROM Personeller

SELECT * FROM Veriler

UPDATE VERILER SET DEGER = DEGER - 5 WHERE ID <= 10
UPDATE TOP(10) VERILER SET DEGER = DEGER - 5