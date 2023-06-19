-- WITH Komutu
-- Herhangi bir sorguda parametrik özellik kazandýrmamýzý saðlayan bir komuttur.
-- Ýleride göreceðimiz Stored Procedure, View gibi yapýlarýn kaydedilebilir olmasý iken WITH Komutu kaydedilemeyen keza biz direkt fiziksel olarak kaydetmediðimiz sürece çalýþtýrdýðýmýzda herhangi bir veritabanýnýn yapýsýna kaydedilmeyen yapýdadýr. Yani anlýk olarak kullanýp iþimizi gören bir komuttur.
-- Kompleks sorgularýn yazýlma sürecinde daha da  komplekse gidiyorsa eðer WITH komutuyla biz mevcut sorguyu parametrik hale getirip daha okunabilir ve daha da iþimizi kolaylaþtýrabilir bir yapý kazandýrmayý hedefliyoruz.

WITH PERSONELSATIS(ID,ADI,SOYADI,SATISID)
AS
(
SELECT P.PersonelID,P.Adi,P.SoyAdi,S.SatisID FROM Personeller P INNER JOIN Satislar S ON P.PersonelID = S.PersonelID
)
SELECT * FROM PERSONELSATIS PS INNER JOIN [Satis Detaylari] SD ON SD.SatisID = PS.SATISID