DECLARE @I AS INT=0
WHILE @I < 100000
BEGIN
	INSERT INTO DATES(DATE_)
	VALUES(GETDATE())
	WAITFOR DELAY '00:00:00:100'
	SET @I=@I+1
END