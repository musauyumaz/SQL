-- == TRANSACTION Tanýmlama ==
-- PROTOTIP
-- BEGIN TRAN [TRANSACTION ADI]
-- ÝÞLEMLER

INSERT Bolge VALUES(5,'Çorum') -- Varsayýlan olarak TRANSACTION kontrolünde bir iþlemdir. Netice olarak gene varsayýlan olarak COMMIT TRAN olarak bitmektedir.

BEGIN TRAN KONTROL
INSERT Bolge VALUES(6,'Ankara')
COMMIT TRAN

-- Transaction'a isim vermek zorunda deðiliz.

BEGIN TRAN 
INSERT Bolge VALUES(7,'Antalya')
COMMIT TRAN

BEGIN TRAN KONTROL
DECLARE @i int
DELETE FROM Personeller WHERE PersonelID > 20
SET @i = @@ROWCOUNT
IF @i = 1
BEGIN
	PRINT 'KAYIT SÝLÝNDÝ.'
	COMMIT
	-- YA DA 
	-- COMMIT TRAN
END
ELSE
BEGIN
	PRINT 'Ýþlemler geri alýndý'
	ROLLBACK
	-- YA DA
	-- ROLLBACK TRAN
END