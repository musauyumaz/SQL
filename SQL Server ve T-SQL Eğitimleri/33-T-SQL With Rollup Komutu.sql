-- WITH ROLLUP
-- GROUP BY ile gruplanmýþ veri kümesinde ara toplam alýnmasýný saðlar.

SELECT SatisID,UrunID,SUM(Miktar) FROM [Satis Detaylari]
GROUP BY SatisID,UrunID WITH ROLLUP

SELECT KategoriID,UrunID,SUM(TedarikciID) FROM Urunler GROUP BY KategoriID,UrunID WITH ROLLUP

-- [Having Þartýyla Beraber WITH ROLLUP]
SELECT SatisID,UrunID,SUM(Miktar) FROM [Satis Detaylari]
GROUP BY SatisID,UrunID WITH ROLLUP HAVING SUM(Miktar) > 100