-- === INSTEAD OF TRIGGERLAR ===
-- Þu ana kadar INSERT UPDATE ve DELETE iþlemleri yapýlýrken þu þu iþlemleri yap mantýðýyþa çalýþtýk.(Yanýnda þunu yap)
-- Instead Of Triggerlar ise INSERT UPDATE ve DELETE iþlemleri yerine þu þu iþleri yap mantýðýyla çalýþmaktadýr. (Yerine Þunu Yap)

-- Prototip

-- CREATE TRIGGER [TRIGGER ADI]
-- ON [TABLO ADI]
-- INSTEAD OF DELETE INSERT UPDATE
-- AS
-- [KOMUTLAR]

-- Örnek 5
-- Personeller tablosunda UPDATE gerçekleþtiði anda yapýlacak güncelleþtirme yerine bir log tablosuna ADI ... olan personel ... yani adýyla deðiþtirilerek ... kullanýcý tarafýndan ... tarihinde güncellenmek istendi. kalýbýnda rapýr yazan trigger'ý yazalým.
CREATE TRIGGER TRGPERSONELLERRAPORINSTEAD
ON PERSONELLER
INSTEAD OF UPDATE
AS
DECLARE @ESKIADI NVARCHAR(MAX), @YENIADI NVARCHAR(MAX)
SELECT @ESKIADI = Adi FROM deleted
SELECT @YENIADI = Adi FROM inserted
INSERT LOGTABLOSU(RAPOR) VALUES('Adý '+ @ESKIADI  +' olan personel ' + @YENIADI +' yeni adýyla deðiþtirilerek ' + SUSER_NAME() +' kullanýcýsý tarafýndan ' +CAST(GETDATE() AS NVARCHAR(MAX))+ ' tarihinde istendi.')

UPDATE Personeller SET Adi = 'HÜSEYÝN' WHERE PersonelID = 15

-- Örnek 6
-- Personeller tablosunda adý Andrew olan kaydýn ilinmesini engelleyen ama diðerlerine izin veren trigger'ý yazalým.
CREATE TRIGGER AndrewTrigger
ON PERSONELLER
AFTER DELETE 
AS
DECLARE @ADI NVARCHAR(MAX)
SELECT @ADI = Adi FROM deleted
IF @ADI = 'Andrew'
	BEGIN 
		PRINT 'Bu kaydý Silemezsiniz.'
		ROLLBACK -- Yapýlan tüm iþlemleri geri alýr.
	END

DELETE FROM Personeller WHERE PersonelID = 17
		
