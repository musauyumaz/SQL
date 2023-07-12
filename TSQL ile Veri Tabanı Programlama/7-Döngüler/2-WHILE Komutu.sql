-- 2-WHILE Komutu
-- While komutu temel anlam itibariyle bir þart gerççekleþene kadar bu iþlemi yap anlamýnda kullandýðýmýz bir komuttur.

--TRUNCATE TABLE DATES
--ALTER TABLE DATES
--ALTER COLUMN DATE_ DATETIME2(7)
DECLARE @I AS INT = 0
WHILE @I < 10
BEGIN 
	INSERT INTO DATES(DATE_) VALUES(GETDATE())
	WAITFOR DELAY '00:00:01'
	SET @I = @I + 1
END

SELECT * FROM DATES