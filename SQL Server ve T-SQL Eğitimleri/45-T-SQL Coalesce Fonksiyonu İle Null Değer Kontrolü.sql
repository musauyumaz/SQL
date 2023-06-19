-- COALESCE Fonksiyonu Ýle NULL Kontrolü
-- Verdiðimiz kolondaki NULL deðerlere verdiðimiz ikinci parametredeki deðere göre deðiþtirecektir. 

SELECT MusteriAdi, COALESCE(Bolge,'BÖLGE BÝLÝNMÝYOR') FROM Musteriler