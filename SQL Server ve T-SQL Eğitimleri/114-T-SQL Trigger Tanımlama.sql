-- === T-SQL Tan�mlama ===

-- Prototip
--CREATE TRIGGER [TRIGGER ADI]
-- ON [��LEM YAPILACAK TABLO ADI]
-- AFTER -- veya FOR DELETE, UPDATE, INSERT
-- AS
-- [KODLAR]

-- Dikkat ! ! !
-- Tan�mlanan TRIGGER'larla ilgili tablonun i�erisindeki TRIGGERS sekmesi alt�ndan eri�ebiliriz

CREATE TRIGGER ORNEKTRIGGER
ON Personeller
AFTER INSERT 
AS 
SELECT * FROM Personeller

INSERT Personeller(Adi,SoyAdi) VALUES('MUSA','UYUMAZ')

-- �rnek 1
-- Tedarik�iler tablosundan bir veri silindi�inde t�m �r�nlerin fiyat� otomatik olarak 10 arts�n.
CREATE TRIGGER TRIGGERTEDARIKCILER
ON Tedarikciler
AFTER DELETE
AS
UPDATE Urunler SET BirimFiyati = BirimFiyati + 10
SELECT * FROM URUNLER

DELETE FROM Tedarikciler WHERE TedarikciID = 31

-- �rnek 2
-- Tedarik�iler tablosunda bir veri g�ncellendi�inde, kategoriler tablosunda meyve kokteyli ad�nda bir kategori olu�sun :)
CREATE TRIGGER TRGTEDARIKGUNCELLENDIGINDE
ON Tedarikciler
AFTER UPDATE
AS
INSERT Kategoriler(KategoriAdi) VALUES('MEYVE KOKTEYL�')

UPDATE Tedarikciler SET MusteriAdi = 'SERHAT' WHERE TedarikciID = 29
SELECT * FROM Kategoriler

-- �rnek 3
-- Personeller tablosundan bir kay�t silindi�inde silinen kayd�n ad�, soyad�, kim taraf�ndan ve hangi tarihte silindi�i ba�ka bir tabloya kay�t edilsin Bir nevi log tablosu misali...

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
INSERT LOGTABLOSU(RAPOR) VALUES('ADI VE SOYADI ' + @ADI + ' ' + @SOYADI + ' OLAN PERSONEL ' +SUSER_NAME() + ' TARAFINDAN ' + CAST(GETDATE() AS NVARCHAR(MAX)) + ' TAR�H�NDE S�L�NM��T�R.')

DELETE FROM Personeller WHERE PersonelID = 16

-- �rnek 4
-- Personeller tablosunda update ger�ekle�ti�i anda devreye giren ve bir log tablosuna Ad� ... olan personel ... yeni ad�yla de�i�tirilerek ... kullan�c� taraf�ndan ... tarihinde g�ncellendi. Kal�b�nda rapor yazan trigger'� yazal�m.

CREATE TRIGGER TRGPERSONELRAPOR
ON Personeller
AFTER UPDATE 
AS
DECLARE @ESKIISIM NVARCHAR(MAX), @YENIISIM NVARCHAR(MAX)
SELECT @ESKIISIM = Adi FROM deleted
SELECT @YENIISIM = Adi FROM inserted
INSERT LOGTABLOSU(RAPOR) VALUES('Ad� '+ @ESKIISIM  +' olan personel ' + @YENIISIM +' yeni ad�yla de�i�tirilerek ' + SUSER_NAME() +' kullan�c�s� taraf�ndan ' +CAST(GETDATE() AS NVARCHAR(MAX))+ ' tarihinde g�ncellendi.')

UPDATE Personeller SET Adi = 'MUSA' WHERE PersonelID = 3

SELECT * FROM LOGTABLOSU