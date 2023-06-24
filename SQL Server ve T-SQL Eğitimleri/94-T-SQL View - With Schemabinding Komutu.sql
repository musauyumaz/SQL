-- === WITH SCHEMABINDING Komutu ===
-- E�er VIEW'in kulland��� esas fiziksel tablolar�n kolon isimleri bir �ekilde de�i�tirilir, kolonlar� silinir ya da tablo yap�s� bir �ekilde de�i�ikli�e u�rar ise VIEW'in �al��mas� art�k m�mk�n olmayacakt�r.
-- VIEW'in kulland��� tablolar ve kolonlar� bu tarz i�lemler yap�labilmesi ihtimaline kar�� koruma alt�na al�nabilir.
-- Bu koruma WITH SCHEMABINDING ile VIEW CREATE ya da ALTER edilirken, VIEW'in kulland��� tablo SCHEMA ad�yla birlikte verilmelidir. �rne�in, DBO(DATABASE OWNER) bir �ema ad�d�r. �emalar C#'taki NAMESPACE'ler gibi d���n�lebilir.
-- WITH SCHEMABINDING komutuda AS keyword�nden �nce yaz�lmal�d�r.

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