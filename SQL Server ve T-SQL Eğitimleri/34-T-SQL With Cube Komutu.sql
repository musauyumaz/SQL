-- WITH CUBE
-- GROUP BY ile gruplanmýþ veri kümesinde teker teker toplam alýnmasýný saðlar.

SELECT SatisID,UrunID,SUM(Miktar) FROM [Satis Detaylari]
GROUP BY SatisID,UrunID WITH CUBE

SELECT KategoriID,UrunID,SUM(TedarikciID) FROM Urunler GROUP BY KategoriID,UrunID WITH CUBE

-- [Having Þartýyla Beraber WITH ROLLUP]
SELECT SatisID,UrunID,SUM(Miktar) FROM [Satis Detaylari]
GROUP BY SatisID,UrunID WITH CUBE HAVING SUM(Miktar) > 100
