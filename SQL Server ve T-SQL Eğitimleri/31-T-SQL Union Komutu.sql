-- UNION | UNION ALL

-- UNION
-- Birden fazla SELECT sorgusu sonucunu tek seferde alt alta g�stermemizi sa�lar.

SELECT Adi,SoyAdi FROM Personeller
SELECT MusteriAdi,MusteriUnvani FROM Musteriler

SELECT Adi,SoyAdi FROM Personeller
UNION
SELECT MusteriAdi,MusteriUnvani FROM Musteriler

-- 2'den Fazla
SELECT Adi,SoyAdi FROM Personeller
UNION
SELECT MusteriAdi,MusteriUnvani FROM Musteriler
UNION
SELECT SevkAdi,SevkAdresi FROM Satislar

-- JOIN'ler yan yana, UNION alt alta tablolar� birle�tirir. JOIN'lerde belirli(ili�kisel) bir kolon �zerinden birle�tirme yap�l�rken, UNION'da b�yle bir durum yoktur.

-- Dikkat etmemiz gereken ko�ullar;
-- UNION sorgusunun sonucunda olu�an tablonun kolon isimleri, �stteki sorgunun kolon isimlerinden olu�turulur.
-- �stteki sorgudan ka� kolon �ekilmi�se alttaki sorgudan da o kadar �ekilmek zorundad�r.
-- �steki sorgudan �ekilen kolonlar�n tipleriyle, alttaki sorgudan �ekilen kolonlar�n tipleri uyumlu olmal�d�r.
-- UNION tekrarl� kay�tlar� getirmez.

-- UNION'da kullan�lan tablolara kolon eklenebilir. Dikkat etmemiz gereken nokta, yukar�daki kurallar �er�evesinde a�a��yada yukar�yada ayn� say�da kolonlar�n eklenmesi gerekmektedir.
SELECT Adi,SoyAdi, 'Personel' FROM Personeller
UNION
SELECT MusteriAdi,MusteriUnvani, 'M��teri' FROM Musteriler
