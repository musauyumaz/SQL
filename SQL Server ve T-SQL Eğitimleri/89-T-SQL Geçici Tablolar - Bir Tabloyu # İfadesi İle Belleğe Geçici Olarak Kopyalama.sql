-- #Bir Tabloyu # �fadesi �le Belle�e Ge�ici Kopyalama
-- Ge�ici tablolarda yani bellek �zerine kopyalanm�� tablolarda �al���r�z. Haliyle bu tablolar �zerinde yapm�� oldu�umuz t�m de�i�iklikler ilgili oturum/bilgisayar/SQL Server kapat�ld���nda bellekten silinecek ve fiziksel tabloya yans�t�lmayacakt�r.

SELECT * INTO #GECICIPERSONELLER FROM Personeller

SELECT * FROM #GECICIPERSONELLER
INSERT #GECICIPERSONELLER(Adi,SoyAdi) VALUES ('MUSA','UYUMAZ')
DELETE FROM #GECICIPERSONELLER WHERE PersonelID = 3
UPDATE #GECICIPERSONELLER SET Adi= 'GEN�AY', SoyAdi = 'YILDIZ' WHERE PersonelID = 5

-- Ge�ici tablo �zerinde her t�rl� i�lem yapabiliyoruz.
-- # ile olu�turulan tablo o an SQL Server'da oturum a�m�� ki�inin sunucu belle�inde olu�ur.
-- Sadece oturum a�an �ah�s kullanabilir.
-- E�er oturum a�an �ah�s SQL Server'dan disconnect olursa bu tablo bellekten silinir.