-- ISNULL Fonksiyonu �le NULL Kontrol�
-- COALESCE Fonksiyonunda oldu�u gibi e�er ki null olmayan de�erler varsa onlar� ayn� �ekil b�rak�yor. NULL de�erlerin yerine de parametrede belirtilen de�eri veriyor.

SELECT MusteriAdi,ISNULL(Bolge,'B�lge Bilinmiyor') FROM Musteriler