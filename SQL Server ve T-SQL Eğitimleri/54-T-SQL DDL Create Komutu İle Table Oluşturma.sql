-- CREATE Ýle Tablo Oluþturma
USE ORNEKVERITABANI
CREATE TABLE ORNEKTABLO
(
	KOLON1 INT,
	KOLON2 NVARCHAR(MAX),
	KOLON3 MONEY
)

-- Eðer kolon adlarýnda boþluk varsa köþeli parantez([]) ile belirtilmelidir.
CREATE TABLE ORNEKTABLO2
(
	[KOLON 1] INT,
	[KOLON 2] NVARCHAR(MAX),
	[KOLON 3] MONEY
)