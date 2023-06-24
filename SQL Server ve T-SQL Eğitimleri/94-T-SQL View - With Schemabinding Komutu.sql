-- === WITH SCHEMABINDING Komutu ===
-- Eðer VIEW'in kullandýðý esas fiziksel tablolarýn kolon isimleri bir þekilde deðiþtirilir, kolonlarý silinir ya da tablo yapýsý bir þekilde deðiþikliðe uðrar ise VIEW'in çalýþmasý artýk mümkün olmayacaktýr.
-- VIEW'in kullandýðý tablolar ve kolonlarý bu tarz iþlemler yapýlabilmesi ihtimaline karþý koruma altýna alýnabilir.
-- Bu koruma WITH SCHEMABINDING ile VIEW CREATE ya da ALTER edilirken, VIEW'in kullandýðý tablo SCHEMA adýyla birlikte verilmelidir. Örneðin, DBO(DATABASE OWNER) bir þema adýdýr. Þemalar C#'taki NAMESPACE'ler gibi düþünülebilir.
-- WITH SCHEMABINDING komutuda AS keywordünden önce yazýlmalýdýr.

CREATE TABLE ORNEKTABLO
(
	ID INT PRIMARY KEY IDENTITY,
	KOLON1 NVARCHAR(MAX)
)

CREATE VIEW ORNEKVIEW
WITH SCHEMABINDING
AS 
SELECT ID, KOLON1 FROM DBO.ORNEKTABLO

ALTER TABLE ORNEKTABLO
ALTER COLUMN KOLON1 INT