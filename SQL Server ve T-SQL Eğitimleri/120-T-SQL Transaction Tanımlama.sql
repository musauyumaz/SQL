-- == TRANSACTION Tan�mlama ==
-- PROTOTIP
-- BEGIN TRAN [TRANSACTION ADI]
-- ��LEMLER

INSERT Bolge VALUES(5,'�orum') -- Varsay�lan olarak TRANSACTION kontrol�nde bir i�lemdir. Netice olarak gene varsay�lan olarak COMMIT TRAN olarak bitmektedir.

BEGIN TRAN KONTROL
INSERT Bolge VALUES(6,'Ankara')
COMMIT TRAN

-- Transaction'a isim vermek zorunda de�iliz.

BEGIN TRAN 
INSERT Bolge VALUES(7,'Antalya')
COMMIT TRAN

BEGIN TRAN KONTROL
DECLARE @i int
DELETE FROM Personeller WHERE PersonelID > 20
SET @i = @@ROWCOUNT
IF @i = 1
BEGIN
	PRINT 'KAYIT S�L�ND�.'
	COMMIT
	-- YA DA 
	-- COMMIT TRAN
END
ELSE
BEGIN
	PRINT '��lemler geri al�nd�'
	ROLLBACK
	-- YA DA
	-- ROLLBACK TRAN
END