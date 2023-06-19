-- WITH ROLLUP
-- GROUP BY ile gruplanm�� veri k�mesinde ara toplam al�nmas�n� sa�lar.

SELECT SatisID,UrunID,SUM(Miktar) FROM [Satis Detaylari]
GROUP BY SatisID,UrunID WITH ROLLUP

SELECT KategoriID,UrunID,SUM(TedarikciID) FROM Urunler GROUP BY KategoriID,UrunID WITH ROLLUP

-- [Having �art�yla Beraber WITH ROLLUP]
SELECT SatisID,UrunID,SUM(Miktar) FROM [Satis Detaylari]
GROUP BY SatisID,UrunID WITH ROLLUP HAVING SUM(Miktar) > 100