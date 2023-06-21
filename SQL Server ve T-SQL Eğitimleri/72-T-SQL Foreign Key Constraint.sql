-- FOREIGN KEY CONSTRAINT 
-- Tablolar�n kolonlar� aras�nda ili�ki kurmam�z� sa�lar. Bu ili�ki neticesinde FOREIGN KEY olan kolondaki kar��l���n�n bo�a d��memesi i�in PRIMARY KEY kolonu olan tablodan veri silinmesini g�ncellenmesini engeller

-- Genel Yap�s�;
-- ADD CONSTRAINT [CONSTRAINT ADI] FOREIGN KEY (KOLON ADI) REFERENCES [2.TABLO ADI](2. TABLODAK� KOLON ADI)

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

-- �u durumda DELETE UPDATE i�lemlerinden ili�kili kolondaki veriler etkilenmez.
-- Davran��� de�i�tirmek i�in a�a��daki komutlar kullan�l�r.
	-- CASCADE
	-- SET NULL
	-- SET DEFAULT