-- === T-SQL Tanýmlama ===

-- Prototip
--CREATE TRIGGER [TRIGGER ADI]
-- ON [ÝÞLEM YAPILACAK TABLO ADI]
-- AFTER -- veya FOR DELETE, UPDATE, INSERT
-- AS
-- [KODLAR]

-- Dikkat ! ! !
-- Tanýmlanan TRIGGER'larla ilgili tablonun içerisindeki TRIGGERS sekmesi altýndan eriþebiliriz

CREATE TRIGGER ORNEKTRIGGER
ON Personeller
AFTER INSERT 
AS 
SELECT * FROM Personeller

INSERT Personeller(Adi,SoyAdi) VALUES('MUSA','UYUMAZ')

-- Örnek 1
-- Tedarikçiler tablosundan bir veri silindiðinde tüm ürünlerin fiyatý otomatik olarak 10 artsýn.
CREATE TRIGGER TRIGGERTEDARIKCILER
ON Tedarikciler
AFTER DELETE
AS
UPDATE Urunler SET BirimFiyati = BirimFiyati + 10
SELECT * FROM URUNLER

DELETE FROM Tedarikciler WHERE TedarikciID = 31

-- Örnek 2
-- Tedarikçiler tablosunda bir veri güncellendiðinde, kategoriler tablosunda meyve kokteyli adýnda bir kategori oluþsun :)
CREATE TRIGGER TRGTEDARIKGUNCELLENDIGINDE
ON Tedarikciler
AFTER UPDATE
AS
INSERT Kategoriler(KategoriAdi) VALUES('MEYVE KOKTEYLÝ')

UPDATE Tedarikciler SET MusteriAdi = 'SERHAT' WHERE TedarikciID = 29
SELECT * FROM Kategoriler

-- Örnek 3
-- Personeller tablosundan bir kayýt silindiðinde silinen kaydýn adý, soyadý, kim tarafýndan ve hangi tarihte silindiði baþka bir tabloya kayýt edilsin Bir nevi log tablosu misali...

CREATE TABLE LOGTABLOSU
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	RAPOR NVARCHAR(MAX)
)

CREATE TRIGGER TRIGGERPERSONELLER
ON Personeller
FOR DELETE
AS
DECLARE @ADI NVARCHAR(MAX), @SOYADI NVARCHAR(MAX)
SELECT @ADI = Adi, @SOYADI = SoyAdi FROM DELETED
INSERT LOGTABLOSU(RAPOR) VALUES('ADI VE SOYADI ' + @ADI + ' ' + @SOYADI + ' OLAN PERSONEL ' +SUSER_NAME() + ' TARAFINDAN ' + CAST(GETDATE() AS NVARCHAR(MAX)) + ' TARÝHÝNDE SÝLÝNMÝÞTÝR.')

DELETE FROM Personeller WHERE PersonelID = 16

-- Örnek 4
-- Personeller tablosunda update gerçekleþtiði anda devreye giren ve bir log tablosuna Adý ... olan personel ... yeni adýyla deðiþtirilerek ... kullanýcý tarafýndan ... tarihinde güncellendi. Kalýbýnda rapor yazan trigger'ý yazalým.

CREATE TRIGGER TRGPERSONELRAPOR
ON Personeller
AFTER UPDATE 
AS
DECLARE @ESKIISIM NVARCHAR(MAX), @YENIISIM NVARCHAR(MAX)
SELECT @ESKIISIM = Adi FROM deleted
SELECT @YENIISIM = Adi FROM inserted
INSERT LOGTABLOSU(RAPOR) VALUES('Adý '+ @ESKIISIM  +' olan personel ' + @YENIISIM +' yeni adýyla deðiþtirilerek ' + SUSER_NAME() +' kullanýcýsý tarafýndan ' +CAST(GETDATE() AS NVARCHAR(MAX))+ ' tarihinde güncellendi.')

UPDATE Personeller SET Adi = 'MUSA' WHERE PersonelID = 3

SELECT * FROM LOGTABLOSU