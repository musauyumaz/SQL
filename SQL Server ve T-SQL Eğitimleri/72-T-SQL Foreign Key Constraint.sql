-- FOREIGN KEY CONSTRAINT 
-- Tablolarýn kolonlarý arasýnda iliþki kurmamýzý saðlar. Bu iliþki neticesinde FOREIGN KEY olan kolondaki karþýlýðýnýn boþa düþmemesi için PRIMARY KEY kolonu olan tablodan veri silinmesini güncellenmesini engeller

-- Genel Yapýsý;
-- ADD CONSTRAINT [CONSTRAINT ADI] FOREIGN KEY (KOLON ADI) REFERENCES [2.TABLO ADI](2. TABLODAKÝ KOLON ADI)

CREATE TABLE OGRENCILER
(
	OGRENCIID INT PRIMARY KEY IDENTITY(1,1),
	DERSID INT,
	ADI NVARCHAR(MAX),
	SOYADI NVARCHAR(MAX)
)

CREATE TABLE DERSLER
(
	DERSID INT PRIMARY KEY IDENTITY(1,1),
	DERSADI NVARCHAR(MAX)
)

ALTER TABLE OGRENCILER
ADD CONSTRAINT FOREIGKEYOGRENCIDERS FOREIGN KEY (DERSID) REFERENCES DERSLER(DERSID)

-- Þu durumda DELETE UPDATE iþlemlerinden iliþkili kolondaki veriler etkilenmez.
-- Davranýþý deðiþtirmek için aþaðýdaki komutlar kullanýlýr.
	-- CASCADE
	-- SET NULL
	-- SET DEFAULT