-- Tablolar� Yan Yana Birle�tirme
-- Her bir sat�ra e� de�er farkl� bir sat�r t�retiyor t�retemediklerine de null de�er at�yor.

SELECT * FROM Personeller
SELECT * FROM Satislar

SELECT * FROM Personeller P,Satislar S WHERE P.PersonelID = s.PersonelID