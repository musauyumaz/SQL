-- UNION | UNION ALL

-- UNION
-- Birden fazla SELECT sorgusu sonucunu tek seferde alt alta göstermemizi saðlar.

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

-- JOIN'ler yan yana, UNION alt alta tablolarý birleþtirir. JOIN'lerde belirli(iliþkisel) bir kolon üzerinden birleþtirme yapýlýrken, UNION'da böyle bir durum yoktur.

-- Dikkat etmemiz gereken koþullar;
-- UNION sorgusunun sonucunda oluþan tablonun kolon isimleri, üstteki sorgunun kolon isimlerinden oluþturulur.
-- Üstteki sorgudan kaç kolon çekilmiþse alttaki sorgudan da o kadar çekilmek zorundadýr.
-- Üsteki sorgudan çekilen kolonlarýn tipleriyle, alttaki sorgudan çekilen kolonlarýn tipleri uyumlu olmalýdýr.
-- UNION tekrarlý kayýtlarý getirmez.

-- UNION'da kullanýlan tablolara kolon eklenebilir. Dikkat etmemiz gereken nokta, yukarýdaki kurallar çerçevesinde aþaðýyada yukarýyada ayný sayýda kolonlarýn eklenmesi gerekmektedir.
SELECT Adi,SoyAdi, 'Personel' FROM Personeller
UNION
SELECT MusteriAdi,MusteriUnvani, 'Müþteri' FROM Musteriler
