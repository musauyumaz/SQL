-- #Bir Tabloyu # Ýfadesi Ýle Belleðe Geçici Kopyalama
-- Geçici tablolarda yani bellek üzerine kopyalanmýþ tablolarda çalýþýrýz. Haliyle bu tablolar üzerinde yapmýþ olduðumuz tüm deðiþiklikler ilgili oturum/bilgisayar/SQL Server kapatýldýðýnda bellekten silinecek ve fiziksel tabloya yansýtýlmayacaktýr.

SELECT * INTO #GECICIPERSONELLER FROM Personeller

SELECT * FROM #GECICIPERSONELLER
INSERT #GECICIPERSONELLER(Adi,SoyAdi) VALUES ('MUSA','UYUMAZ')
DELETE FROM #GECICIPERSONELLER WHERE PersonelID = 3
UPDATE #GECICIPERSONELLER SET Adi= 'GENÇAY', SoyAdi = 'YILDIZ' WHERE PersonelID = 5

-- Geçici tablo üzerinde her türlü iþlem yapabiliyoruz.
-- # ile oluþturulan tablo o an SQL Server'da oturum açmýþ kiþinin sunucu belleðinde oluþur.
-- Sadece oturum açan þahýs kullanabilir.
-- Eðer oturum açan þahýs SQL Server'dan disconnect olursa bu tablo bellekten silinir.