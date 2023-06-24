-- VIEW Yapýsý

-- === KULLANIM AMACI ===
-- Genellikle karmaþýk sorgularýn tek bir sorgu üzerinden çalýþtýrýlabilmesidir.
-- Bu amaçla raporlama iþlemlerinde kullanýlabilirler.
-- Ayný zamanda güvenlik ihtiyacý olduðu durumlarda herhangi bir sorgunun 2. - 3. þahýslardan gizlenmesi amacýyla da kullanýlýrlar.

-- === GENEL ÖZELLÝKLERÝ ===
-- Herhangi bir sorgunun sonucunu tablo olarak ele alýp, ondan sorgu çekilebilmesini saðlarlar.
-- INSERT, UPDATE, DELETE yapabilirler. Bu iþlemleri fiziksel tabloya yansýtýrlar. *** Önemli
-- VIEW yapýlarý fiziksel olarak oluþturulan yapýlardýr. Yani veritabanýnda kaydedilmektedirler.
-- VIEW yapýlarý normal sorgulardan daha yavaþ çalýþýrlar.

-- Dikkat ! ! !
-- Database elemanlarýný CREATE komutuyla oluþturuyorduk. VIEW yapýsýda bir database yapýsý olduðu için CREATE komutu ile oluþturacaðýz.
CREATE VIEW  VW_GOTUR
AS 
SELECT P.Adi + ' ' + P.SoyAdi [ADI SOYADI], K.KategoriAdi [KATEGORÝ ADI], COUNT(S.SatisID) [TOPLAM SATIÞ] FROM Personeller P 
INNER JOIN Satislar S ON P.PersonelID = S.PersonelID 
INNER JOIN [Satis Detaylari] SD ON S.SatisID = SD.SatisID 
INNER JOIN Urunler U ON U.UrunID = SD.UrunID 
INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID 
GROUP BY P.Adi + ' ' + P.SoyAdi , K.KategoriAdi

SELECT * FROM VW_GOTUR
SELECT * FROM VW_GOTUR WHERE [ADI SOYADI] LIKE '%ROBERT%'

-- VIEW oluþturulurken kolonlara verilen aliaslar VIEW'den sorgu çekilirken kullanýlýr.
-- Bir yandan da VIEW'ýn kullandýðý gerçek tablolarýn kolon isimleri, VIEW içinde alias tanýmlanarak gizlenilmiþ olunur.
-- VIEW içinde ORDER BY kullanýlmaz.
-- ORDER BY VIEW içinde deðil VIEW çalýþýrken sorgu esnasýnda kullanýlmalýdýr.

SELECT * FROM VW_GOTUR ORDER BY [TOPLAM SATIÞ]

-- Yok eðer illaki VIEW içinde ORDER BY kullanacaðým diyorsanýz VIEW içinde TOP komutunu kullanmalýsýnýz.
-- TOP komutu ORDER BY'ýn kullanýlmasýný saðlamaktadýr.

CREATE VIEW VW_GOTUR
AS 
SELECT TOP 100 P.Adi + ' ' + P.SoyAdi [ADI SOYADI], K.KategoriAdi [KATEGORÝ ADI], COUNT(S.SatisID) [TOPLAM SATIÞ] FROM Personeller P 
INNER JOIN Satislar S ON P.PersonelID = S.PersonelID 
INNER JOIN [Satis Detaylari] SD ON S.SatisID = SD.SatisID 
INNER JOIN Urunler U ON U.UrunID = SD.UrunID 
INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID 
GROUP BY P.Adi + ' ' + P.SoyAdi , K.KategoriAdi ORDER BY [TOPLAM SATIÞ]
-- Bu durum çokta tavsiye edilen bir durum deðildir.

-- VIEW üzerinde INSERT, DELETE ve UPDATE yapýlabilir. Bu iþlemler fiziksel tabloya yansýtýlmaktadýrlar.
CREATE VIEW ORNEKVIEWPERSONELLER
AS 
SELECT Adi,SoyAdi,Unvan FROM Personeller

INSERT ORNEKVIEWPERSONELLER VALUES('MUSA','UYUMAZ','YZLM. VRTBN. UZMN')
UPDATE ORNEKVIEWPERSONELLER SET Adi = 'SERHAT' WHERE Adi = 'MUSA'
DELETE FROM ORNEKVIEWPERSONELLER WHERE Adi = 'SERHAT'

