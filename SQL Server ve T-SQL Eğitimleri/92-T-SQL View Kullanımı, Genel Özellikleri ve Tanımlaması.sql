-- VIEW Yap�s�

-- === KULLANIM AMACI ===
-- Genellikle karma��k sorgular�n tek bir sorgu �zerinden �al��t�r�labilmesidir.
-- Bu ama�la raporlama i�lemlerinde kullan�labilirler.
-- Ayn� zamanda g�venlik ihtiyac� oldu�u durumlarda herhangi bir sorgunun 2. - 3. �ah�slardan gizlenmesi amac�yla da kullan�l�rlar.

-- === GENEL �ZELL�KLER� ===
-- Herhangi bir sorgunun sonucunu tablo olarak ele al�p, ondan sorgu �ekilebilmesini sa�larlar.
-- INSERT, UPDATE, DELETE yapabilirler. Bu i�lemleri fiziksel tabloya yans�t�rlar. *** �nemli
-- VIEW yap�lar� fiziksel olarak olu�turulan yap�lard�r. Yani veritaban�nda kaydedilmektedirler.
-- VIEW yap�lar� normal sorgulardan daha yava� �al���rlar.

-- Dikkat ! ! !
-- Database elemanlar�n� CREATE komutuyla olu�turuyorduk. VIEW yap�s�da bir database yap�s� oldu�u i�in CREATE komutu ile olu�turaca��z.
CREATE VIEW  VW_GOTUR
AS 
SELECT P.Adi + ' ' + P.SoyAdi [ADI SOYADI], K.KategoriAdi [KATEGOR� ADI], COUNT(S.SatisID) [TOPLAM SATI�] FROM Personeller P 
INNER JOIN Satislar S ON P.PersonelID = S.PersonelID 
INNER JOIN [Satis Detaylari] SD ON S.SatisID = SD.SatisID 
INNER JOIN Urunler U ON U.UrunID = SD.UrunID 
INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID 
GROUP BY P.Adi + ' ' + P.SoyAdi , K.KategoriAdi

SELECT * FROM VW_GOTUR
SELECT * FROM VW_GOTUR WHERE [ADI SOYADI] LIKE '%ROBERT%'

-- VIEW olu�turulurken kolonlara verilen aliaslar VIEW'den sorgu �ekilirken kullan�l�r.
-- Bir yandan da VIEW'�n kulland��� ger�ek tablolar�n kolon isimleri, VIEW i�inde alias tan�mlanarak gizlenilmi� olunur.
-- VIEW i�inde ORDER BY kullan�lmaz.
-- ORDER BY VIEW i�inde de�il VIEW �al���rken sorgu esnas�nda kullan�lmal�d�r.

SELECT * FROM VW_GOTUR ORDER BY [TOPLAM SATI�]

-- Yok e�er illaki VIEW i�inde ORDER BY kullanaca��m diyorsan�z VIEW i�inde TOP komutunu kullanmal�s�n�z.
-- TOP komutu ORDER BY'�n kullan�lmas�n� sa�lamaktad�r.

CREATE VIEW VW_GOTUR
AS 
SELECT TOP 100 P.Adi + ' ' + P.SoyAdi [ADI SOYADI], K.KategoriAdi [KATEGOR� ADI], COUNT(S.SatisID) [TOPLAM SATI�] FROM Personeller P 
INNER JOIN Satislar S ON P.PersonelID = S.PersonelID 
INNER JOIN [Satis Detaylari] SD ON S.SatisID = SD.SatisID 
INNER JOIN Urunler U ON U.UrunID = SD.UrunID 
INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID 
GROUP BY P.Adi + ' ' + P.SoyAdi , K.KategoriAdi ORDER BY [TOPLAM SATI�]
-- Bu durum �okta tavsiye edilen bir durum de�ildir.

-- VIEW �zerinde INSERT, DELETE ve UPDATE yap�labilir. Bu i�lemler fiziksel tabloya yans�t�lmaktad�rlar.
CREATE VIEW ORNEKVIEWPERSONELLER
AS 
SELECT Adi,SoyAdi,Unvan FROM Personeller

INSERT ORNEKVIEWPERSONELLER VALUES('MUSA','UYUMAZ','YZLM. VRTBN. UZMN')
UPDATE ORNEKVIEWPERSONELLER SET Adi = 'SERHAT' WHERE Adi = 'MUSA'
DELETE FROM ORNEKVIEWPERSONELLER WHERE Adi = 'SERHAT'

