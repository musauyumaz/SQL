-- WITH Komutu
-- Herhangi bir sorguda parametrik �zellik kazand�rmam�z� sa�layan bir komuttur.
-- �leride g�rece�imiz Stored Procedure, View gibi yap�lar�n kaydedilebilir olmas� iken WITH Komutu kaydedilemeyen keza biz direkt fiziksel olarak kaydetmedi�imiz s�rece �al��t�rd���m�zda herhangi bir veritaban�n�n yap�s�na kaydedilmeyen yap�dad�r. Yani anl�k olarak kullan�p i�imizi g�ren bir komuttur.
-- Kompleks sorgular�n yaz�lma s�recinde daha da  komplekse gidiyorsa e�er WITH komutuyla biz mevcut sorguyu parametrik hale getirip daha okunabilir ve daha da i�imizi kolayla�t�rabilir bir yap� kazand�rmay� hedefliyoruz.

WITH PERSONELSATIS(ID,ADI,SOYADI,SATISID)
AS
(
SELECT P.PersonelID,P.Adi,P.SoyAdi,S.SatisID FROM Personeller P INNER JOIN Satislar S ON P.PersonelID = S.PersonelID
)
SELECT * FROM PERSONELSATIS PS INNER JOIN [Satis Detaylari] SD ON SD.SatisID = PS.SATISID