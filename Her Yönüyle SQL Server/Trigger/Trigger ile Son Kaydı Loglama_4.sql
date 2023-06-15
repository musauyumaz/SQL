CREATE TRIGGER TRG_TRANSACTION_INSERT
ON WORKERTRANSACTIONS
AFTER INSERT
AS
BEGIN
DECLARE @WORKERID AS INT
DECLARE @DATE AS DATETIME
DECLARE @IOTYPE AS VARCHAR(1)

SELECT @WORKERID=WORKERID,@DATE=DATE_,@IOTYPE=IOTYPE FROM INSERTED

UPDATE WORKERLASTTRANSACTIONS SET LASTIOTYPE=@IOTYPE,LASTDATE=@DATE WHERE WORKERID=@WORKERID

END
