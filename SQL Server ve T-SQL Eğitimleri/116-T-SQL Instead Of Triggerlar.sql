-- === INSTEAD OF TRIGGERLAR ===
-- �u ana kadar INSERT UPDATE ve DELETE i�lemleri yap�l�rken �u �u i�lemleri yap mant���y�a �al��t�k.(Yan�nda �unu yap)
-- Instead Of Triggerlar ise INSERT UPDATE ve DELETE i�lemleri yerine �u �u i�leri yap mant���yla �al��maktad�r. (Yerine �unu Yap)

-- Prototip

-- CREATE TRIGGER [TRIGGER ADI]
-- ON [TABLO ADI]
-- INSTEAD OF DELETE INSERT UPDATE
-- AS
-- [KOMUTLAR]

-- �rnek 5
-- Personeller tablosunda UPDATE ger�ekle�ti�i anda yap�lacak g�ncelle�tirme yerine bir log tablosuna ADI ... olan personel ... yani ad�yla de�i�tirilerek ... kullan�c� taraf�ndan ... tarihinde g�ncellenmek istendi. kal�b�nda rap�r yazan trigger'� yazal�m.
CREATE TRIGGER TRGPERSONELLERRAPORINSTEAD
ON PERSONELLER
INSTEAD OF UPDATE
AS
DECLARE @ESKIADI NVARCHAR(MAX), @YENIADI NVARCHAR(MAX)
SELECT @ESKIADI = Adi FROM deleted
SELECT @YENIADI = Adi FROM inserted
INSERT LOGTABLOSU(RAPOR) VALUES('Ad� '+ @ESKIADI  +' olan personel ' + @YENIADI +' yeni ad�yla de�i�tirilerek ' + SUSER_NAME() +' kullan�c�s� taraf�ndan ' +CAST(GETDATE() AS NVARCHAR(MAX))+ ' tarihinde istendi.')

UPDATE Personeller SET Adi = 'H�SEY�N' WHERE PersonelID = 15

-- �rnek 6
-- Personeller tablosunda ad� Andrew olan kayd�n ilinmesini engelleyen ama di�erlerine izin veren trigger'� yazal�m.
CREATE TRIGGER AndrewTrigger
ON PERSONELLER
AFTER DELETE 
AS
DECLARE @ADI NVARCHAR(MAX)
SELECT @ADI = Adi FROM deleted
IF @ADI = 'Andrew'
	BEGIN 
		PRINT 'Bu kayd� Silemezsiniz.'
		ROLLBACK -- Yap�lan t�m i�lemleri geri al�r.
	END

DELETE FROM Personeller WHERE PersonelID = 17
		
