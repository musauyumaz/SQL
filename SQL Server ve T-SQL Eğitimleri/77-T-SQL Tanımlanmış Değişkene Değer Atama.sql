-- Tan�mlanm�� De�i�kenlere De�er Atama
-- �nceden tan�mlanm�� ya da olu�turulmu� bir de�i�kenin de�erine m�dahale etmek istiyorsak SET komutunu kullanmal�y�z.
-- SET komutu C# programlama dilinde bir property'nin d��ar�dan verilen de�eri yakalad��� bloktu. TSQL'de de ayn� mant�k de�i�kene d��ar�dan verilen de�er varsa SET ile yakalayaca��z.

DECLARE @YAS INT = 3

DECLARE @X INT

-- SET

SET @X = 125

DECLARE @TARIH DATETIME = GETDATE()

SET @TARIH = GETDATE()