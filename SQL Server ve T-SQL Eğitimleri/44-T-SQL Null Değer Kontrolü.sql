-- NULL Kontrol Mekanizmalarý
-- NULL dediðimiz deðerler deðersiz anlamýna gelen deðerlerdir. Yani bir deðerin olmadýðýný ifade ederler.

-- CASE-WHEN-THEN-ELSE-END Kalýbý Ýle NULL Kontrolü
SELECT MusteriAdi,Bolge FROM Musteriler

SELECT MusteriAdi,
CASE 
	WHEN BOLGE IS NULL THEN 'BÖLGE BÝLÝNMÝYOR'
	ELSE BOLGE
END
FROM Musteriler