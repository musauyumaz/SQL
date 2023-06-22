-- Tanýmlanmýþ Deðiþkenlere Deðer Atama
-- Önceden tanýmlanmýþ ya da oluþturulmuþ bir deðiþkenin deðerine müdahale etmek istiyorsak SET komutunu kullanmalýyýz.
-- SET komutu C# programlama dilinde bir property'nin dýþarýdan verilen deðeri yakaladýðý bloktu. TSQL'de de ayný mantýk deðiþkene dýþarýdan verilen deðer varsa SET ile yakalayacaðýz.

DECLARE @YAS INT = 3

DECLARE @X INT

-- SET

SET @X = 125

DECLARE @TARIH DATETIME = GETDATE()

SET @TARIH = GETDATE()