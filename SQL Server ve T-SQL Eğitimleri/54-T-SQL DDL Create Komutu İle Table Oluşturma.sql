-- CREATE �le Tablo Olu�turma
USE ORNEKVERITABANI
CREATE TABLE ORNEKTABLO
(
	KOLON1 INT,
	KOLON2 NVARCHAR(MAX),
	KOLON3 MONEY
)

-- E�er kolon adlar�nda bo�luk varsa k��eli parantez([]) ile belirtilmelidir.
CREATE TABLE ORNEKTABLO2
(
	[KOLON 1] INT,
	[KOLON 2] NVARCHAR(MAX),
	[KOLON 3] MONEY
)