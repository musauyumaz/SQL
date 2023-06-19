-- NULL Kontrol Mekanizmalar�
-- NULL dedi�imiz de�erler de�ersiz anlam�na gelen de�erlerdir. Yani bir de�erin olmad���n� ifade ederler.

-- CASE-WHEN-THEN-ELSE-END Kal�b� �le NULL Kontrol�
SELECT MusteriAdi,Bolge FROM Musteriler

SELECT MusteriAdi,
CASE 
	WHEN BOLGE IS NULL THEN 'B�LGE B�L�NM�YOR'
	ELSE BOLGE
END
FROM Musteriler