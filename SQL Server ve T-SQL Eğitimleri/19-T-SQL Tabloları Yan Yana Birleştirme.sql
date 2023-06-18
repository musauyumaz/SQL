-- Tablolarý Yan Yana Birleþtirme
-- Her bir satýra eþ deðer farklý bir satýr türetiyor türetemediklerine de null deðer atýyor.

SELECT * FROM Personeller
SELECT * FROM Satislar

SELECT * FROM Personeller P,Satislar S WHERE P.PersonelID = s.PersonelID