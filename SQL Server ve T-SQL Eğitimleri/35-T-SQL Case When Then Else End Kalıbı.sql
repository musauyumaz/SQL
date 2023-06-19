-- CASE - WHEN - ELSE - END
-- Sorgularda �art kal�b� olarak kullan�r�z.

-- Personellerimizin isim ve soyisimlerinin yan�nda; UnvanEki 'Mr.' ise 'Erkek', 'Ms.' ise 'Kad�n' yazs�n.
SELECT Adi,SoyAdi,UnvanEki FROM Personeller

SELECT Adi,SoyAdi,
CASE 
WHEN UnvanEki = 'Mrs.' OR UnvanEki = 'Ms.' THEN 'KADIN'
WHEN UnvanEki = 'Mr.' THEN 'ERKEK'
ELSE UnvanEki
END
FROM Personeller

-- E�er �r�n�n birim fiyat� 0 - 50 aras� ise '�in Mal�' 50 - 100 aras� ise 'Ucuz', 100 - 200 aras� ise 'Normal' ve 200'den fazla ise 'Pahal�' yazs�n.

SELECT UrunID,BirimFiyati FROM Urunler

SELECT UrunID,
CASE
WHEN BirimFiyati BETWEEN 0 AND 50 THEN '�in Mal�'
WHEN BirimFiyati BETWEEN 50 AND 100 THEN 'Ucuz'
WHEN BirimFiyati BETWEEN 100 AND 200 THEN 'Normal'
WHEN BirimFiyati> 200 THEN 'Pahal�'
ELSE 'BEL�RS�Z'
END
FROM Urunler